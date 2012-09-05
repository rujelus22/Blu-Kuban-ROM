.class Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;
.super Ljava/lang/Object;
.source "AddMusicAlbumPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 321
    sget-object v4, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/data/VEAlbum;

    .line 322
    .local v3, lVAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumName()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, lAlubmNameStr:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumArtPath()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, lAlubmArtStr:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumId()I

    move-result v0

    .line 325
    .local v0, aAlbumId:I
    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$2(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Landroid/content/Context;

    move-result-object v4

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    #setter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5, v4}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$3(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;Landroid/view/LayoutInflater;)V

    .line 327
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #calls: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getSelectedMusicFile()V
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$4(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V

    .line 329
    sput p3, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Prev Album :: Saving the position of the clicked Album -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$1(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->removeMySelf(Landroid/view/View;I)V

    .line 335
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->populateAlbumSongs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    return-void
.end method
