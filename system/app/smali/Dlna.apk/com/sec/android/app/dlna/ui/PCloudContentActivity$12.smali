.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;
.super Landroid/os/Handler;
.source "PCloudContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 348
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_12

    .line 349
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestFirst()V

    .line 368
    :cond_11
    :goto_11
    return-void

    .line 350
    :cond_12
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xce

    if-ne v3, v4, :cond_38

    .line 351
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$500(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 352
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$500(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPosition:I
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$600(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playItNow(Lcom/sec/android/app/dlna/model/PlaylistItem;I)V

    goto :goto_11

    .line 355
    :cond_38
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_11

    .line 356
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 357
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v2

    .line 359
    .local v2, list:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 360
    .local v1, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$800(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/dlna/model/Playlist;->add(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z

    goto :goto_57

    .line 362
    .end local v1           #item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :cond_6d
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->CreateThumbnailThread()V

    .line 363
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getThumbnailHash()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->setThumbnailArray(Ljava/util/HashMap;)V

    .line 365
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$12;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    goto :goto_11
.end method
