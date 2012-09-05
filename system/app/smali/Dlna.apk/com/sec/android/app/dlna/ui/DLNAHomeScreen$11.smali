.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;
.super Landroid/os/Handler;
.source "DLNAHomeScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 376
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xce

    if-ne v3, v4, :cond_24

    .line 377
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$500(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 378
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$500(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$600()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playItNow(Lcom/sec/android/app/dlna/model/PlaylistItem;I)V

    .line 392
    :cond_23
    :goto_23
    return-void

    .line 380
    :cond_24
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_23

    .line 381
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$800(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 382
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v2

    .line 383
    .local v2, list:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 384
    .local v1, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$800(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/dlna/model/Playlist;->add(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z

    goto :goto_43

    .line 385
    .end local v1           #item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :cond_59
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$400(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getThumbnailHash()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->setThumbnailArray(Ljava/util/HashMap;)V

    .line 387
    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentIndexOfList()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_84

    .line 388
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$900(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MultiSelectListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentIndexOfList()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 389
    :cond_84
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$400(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    goto :goto_23
.end method
