.class public Lcom/infraware/polarisoffice/recent/RecentFileActivity;
.super Lcom/infraware/filemanager/file/FileBaseActivity;
.source "RecentFileActivity.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# static fields
.field public static final ACTION_LOCAL_VIEW:Ljava/lang/String; = "android.intent.action.LocalVIEW"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"


# instance fields
.field private m_bClose:Z

.field private m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

.field private m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 47
    iput-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_bClose:Z

    .line 42
    return-void
.end method

.method private getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 342
    return-object v0
.end method

.method private onAddToFavorite(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 5
    .parameter "item"

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, strPath:Ljava/lang/String;
    invoke-static {p0}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/favorite/FavoriteListManager;

    move-result-object v0

    .line 307
    .local v0, favorite:Lcom/infraware/filemanager/favorite/FavoriteListManager;
    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    .line 309
    const v2, 0x7f080102

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onToastMessage(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private reloadRecentFiles()V
    .registers 4

    .prologue
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileList:Ljava/util/ArrayList;

    .line 139
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/filemanager/recent/RecentFileManager;->getRecentFiles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 142
    return-void

    .line 139
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 140
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v2, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private setMenuItems(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, index:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 349
    const/4 v2, 0x7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    const v3, 0x7f0800dc

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02020f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 351
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_1b
    const/4 v2, 0x5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v3, 0x7f0800d5

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02023a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 352
    return-void
.end method


# virtual methods
.method public isSdCardAction(Ljava/lang/String;)V
    .registers 3
    .parameter "nowAction"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onUpdateList()V

    .line 330
    iget-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 331
    iget-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->onSDCardRemoved()V

    .line 333
    :cond_14
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->closeContextMenu()V

    .line 334
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/filemanager/file/FileBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    sparse-switch p1, :sswitch_data_14

    .line 291
    :goto_6
    return-void

    .line 287
    :sswitch_7
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 288
    iget v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nOrientation:I

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onChangeScreen(I)V

    goto :goto_6

    .line 279
    :sswitch_data_14
    .sparse-switch
        0x1002 -> :sswitch_7
        0x1009 -> :sswitch_7
    .end sparse-switch
.end method

.method public onClearHistory()V
    .registers 3

    .prologue
    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 316
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v0

    .line 317
    .local v0, recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    invoke-virtual {v0}, Lcom/infraware/filemanager/recent/RecentFileManager;->deleteAll()V

    .line 319
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onUpdateList()V

    .line 320
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 225
    .local v0, fileItem:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v0, :cond_14

    .line 233
    :goto_13
    return v3

    .line 228
    :cond_14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    goto :goto_13

    .line 230
    :pswitch_1c
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onAddToFavorite(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_13

    .line 228
    :pswitch_data_20
    .packed-switch 0x7f0c0308
        :pswitch_1c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v7, 0x7f08007e

    iput v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nTitleId:I

    .line 57
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungGlobalVer()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 58
    const v7, 0x7f08007d

    iput v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nTitleId:I

    .line 60
    :cond_14
    new-instance v7, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v7}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 61
    iget-object v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v7, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 62
    iget-object v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 65
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, action:Ljava/lang/String;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 67
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/infraware/filemanager/recent/RecentFileCP;->getFileAbsPathFromScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, absFilePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v6, viewReqFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_53

    .line 71
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/infraware/filemanager/recent/RecentFileManager;->deleteFile(Ljava/lang/String;)V

    .line 74
    :cond_53
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 75
    .local v3, nIndex:I
    const-string v4, ""

    .line 76
    .local v4, strExt:Ljava/lang/String;
    if-ltz v3, :cond_65

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 79
    :cond_65
    const/4 v5, 0x0

    .line 80
    .local v5, viewIntent:Landroid/content/Intent;
    const-string v7, ".doc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_76

    const-string v7, ".docx"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9f

    .line 81
    :cond_76
    new-instance v5, Landroid/content/Intent;

    .end local v5           #viewIntent:Landroid/content/Intent;
    const-class v7, Lcom/infraware/polarisoffice/word/WordEditorActivity;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .restart local v5       #viewIntent:Landroid/content/Intent;
    :goto_7d
    const/high16 v7, 0x4000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    const-string v7, "INTCMD"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v7, "key_filename"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/high16 v7, 0x1000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/infraware/filemanager/recent/RecentFileManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    .end local v0           #absFilePath:Ljava/lang/String;
    .end local v3           #nIndex:I
    .end local v4           #strExt:Ljava/lang/String;
    .end local v5           #viewIntent:Landroid/content/Intent;
    .end local v6           #viewReqFile:Ljava/io/File;
    :goto_9b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->finish()V

    .line 123
    :goto_9e
    return-void

    .line 82
    .restart local v0       #absFilePath:Ljava/lang/String;
    .restart local v3       #nIndex:I
    .restart local v4       #strExt:Ljava/lang/String;
    .restart local v5       #viewIntent:Landroid/content/Intent;
    .restart local v6       #viewReqFile:Ljava/io/File;
    :cond_9f
    const-string v7, ".ppt"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_af

    const-string v7, ".pptx"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_b7

    .line 83
    :cond_af
    new-instance v5, Landroid/content/Intent;

    .end local v5           #viewIntent:Landroid/content/Intent;
    const-class v7, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v5       #viewIntent:Landroid/content/Intent;
    goto :goto_7d

    .line 84
    :cond_b7
    const-string v7, ".xls"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_c7

    const-string v7, ".xlsx"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_cf

    .line 85
    :cond_c7
    new-instance v5, Landroid/content/Intent;

    .end local v5           #viewIntent:Landroid/content/Intent;
    const-class v7, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v5       #viewIntent:Landroid/content/Intent;
    goto :goto_7d

    .line 87
    :cond_cf
    new-instance v5, Landroid/content/Intent;

    .end local v5           #viewIntent:Landroid/content/Intent;
    const-class v7, Lcom/infraware/polarisoffice/viewer/ViewerActivity;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v5       #viewIntent:Landroid/content/Intent;
    goto :goto_7d

    .line 98
    .end local v0           #absFilePath:Ljava/lang/String;
    .end local v3           #nIndex:I
    .end local v4           #strExt:Ljava/lang/String;
    .end local v5           #viewIntent:Landroid/content/Intent;
    .end local v6           #viewReqFile:Ljava/io/File;
    :cond_d7
    const-string v7, "android.intent.action.LocalVIEW"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10e

    .line 99
    const-string v7, "key_recent_close"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_bClose:Z

    .line 101
    const/4 v7, 0x4

    iput v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nInternalMode:I

    .line 109
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nOrientation:I

    .line 110
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 112
    iget v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nOrientation:I

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onChangeScreen(I)V

    .line 114
    iget-object v7, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v7, v9}, Lcom/infraware/filemanager/file/FileListAdapter;->setSortField(I)V

    .line 115
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_9e

    .line 120
    :cond_10e
    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->setResult(I)V

    goto :goto_9b
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 220
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    if-eqz v0, :cond_9

    .line 204
    iget-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    :cond_9
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 208
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onDestroy()V

    .line 209
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 14
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 145
    invoke-virtual {p0, p3}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->getFileItem(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 147
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v4, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_bClose:Z

    if-eqz v4, :cond_24

    .line 149
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v3, resultIntent:Landroid/content/Intent;
    const-string v4, "INTCMD"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v4, "key_filename"

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->setResult(ILandroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->finish()V

    .line 170
    .end local v3           #resultIntent:Landroid/content/Intent;
    :goto_23
    return-void

    .line 157
    :cond_24
    iget-object v4, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v5, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nCurDepth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v4, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v5, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nCurDepth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "INTCMD"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v4, "key_filename"

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v4, "key_caller_pkg_name"

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/16 v4, 0x1002

    invoke-virtual {p0, v0, v4}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v2

    .line 168
    .local v2, recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/infraware/filemanager/recent/RecentFileManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public onLocaleChanged()V
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 297
    iget-object v0, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->onShow()V

    .line 299
    :cond_11
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onLocaleChanged()V

    .line 300
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    .line 270
    :pswitch_8
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 273
    :cond_c
    :goto_c
    return v0

    .line 260
    :pswitch_d
    iget-object v1, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_c

    .line 263
    new-instance v1, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 264
    iget-object v1, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->clearHistoryDlg()V

    goto :goto_c

    .line 267
    :pswitch_23
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onSetting()V

    goto :goto_c

    .line 257
    nop

    :pswitch_data_28
    .packed-switch 0x5
        :pswitch_23
        :pswitch_8
        :pswitch_d
    .end packed-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPause()V

    .line 176
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, itemView:Landroid/view/View;
    if-eqz v1, :cond_3b

    .line 241
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 243
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v2, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getPosition(Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_3b
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 249
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 250
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->setMenuItems(Landroid/view/Menu;)V

    .line 252
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 182
    .local v1, parent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/infraware/polarisoffice/OfficeMainActivity;

    if-eqz v3, :cond_e

    .line 183
    check-cast v1, Lcom/infraware/polarisoffice/OfficeMainActivity;

    .end local v1           #parent:Landroid/app/Activity;
    const/4 v3, -0x1

    invoke-virtual {v1, p0, v3}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setContext(Landroid/content/Context;I)V

    .line 186
    :cond_e
    new-instance v0, Lcom/infraware/common/util/ini/IniFile;

    const-string v3, "dvToolbarConfig.ini"

    invoke-direct {v0, v3}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v3, "POLSAIRS_DOCUMENT_SETTING"

    const-string v4, "SHOW_EXT"

    invoke-virtual {v0, v3, v4}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_27

    .line 191
    :cond_25
    const-string v2, "1"

    .line 193
    :cond_27
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_37

    .line 194
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->setShowExt(Z)V

    .line 198
    :goto_33
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onResume()V

    .line 199
    return-void

    .line 196
    :cond_37
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->setShowExt(Z)V

    goto :goto_33
.end method

.method public onSetting()V
    .registers 2

    .prologue
    .line 323
    const/16 v0, 0x1009

    invoke-static {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->callSettingActivity(Landroid/app/Activity;I)V

    .line 324
    return-void
.end method

.method protected updateList()V
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->isUpdatable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 135
    :goto_6
    return-void

    .line 131
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->setUpdateState(Z)V

    .line 133
    invoke-direct {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->reloadRecentFiles()V

    .line 134
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onPostUpdate()V

    goto :goto_6
.end method
