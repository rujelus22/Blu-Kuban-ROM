.class Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;
.super Landroid/os/Handler;
.source "PlayListViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 155
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xce

    if-ne v5, v6, :cond_29

    .line 156
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$100(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v5

    if-eqz v5, :cond_28

    .line 157
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v6}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$100(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPosition:I
    invoke-static {v7}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$200(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playItNow(Lcom/sec/android/app/dlna/model/PlaylistItem;I)V

    .line 183
    :cond_28
    :goto_28
    return-void

    .line 159
    :cond_29
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_67

    .line 160
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$400(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 161
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v4

    .line 162
    .local v4, list:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v4}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 163
    .local v3, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$400(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/dlna/model/Playlist;->add(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z

    goto :goto_48

    .line 164
    .end local v3           #item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :cond_5e
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$000(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 168
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #list:Lcom/sec/android/app/dlna/model/Playlist;
    :cond_67
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    const v6, 0x7f070012

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 169
    .local v1, emptyview:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    const v6, 0x7f070013

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, emptytext:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;
    invoke-static {v5}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$500(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/view/MultiSelectListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-gtz v5, :cond_94

    .line 173
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    .line 177
    :cond_94
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28
.end method
