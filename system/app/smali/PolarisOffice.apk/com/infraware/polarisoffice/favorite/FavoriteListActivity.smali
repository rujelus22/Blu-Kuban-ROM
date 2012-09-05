.class public Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;
.super Lcom/infraware/filemanager/file/FileBaseActivity;
.source "FavoriteListActivity.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# instance fields
.field private m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

.field private m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 40
    iput-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 38
    return-void
.end method

.method private getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 374
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 378
    return-object v0
.end method

.method private reloadFavoriteFiles()V
    .registers 4

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileList:Ljava/util/ArrayList;

    .line 78
    invoke-static {p0}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/favorite/FavoriteListManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->getFavoriteFiles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 81
    return-void

    .line 78
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 79
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private setMenuItems(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, index:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getSelectMode()I

    move-result v2

    if-eqz v2, :cond_4c

    .line 386
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_11

    .line 401
    :cond_10
    :goto_10
    return-void

    .line 389
    :cond_11
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-eq v2, v3, :cond_31

    .line 390
    const/16 v2, 0x5b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    const v3, 0x7f08009f

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020236

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 391
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_31
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v2

    if-eqz v2, :cond_10

    .line 392
    const/16 v2, 0x5c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v3, 0x7f0800a0

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020242

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_10

    .line 397
    :cond_4c
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_65

    .line 398
    const/4 v2, 0x6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v3, 0x7f0800dd

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02021f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 400
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_65
    const/4 v2, 0x5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v3, 0x7f0800d5

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02023a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 401
    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_10
.end method


# virtual methods
.method public isSdCardAction(Ljava/lang/String;)V
    .registers 3
    .parameter "nowAction"

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onUpdateList()V

    .line 366
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 367
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->onSDCardRemoved()V

    .line 369
    :cond_14
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 370
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 265
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/filemanager/file/FileBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 266
    sparse-switch p1, :sswitch_data_14

    .line 274
    :goto_6
    return-void

    .line 270
    :sswitch_7
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 271
    iget v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nOrientation:I

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onChangeScreen(I)V

    goto :goto_6

    .line 266
    :sswitch_data_14
    .sparse-switch
        0x1002 -> :sswitch_7
        0x1009 -> :sswitch_7
        0x100a -> :sswitch_7
    .end sparse-switch
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 5
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-static {}, Lcom/infraware/polarisoffice/MyApplication;->isButtonEnable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 302
    :goto_7
    return-void

    .line 291
    :cond_8
    invoke-static {v2}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 299
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onButtonClick(Landroid/view/View;)V

    goto :goto_7

    .line 295
    :pswitch_16
    new-instance v0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    iget-object v1, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 296
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->deleteFavoriteDlg()V

    goto :goto_7

    .line 292
    nop

    :pswitch_data_2a
    .packed-switch 0x7f0c00b0
        :pswitch_16
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 208
    :goto_8
    return v1

    .line 202
    :pswitch_9
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setAllSelected(Z)V

    goto :goto_8

    .line 205
    :pswitch_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setAllSelected(Z)V

    goto :goto_8

    .line 200
    :pswitch_data_12
    .packed-switch 0x7f0c0313
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f08007f

    iput v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nTitleId:I

    .line 48
    new-instance v0, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v0}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 49
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v0, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 50
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 54
    const/16 v0, 0x8

    iput v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nInternalMode:I

    .line 55
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nOrientation:I

    .line 56
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 58
    iget v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nOrientation:I

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onChangeScreen(I)V

    .line 60
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->setSortField(I)V

    .line 61
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->setListType(I)V

    .line 62
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x1

    .line 172
    move-object v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 173
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 178
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 179
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f0b0006

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getSelectMode()I

    move-result v2

    if-eqz v2, :cond_7e

    .line 183
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_46

    .line 196
    :cond_45
    :goto_45
    return-void

    .line 186
    :cond_46
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 187
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-eq v2, v3, :cond_6c

    .line 188
    const v2, 0x7f0c0313

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    :cond_6c
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v2

    if-eqz v2, :cond_7e

    .line 190
    const v2, 0x7f0c0314

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    :cond_7e
    const v2, 0x7f08030e

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FV09"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 195
    const v2, 0x7f0c0311

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f080284

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_45
.end method

.method public onDeleteFavorite()V
    .registers 7

    .prologue
    .line 305
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 306
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 308
    iget-object v5, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v0

    .line 309
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-lt v3, v0, :cond_15

    .line 322
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setSelectMode(I)V

    .line 323
    return-void

    .line 311
    :cond_15
    iget-object v5, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v5, v3}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v4

    .line 312
    .local v4, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v4, :cond_20

    .line 309
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 315
    :cond_20
    invoke-static {p0}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/favorite/FavoriteListManager;

    move-result-object v1

    .line 317
    .local v1, favorite:Lcom/infraware/filemanager/favorite/FavoriteListManager;
    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->deleteFile(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onUpdateList()V

    goto :goto_1d
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    :cond_9
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onDestroy()V

    .line 152
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_18

    .line 167
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 160
    :pswitch_8
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setSelectMode(I)V

    .line 163
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->closeOptionsMenu()V

    .line 164
    const/4 v0, 0x1

    goto :goto_7

    .line 157
    nop

    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 14
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 84
    iget-object v4, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v5, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nCurDepth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v4, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v5, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nCurDepth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getSelectMode()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 89
    invoke-super/range {p0 .. p5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 119
    :goto_2c
    return-void

    .line 93
    :cond_2d
    invoke-virtual {p0, p3}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getFileItem(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 94
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v4, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v4, :cond_55

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "key_storage_type"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v4, "key_storage_path"

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v4, "key_is_root"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    const/16 v4, 0x100a

    invoke-virtual {p0, v0, v4}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2c

    .line 104
    .end local v0           #intent:Landroid/content/Intent;
    :cond_55
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, strPath:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "INTCMD"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v4, "key_filename"

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/16 v4, 0x1002

    invoke-virtual {p0, v0, v4}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v2

    .line 114
    .local v2, recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/infraware/filemanager/recent/RecentFileManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    goto :goto_2c

    .line 117
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    :cond_86
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onUnknownExt(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public onLocaleChanged()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 280
    iget-object v0, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->onShow()V

    .line 282
    :cond_11
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onLocaleChanged()V

    .line 283
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_38

    .line 257
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 260
    :cond_c
    :goto_c
    return v0

    .line 235
    :sswitch_d
    invoke-static {v0}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 236
    iget-object v1, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    if-eqz v1, :cond_c

    .line 239
    iget-object v1, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 241
    const v1, 0x7f0800b7

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onToastMessage(Ljava/lang/String;)V

    goto :goto_c

    .line 245
    :cond_27
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setSelectMode(I)V

    goto :goto_c

    .line 248
    :sswitch_2b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onSetting()V

    goto :goto_c

    .line 251
    :sswitch_2f
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setAllSelected(Z)V

    goto :goto_c

    .line 254
    :sswitch_33
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setAllSelected(Z)V

    goto :goto_c

    .line 232
    :sswitch_data_38
    .sparse-switch
        0x5 -> :sswitch_2b
        0x6 -> :sswitch_d
        0x5b -> :sswitch_2f
        0x5c -> :sswitch_33
    .end sparse-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPause()V

    .line 125
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, itemView:Landroid/view/View;
    if-eqz v1, :cond_3b

    .line 216
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 218
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getPosition(Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v2, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_3b
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 224
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 225
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setMenuItems(Landroid/view/Menu;)V

    .line 227
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 131
    new-instance v0, Lcom/infraware/common/util/ini/IniFile;

    const-string v2, "dvToolbarConfig.ini"

    invoke-direct {v0, v2}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v2, "POLSAIRS_DOCUMENT_SETTING"

    const-string v3, "SHOW_EXT"

    invoke-virtual {v0, v2, v3}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_19

    .line 136
    :cond_17
    const-string v1, "0"

    .line 138
    :cond_19
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_29

    .line 139
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setShowExt(Z)V

    .line 143
    :goto_25
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onResume()V

    .line 144
    return-void

    .line 141
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setShowExt(Z)V

    goto :goto_25
.end method

.method public onSetting()V
    .registers 2

    .prologue
    .line 326
    const/16 v0, 0x1009

    invoke-static {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->callSettingActivity(Landroid/app/Activity;I)V

    .line 327
    return-void
.end method

.method public onUnknownExt(Ljava/lang/String;)V
    .registers 8
    .parameter "fileName"

    .prologue
    .line 331
    invoke-static {}, Lcom/infraware/filemanager/porting/DRM;->getInstance()Lcom/infraware/filemanager/porting/DRM;

    move-result-object v0

    .line 332
    .local v0, drm:Lcom/infraware/filemanager/porting/DRM;
    const/4 v1, 0x0

    .line 334
    .local v1, drmCategory:Ljava/lang/String;
    invoke-virtual {v0, p1, p0}, Lcom/infraware/filemanager/porting/DRM;->isDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_28

    .line 336
    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/infraware/filemanager/porting/DRM;->getDrmContentJudge(I)I

    move-result v4

    .line 337
    .local v4, right:I
    if-nez v4, :cond_20

    .line 339
    const v5, 0x7f080079

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onToastMessage(Ljava/lang/String;)V

    .line 361
    .end local v4           #right:I
    :goto_1f
    return-void

    .line 343
    .restart local v4       #right:I
    :cond_20
    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v3

    .line 344
    .local v3, mediaType:I
    invoke-virtual {v0, v3}, Lcom/infraware/filemanager/porting/DRM;->getContentCategory(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    .end local v3           #mediaType:I
    .end local v4           #right:I
    :cond_28
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Lcom/infraware/common/util/Utils;->getUnknownIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 348
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_3f

    .line 352
    if-eqz v1, :cond_3a

    :try_start_31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 353
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_3e

    goto :goto_1f

    .line 357
    :catch_3e
    move-exception v5

    .line 360
    :cond_3f
    const v5, 0x7f080104

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onToastMessage(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method protected updateList()V
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->isUpdatable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 74
    :goto_6
    return-void

    .line 70
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->setUpdateState(Z)V

    .line 72
    invoke-direct {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->reloadFavoriteFiles()V

    .line 73
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/favorite/FavoriteListActivity;->onPostUpdate()V

    goto :goto_6
.end method
