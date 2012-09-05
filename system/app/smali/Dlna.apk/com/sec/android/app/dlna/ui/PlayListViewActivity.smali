.class public Lcom/sec/android/app/dlna/ui/PlayListViewActivity;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "PlayListViewActivity.java"

# interfaces
.implements Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;


# instance fields
.field final ADDITEM:I

.field final DETAIL:I

.field final PLAY_IT_NOW:I

.field private final REFRESH:I

.field final REMOVEITEM:I

.field private listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

.field private mGuiHandler:Landroid/os/Handler;

.field private mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

.field private mPosition:I

.field private playlist:Lcom/sec/android/app/dlna/model/Playlist;

.field private playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 43
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->REFRESH:I

    .line 45
    const/16 v0, 0xc9

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->DETAIL:I

    .line 47
    const/16 v0, 0xca

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->ADDITEM:I

    .line 49
    const/16 v0, 0xcb

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->REMOVEITEM:I

    .line 51
    const/16 v0, 0xce

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->PLAY_IT_NOW:I

    .line 53
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    .line 55
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 57
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mGuiHandler:Landroid/os/Handler;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mGuiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/model/Playlist;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/view/MultiSelectListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    return-object v0
.end method


# virtual methods
.method public notifyActivityEvent(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_c

    .line 216
    :goto_3
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->notifyActivityEvent(I)V

    .line 217
    return-void

    .line 213
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->finish()V

    goto :goto_3

    .line 211
    nop

    :pswitch_data_c
    .packed-switch 0x2f4
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onBackPressed()V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->setContentView(I)V

    .line 69
    new-instance v0, Lcom/sec/android/app/dlna/model/Playlist;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/model/Playlist;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    .line 70
    new-instance v0, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;

    const v1, 0x7f030011

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/dlna/view/DLNAPlayListContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 73
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setAdapter(Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;-><init>(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    new-instance v0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$2;-><init>(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mGuiHandler:Landroid/os/Handler;

    .line 185
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 197
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPause()V

    .line 198
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 199
    .local v0, list:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/model/Playlist;->removePlaylistChangedListener(Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;)V

    .line 200
    return-void
.end method

.method public onPlaylistChanged()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 188
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V

    .line 189
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item TotalCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->listView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 192
    .local v0, list:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/model/Playlist;->addPlaylistChangedListener(Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;)V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    return-void
.end method
