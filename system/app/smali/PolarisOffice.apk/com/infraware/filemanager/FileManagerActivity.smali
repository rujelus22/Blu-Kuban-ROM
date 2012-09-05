.class public Lcom/infraware/filemanager/FileManagerActivity;
.super Lcom/infraware/filemanager/file/FileBaseActivity;
.source "FileManagerActivity.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;
    }
.end annotation


# instance fields
.field private m_bActionSend:Z

.field private m_nOrgOrientation:I

.field private m_oCloseFilter:Landroid/content/IntentFilter;

.field private m_oCloseReceiver:Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;

.field public m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

.field private m_strOriginFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 28
    iput-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_strOriginFile:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nOrgOrientation:I

    .line 31
    iput-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    .line 32
    iput-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oCloseReceiver:Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;

    .line 34
    iput-boolean v1, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_bActionSend:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 338
    return-object v0
.end method

.method public isSdCardAction(Ljava/lang/String;)V
    .registers 5
    .parameter "nowAction"

    .prologue
    .line 342
    iget v1, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nStorageType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 368
    :cond_5
    :goto_5
    return-void

    .line 345
    :cond_6
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 348
    iget-object v1, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_strOriginFile:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_strOriginFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 350
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_strOriginFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 353
    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->finish()V

    goto :goto_5

    .line 358
    .end local v0           #file:Ljava/io/File;
    :cond_2b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_strCurPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 360
    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->initState()V

    .line 362
    :cond_3b
    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->onUpdateList()V

    goto :goto_5

    .line 364
    .end local v0           #file:Ljava/io/File;
    :cond_3f
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 366
    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->onUpdateList()V

    goto :goto_5
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 8
    .parameter "target"

    .prologue
    const/4 v5, 0x0

    .line 257
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v1, result:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_68

    .line 292
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onButtonClick(Landroid/view/View;)V

    .line 295
    :goto_10
    return-void

    .line 262
    :sswitch_11
    iget v3, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nInternalMode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1b

    .line 263
    iget v3, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nInternalMode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_59

    .line 265
    :cond_1b
    iget-object v3, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-nez v3, :cond_2e

    .line 267
    :cond_27
    invoke-virtual {p0, v5, v1}, Lcom/infraware/filemanager/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->finish()V

    goto :goto_10

    .line 272
    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    iget-object v3, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-lt v0, v3, :cond_49

    .line 277
    const-string v3, "key_select_files"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 284
    .end local v0           #i:I
    .end local v2           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_41
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/infraware/filemanager/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 285
    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->finish()V

    goto :goto_10

    .line 275
    .restart local v0       #i:I
    .restart local v2       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    iget-object v3, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 281
    .end local v0           #i:I
    .end local v2           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_59
    const-string v3, "key_new_folder"

    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_41

    .line 288
    :sswitch_61
    invoke-virtual {p0, v5, v1}, Lcom/infraware/filemanager/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->finish()V

    goto :goto_10

    .line 258
    :sswitch_data_68
    .sparse-switch
        0x7f0c006d -> :sswitch_61
        0x7f0c00aa -> :sswitch_11
        0x7f0c00ac -> :sswitch_11
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const v10, 0x7f080024

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v4, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v4}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 41
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v4, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 43
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/infraware/filemanager/FileManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_9e

    .line 49
    const-string v4, "key_interanl_mode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nInternalMode:I

    .line 50
    const-string v4, "key_dialog_title"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    .line 52
    const-string v4, "intentFrom"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, originalApplication:Ljava/lang/String;
    if-eqz v3, :cond_4b

    const-string v4, "EMAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4b

    .line 54
    iput-boolean v8, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_bActionSend:Z

    .line 76
    .end local v3           #originalApplication:Ljava/lang/String;
    :cond_4b
    :goto_4b
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nOrientation:I

    .line 77
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 79
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nOrientation:I

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FileManagerActivity;->onChangeScreen(I)V

    .line 81
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nInternalMode:I

    if-eqz v4, :cond_89

    .line 83
    new-instance v4, Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;

    invoke-direct {v4, p0}, Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;-><init>(Lcom/infraware/filemanager/FileManagerActivity;)V

    iput-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oCloseReceiver:Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;

    .line 84
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    .line 85
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    const-string v5, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oCloseReceiver:Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;

    iget-object v5, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v4, v5}, Lcom/infraware/filemanager/FileManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    const-string v4, "key_current_file"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_strOriginFile:Ljava/lang/String;

    .line 91
    :cond_89
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nInternalMode:I

    packed-switch v4, :pswitch_data_154

    .line 148
    :pswitch_8e
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    if-ne v4, v7, :cond_94

    .line 149
    iput v10, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    .line 153
    :cond_94
    :goto_94
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FileManagerActivity;->setTitle(I)V

    .line 154
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nOrientation:I

    iput v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nOrgOrientation:I

    .line 155
    return-void

    .line 58
    :cond_9e
    iput v6, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nInternalMode:I

    .line 60
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, mimeType:Ljava/lang/String;
    if-eqz v2, :cond_4b

    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4b

    .line 63
    iput v9, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nFilterType:I

    .line 64
    new-instance v4, Lcom/infraware/filemanager/file/FileListFilter;

    iget v5, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nFilterType:I

    invoke-direct {v4, p0, v5}, Lcom/infraware/filemanager/file/FileListFilter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    goto :goto_4b

    .line 94
    .end local v2           #mimeType:Ljava/lang/String;
    :pswitch_ba
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    if-ne v4, v7, :cond_c3

    .line 95
    const v4, 0x7f080098

    iput v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    .line 97
    :cond_c3
    iput v8, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nFilterType:I

    .line 98
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    .line 100
    const-string v4, "key_current_folder"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FileManagerActivity;->setCurPath(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->setShowPath(Z)V

    .line 103
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_94

    .line 109
    :pswitch_e4
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    if-ne v4, v7, :cond_ea

    .line 110
    iput v10, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    .line 112
    :cond_ea
    iput v9, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nFilterType:I

    .line 113
    new-instance v4, Lcom/infraware/filemanager/file/FileListFilter;

    iget v5, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nFilterType:I

    invoke-direct {v4, p0, v5}, Lcom/infraware/filemanager/file/FileListFilter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    goto :goto_94

    .line 117
    :pswitch_f6
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    if-ne v4, v7, :cond_ff

    .line 118
    const v4, 0x7f080098

    iput v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    .line 120
    :cond_ff
    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->getRootPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FileManagerActivity;->setCurPath(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->setShowPath(Z)V

    .line 123
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FileManagerActivity;->setSelectMode(I)V

    goto/16 :goto_94

    .line 130
    :pswitch_11d
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    if-ne v4, v7, :cond_126

    .line 131
    const v4, 0x7f080098

    iput v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    .line 133
    :cond_126
    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->getRootPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FileManagerActivity;->setCurPath(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->setShowPath(Z)V

    .line 136
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FileManagerActivity;->setSelectMode(I)V

    goto/16 :goto_94

    .line 142
    :pswitch_13f
    iget v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    if-ne v4, v7, :cond_145

    .line 143
    iput v10, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nTitleId:I

    .line 144
    :cond_145
    const/4 v4, 0x3

    iput v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nFilterType:I

    .line 145
    new-instance v4, Lcom/infraware/filemanager/file/FileListFilter;

    iget v5, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nFilterType:I

    invoke-direct {v4, p0, v5}, Lcom/infraware/filemanager/file/FileListFilter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    goto/16 :goto_94

    .line 91
    nop

    :pswitch_data_154
    .packed-switch 0x3
        :pswitch_e4
        :pswitch_8e
        :pswitch_ba
        :pswitch_f6
        :pswitch_11d
        :pswitch_8e
        :pswitch_13f
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/FileManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    :cond_9
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oCloseReceiver:Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;

    if-eqz v0, :cond_12

    .line 163
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oCloseReceiver:Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/FileManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    :cond_12
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onDestroy()V

    .line 166
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 17
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 174
    iget-object v8, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v9, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nCurDepth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v8, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v9, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nCurDepth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0, p3}, Lcom/infraware/filemanager/FileManagerActivity;->getFileItem(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v4

    .line 178
    .local v4, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v4, :cond_38

    .line 180
    new-instance v4, Lcom/infraware/filemanager/file/FileListItem;

    .end local v4           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v4}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 181
    .restart local v4       #item:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 182
    iget v8, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nStorageType:I

    iput v8, v4, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 183
    const-string v8, ""

    iput-object v8, v4, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 186
    :cond_38
    iget-boolean v8, v4, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v8, :cond_da

    .line 188
    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, strPath:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v5, result:Landroid/content/Intent;
    iget v8, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nInternalMode:I

    packed-switch v8, :pswitch_data_de

    .line 202
    :pswitch_4a
    iget-boolean v8, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_bActionSend:Z

    if-eqz v8, :cond_cd

    .line 204
    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 207
    .local v3, idx_exe:I
    if-gez v3, :cond_a5

    .line 208
    const-string v1, ""

    .line 212
    .local v1, ext:Ljava/lang/String;
    :goto_58
    const-string v7, ""

    .line 213
    .local v7, strVendor:Ljava/lang/String;
    const v8, 0x7f08030e

    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 214
    const-string v8, "- FV02"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_ac

    .line 216
    const-string v8, "dcf"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7d

    const-string v8, "odf"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 218
    :cond_7d
    const v8, 0x7f080078

    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->onToastMessage(Ljava/lang/String;)V

    .line 252
    .end local v1           #ext:Ljava/lang/String;
    .end local v3           #idx_exe:I
    .end local v5           #result:Landroid/content/Intent;
    .end local v6           #strPath:Ljava/lang/String;
    .end local v7           #strVendor:Ljava/lang/String;
    :goto_87
    return-void

    .line 195
    .restart local v5       #result:Landroid/content/Intent;
    .restart local v6       #strPath:Ljava/lang/String;
    :pswitch_88
    const-string v8, "key_new_file"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :goto_8d
    iget v8, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nOrientation:I

    iget v9, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nOrgOrientation:I

    if-eq v8, v9, :cond_99

    .line 243
    const-string v8, "key_change_orient"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    :cond_99
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v5}, Lcom/infraware/filemanager/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, Lcom/infraware/filemanager/FileManagerActivity;->finish()V

    goto :goto_87

    .line 199
    :pswitch_a1
    invoke-super/range {p0 .. p5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_87

    .line 210
    .restart local v3       #idx_exe:I
    :cond_a5
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #ext:Ljava/lang/String;
    goto :goto_58

    .line 223
    .restart local v7       #strVendor:Ljava/lang/String;
    :cond_ac
    invoke-static {v1}, Lcom/infraware/filemanager/porting/DRM;->isDRMExt(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 225
    invoke-static {}, Lcom/infraware/filemanager/porting/DRM;->getInstance()Lcom/infraware/filemanager/porting/DRM;

    move-result-object v0

    .line 226
    .local v0, drm:Lcom/infraware/filemanager/porting/DRM;
    invoke-virtual {v0, v6, p0}, Lcom/infraware/filemanager/porting/DRM;->isDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_cd

    .line 228
    invoke-virtual {v0}, Lcom/infraware/filemanager/porting/DRM;->isActionSupported()Z

    move-result v8

    if-nez v8, :cond_cd

    .line 230
    const v8, 0x7f080078

    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/FileManagerActivity;->onToastMessage(Ljava/lang/String;)V

    goto :goto_87

    .line 237
    .end local v0           #drm:Lcom/infraware/filemanager/porting/DRM;
    .end local v1           #ext:Ljava/lang/String;
    .end local v3           #idx_exe:I
    .end local v7           #strVendor:Ljava/lang/String;
    :cond_cd
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, file:Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_8d

    .line 251
    .end local v2           #file:Ljava/io/File;
    .end local v5           #result:Landroid/content/Intent;
    .end local v6           #strPath:Ljava/lang/String;
    :cond_da
    invoke-super/range {p0 .. p5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_87

    .line 191
    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_88
        :pswitch_4a
        :pswitch_88
        :pswitch_4a
        :pswitch_4a
        :pswitch_a1
        :pswitch_a1
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onResume()V

    .line 170
    return-void
.end method

.method public onShowSelectedMenu(Z)V
    .registers 6
    .parameter "isShow"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 300
    iget v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_nInternalMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    .line 302
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    .line 330
    :goto_b
    return-void

    .line 306
    :cond_c
    if-nez p1, :cond_37

    .line 308
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnMove:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnCopy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnDownload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b

    .line 320
    :cond_37
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnMove:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnCopy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/infraware/filemanager/FileManagerActivity;->m_btnDownload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b
.end method
