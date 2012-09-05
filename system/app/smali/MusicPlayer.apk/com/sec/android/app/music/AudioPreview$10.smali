.class Lcom/sec/android/app/music/AudioPreview$10;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/AudioPreview;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "arg0"

    .prologue
    const v5, 0x7f0c00b7

    .line 1300
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-nez v1, :cond_a

    .line 1338
    :goto_9
    return-void

    .line 1303
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    .line 1305
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 1306
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v4, v4, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v4, 0x7f090134

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 1310
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v4, v4, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    :cond_79
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_94

    .line 1312
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v4, v4, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    :cond_94
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_122

    .line 1315
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-nez v1, :cond_ea

    .line 1316
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;-><init>(Lcom/sec/android/app/music/AudioPreview;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 1318
    .local v0, mListAdapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 1319
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mGoogleSearchListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1320
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1322
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 1323
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_9

    .line 1325
    .end local v0           #mListAdapter:Landroid/widget/ListAdapter;
    :cond_ea
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;-><init>(Lcom/sec/android/app/music/AudioPreview;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 1327
    .restart local v0       #mListAdapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_117

    .line 1328
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1329
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_9

    .line 1331
    :cond_117
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "googleSearchMessageBox != null - atdialog.getListView() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1336
    .end local v0           #mListAdapter:Landroid/widget/ListAdapter;
    :cond_122
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$10;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "mTitleInfoButton: Touched, but searchItemList.size()==0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method
