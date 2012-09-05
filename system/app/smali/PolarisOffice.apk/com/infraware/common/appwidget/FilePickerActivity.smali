.class public Lcom/infraware/common/appwidget/FilePickerActivity;
.super Lcom/infraware/filemanager/file/FileBaseActivity;
.source "FilePickerActivity.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;
    }
.end annotation


# instance fields
.field private mAppWidgetId:I

.field private m_bActionSend:Z

.field private m_nOrgOrientation:I

.field private m_oCloseFilter:Landroid/content/IntentFilter;

.field private m_oCloseReceiver:Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;

.field public m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

.field private m_strOriginFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 27
    iput-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_strOriginFile:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nOrgOrientation:I

    .line 30
    iput-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    .line 31
    iput-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oCloseReceiver:Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;

    .line 34
    iput-boolean v1, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_bActionSend:Z

    .line 36
    iput v1, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->mAppWidgetId:I

    .line 25
    return-void
.end method


# virtual methods
.method public getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 222
    return-object v0
.end method

.method public isSdCardAction(Ljava/lang/String;)V
    .registers 5
    .parameter "nowAction"

    .prologue
    .line 225
    iget v1, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nStorageType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 251
    :cond_5
    :goto_5
    return-void

    .line 228
    :cond_6
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 231
    iget-object v1, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_strOriginFile:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_strOriginFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 233
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_strOriginFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 236
    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->finish()V

    goto :goto_5

    .line 241
    .end local v0           #file:Ljava/io/File;
    :cond_2b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_strCurPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 243
    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->initState()V

    .line 245
    :cond_3b
    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->onUpdateList()V

    goto :goto_5

    .line 247
    .end local v0           #file:Ljava/io/File;
    :cond_3f
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->onUpdateList()V

    goto :goto_5
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 8
    .parameter "target"

    .prologue
    const/4 v5, 0x0

    .line 128
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v1, result:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_68

    .line 163
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onButtonClick(Landroid/view/View;)V

    .line 166
    :goto_10
    return-void

    .line 133
    :sswitch_11
    iget v3, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nInternalMode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1b

    .line 134
    iget v3, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nInternalMode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_59

    .line 136
    :cond_1b
    iget-object v3, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-nez v3, :cond_2e

    .line 138
    :cond_27
    invoke-virtual {p0, v5, v1}, Lcom/infraware/common/appwidget/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->finish()V

    goto :goto_10

    .line 143
    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    iget-object v3, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-lt v0, v3, :cond_49

    .line 148
    const-string v3, "key_select_files"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 155
    .end local v0           #i:I
    .end local v2           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_41
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/infraware/common/appwidget/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->finish()V

    goto :goto_10

    .line 146
    .restart local v0       #i:I
    .restart local v2       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    iget-object v3, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 152
    .end local v0           #i:I
    .end local v2           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_59
    const-string v3, "key_new_folder"

    iget-object v4, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_41

    .line 159
    :sswitch_61
    invoke-virtual {p0, v5, v1}, Lcom/infraware/common/appwidget/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->finish()V

    goto :goto_10

    .line 129
    :sswitch_data_68
    .sparse-switch
        0x7f0c006d -> :sswitch_61
        0x7f0c00aa -> :sswitch_11
        0x7f0c00ac -> :sswitch_11
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v2, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v2}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 43
    iget-object v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v2, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 44
    iget-object v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/infraware/common/appwidget/FilePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nOrientation:I

    .line 47
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 48
    iget v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nOrientation:I

    invoke-virtual {p0, v2}, Lcom/infraware/common/appwidget/FilePickerActivity;->onChangeScreen(I)V

    .line 50
    const/16 v2, 0x9

    iput v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nInternalMode:I

    .line 51
    const v2, 0x7f080024

    iput v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nTitleId:I

    .line 52
    const/4 v2, 0x3

    iput v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nFilterType:I

    .line 53
    new-instance v2, Lcom/infraware/filemanager/file/FileListFilter;

    iget v3, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nFilterType:I

    invoke-direct {v2, p0, v3}, Lcom/infraware/filemanager/file/FileListFilter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    .line 55
    iget v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nInternalMode:I

    if-eqz v2, :cond_63

    .line 57
    new-instance v2, Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;

    invoke-direct {v2, p0}, Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;-><init>(Lcom/infraware/common/appwidget/FilePickerActivity;)V

    iput-object v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oCloseReceiver:Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;

    .line 58
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    .line 59
    iget-object v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    const-string v3, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oCloseReceiver:Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;

    iget-object v3, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/infraware/common/appwidget/FilePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    :cond_63
    iget v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nTitleId:I

    invoke-virtual {p0, v2}, Lcom/infraware/common/appwidget/FilePickerActivity;->setTitle(I)V

    .line 64
    iget v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nOrientation:I

    iput v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nOrgOrientation:I

    .line 66
    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 67
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_7f

    .line 69
    const-string v2, "appWidgetId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->mAppWidgetId:I

    .line 71
    :cond_7f
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/common/appwidget/FilePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    :cond_9
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oCloseReceiver:Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;

    if-eqz v0, :cond_12

    .line 79
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oCloseReceiver:Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/common/appwidget/FilePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    :cond_12
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 92
    iget-object v6, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v7, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nCurDepth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v6, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v7, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nCurDepth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, p3}, Lcom/infraware/common/appwidget/FilePickerActivity;->getFileItem(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 96
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v1, :cond_38

    .line 98
    new-instance v1, Lcom/infraware/filemanager/file/FileListItem;

    .end local v1           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v1}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 99
    .restart local v1       #item:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 100
    iget v6, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nStorageType:I

    iput v6, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 101
    const-string v6, ""

    iput-object v6, v1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 104
    :cond_38
    iget-boolean v6, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v6, :cond_69

    .line 106
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, strPath:Ljava/lang/String;
    iget v6, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->mAppWidgetId:I

    invoke-static {p0, v6, v4}, Lcom/infraware/common/appwidget/AppWidget;->saveTitlePref(Landroid/content/Context;ILjava/lang/String;)V

    .line 109
    move-object v0, p0

    .line 110
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 111
    .local v5, widgetMgr:Landroid/appwidget/AppWidgetManager;
    iget v6, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->mAppWidgetId:I

    invoke-static {v0, v5, v6, v4}, Lcom/infraware/common/appwidget/AppWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 113
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v2

    .line 114
    .local v2, recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    invoke-virtual {v2, v4}, Lcom/infraware/filemanager/recent/RecentFileManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    .line 116
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v3, resultValue:Landroid/content/Intent;
    const-string v6, "appWidgetId"

    iget v7, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->mAppWidgetId:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/infraware/common/appwidget/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/infraware/common/appwidget/FilePickerActivity;->finish()V

    .line 122
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    .end local v3           #resultValue:Landroid/content/Intent;
    .end local v4           #strPath:Ljava/lang/String;
    .end local v5           #widgetMgr:Landroid/appwidget/AppWidgetManager;
    :cond_69
    invoke-super/range {p0 .. p5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 123
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onResume()V

    .line 87
    return-void
.end method

.method public onShowSelectedMenu(Z)V
    .registers 6
    .parameter "isShow"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 170
    iget v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_nInternalMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    .line 172
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    .line 200
    :goto_b
    return-void

    .line 176
    :cond_c
    if-nez p1, :cond_37

    .line 178
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnMove:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnCopy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnDownload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b

    .line 190
    :cond_37
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnMove:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnCopy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/infraware/common/appwidget/FilePickerActivity;->m_btnDownload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b
.end method
