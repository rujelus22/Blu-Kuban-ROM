.class public Lcom/infraware/polarisoffice/common/FileSelectActivity;
.super Lcom/infraware/filemanager/file/FileBaseActivity;
.source "FileSelectActivity.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/FileSelectActivity$CloseActionReceiver;
    }
.end annotation


# instance fields
.field private m_nOrgOrientation:I

.field private m_oCloseFilter:Landroid/content/IntentFilter;

.field private m_oCloseReceiver:Lcom/infraware/polarisoffice/common/FileSelectActivity$CloseActionReceiver;

.field private m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

.field public m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

.field private m_strOriginFile:Ljava/lang/String;

.field private m_strVendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strOriginFile:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nOrgOrientation:I

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/FileSelectActivity$CloseActionReceiver;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strVendor:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private decideFolderName()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 385
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungGlobalVer()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 386
    new-instance v3, Ljava/lang/String;

    const v4, 0x7f0800cd

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 390
    .local v3, prefix:Ljava/lang/String;
    :goto_14
    const/4 v0, 0x1

    .line 391
    .local v0, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%03d"

    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, newFolder:Ljava/lang/String;
    move v0, v1

    .line 392
    .end local v1           #index:I
    .restart local v0       #index:I
    :goto_37
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->isAlreadyExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 395
    return-object v2

    .line 388
    .end local v0           #index:I
    .end local v2           #newFolder:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    :cond_3e
    new-instance v3, Ljava/lang/String;

    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v3       #prefix:Ljava/lang/String;
    goto :goto_14

    .line 393
    .restart local v0       #index:I
    .restart local v2       #newFolder:Ljava/lang/String;
    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%03d"

    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_37
.end method


# virtual methods
.method public getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 324
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 329
    return-object v0
.end method

.method public isAlreadyExist(Ljava/lang/String;)Z
    .registers 7
    .parameter "newName"

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, nFileType:I
    const/4 v2, 0x0

    .line 402
    .local v2, strFilePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 404
    .local v1, strFileName:Ljava/lang/String;
    iget v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nStorageType:I

    .line 405
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strCurPath:Ljava/lang/String;

    .line 406
    move-object v1, p1

    .line 408
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2c

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    :goto_21
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strStorageId:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v4}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    return v3

    .line 411
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21
.end method

.method public isSdCardAction(Ljava/lang/String;)V
    .registers 5
    .parameter "nowAction"

    .prologue
    .line 333
    iget v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nStorageType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 365
    :cond_5
    :goto_5
    return-void

    .line 336
    :cond_6
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 339
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strOriginFile:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strOriginFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 341
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strOriginFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 344
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->finish()V

    goto :goto_5

    .line 349
    .end local v0           #file:Ljava/io/File;
    :cond_2b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->isSdcard()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->isLocalStorage()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 351
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->finish()V

    goto :goto_5

    .line 355
    :cond_3b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strCurPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 357
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->initState()V

    .line 359
    :cond_4b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->onUpdateList()V

    goto :goto_5

    .line 361
    .end local v0           #file:Ljava/io/File;
    :cond_4f
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 363
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->onUpdateList()V

    goto :goto_5
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 8
    .parameter "target"

    .prologue
    const/4 v5, 0x0

    .line 237
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v1, result:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_a0

    .line 283
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onButtonClick(Landroid/view/View;)V

    .line 286
    :cond_10
    :goto_10
    return-void

    .line 242
    :sswitch_11
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nInternalMode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1b

    .line 243
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nInternalMode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_59

    .line 245
    :cond_1b
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-nez v3, :cond_2e

    .line 247
    :cond_27
    invoke-virtual {p0, v5, v1}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->finish()V

    goto :goto_10

    .line 252
    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-lt v0, v3, :cond_49

    .line 257
    const-string v3, "key_select_files"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 264
    .end local v0           #i:I
    .end local v2           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_41
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 265
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->finish()V

    goto :goto_10

    .line 255
    .restart local v0       #i:I
    .restart local v2       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 261
    .end local v0           #i:I
    .end local v2           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_59
    const-string v3, "key_new_folder"

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_41

    .line 268
    :sswitch_61
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nStorageType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_77

    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 270
    const v3, 0x7f080068

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->onToastMessage(Ljava/lang/String;)V

    goto :goto_10

    .line 273
    :cond_77
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-nez v3, :cond_83

    .line 274
    new-instance v3, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 275
    :cond_83
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_10

    .line 276
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->decideFolderName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->createFolderDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 279
    :sswitch_98
    invoke-virtual {p0, v5, v1}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 280
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->finish()V

    goto/16 :goto_10

    .line 238
    :sswitch_data_a0
    .sparse-switch
        0x7f0c006d -> :sswitch_98
        0x7f0c00aa -> :sswitch_11
        0x7f0c00ac -> :sswitch_11
        0x7f0c00ad -> :sswitch_61
    .end sparse-switch
.end method

.method public onConfirmCreateFolder(Ljava/lang/String;)V
    .registers 12
    .parameter "name"

    .prologue
    const v9, 0x7f0800bd

    .line 418
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 420
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strCurPath:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3e

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strCurPath:Ljava/lang/String;

    .line 421
    .local v5, path:Ljava/lang/String;
    :goto_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, newFolderName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v3, newFolder:Ljava/io/File;
    const/4 v1, 0x0

    .line 425
    .local v1, errorMessage:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_83

    .line 427
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-eqz v7, :cond_54

    .line 428
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->onUpdateList()V

    .line 447
    :goto_38
    if-eqz v1, :cond_3d

    .line 448
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->onToastMessage(Ljava/lang/String;)V

    .line 449
    :cond_3d
    return-void

    .line 420
    .end local v1           #errorMessage:Ljava/lang/String;
    .end local v3           #newFolder:Ljava/io/File;
    .end local v4           #newFolderName:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    :cond_3e
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strCurPath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    .line 431
    .restart local v1       #errorMessage:Ljava/lang/String;
    .restart local v3       #newFolder:Ljava/io/File;
    .restart local v4       #newFolderName:Ljava/lang/String;
    .restart local v5       #path:Ljava/lang/String;
    :cond_54
    const/4 v2, 0x0

    .line 433
    .local v2, freeBlock:I
    :try_start_55
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 434
    .local v6, sf:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_61} :catch_6d

    move-result v2

    .line 438
    .end local v6           #sf:Landroid/os/StatFs;
    :goto_62
    if-nez v2, :cond_77

    .line 439
    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    .line 435
    :catch_6d
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    .line 441
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_77
    const v7, 0x7f0800b2

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    .line 445
    .end local v2           #freeBlock:I
    :cond_83
    const v7, 0x7f0800b5

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const v9, 0x7f080098

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v3, 0x7f08030e

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strVendor:Ljava/lang/String;

    .line 48
    new-instance v3, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v3}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 49
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v3, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 51
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_d2

    .line 57
    const-string v3, "key_interanl_mode"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nInternalMode:I

    .line 58
    const v3, 0x7f08030e

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FV03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 60
    const-string v3, "key_dialog_title"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    .line 61
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    const v4, 0x7f0800f8

    if-eq v3, v4, :cond_71

    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    const v4, 0x7f0800f7

    if-eq v3, v4, :cond_71

    .line 62
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    const v4, 0x7f0800f9

    if-eq v3, v4, :cond_71

    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    const v4, 0x7f0800fa

    if-ne v3, v4, :cond_73

    .line 63
    :cond_71
    iput v9, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    .line 88
    :cond_73
    :goto_73
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nOrientation:I

    .line 89
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 91
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nOrientation:I

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->onChangeScreen(I)V

    .line 93
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nInternalMode:I

    if-eqz v3, :cond_b1

    .line 95
    new-instance v3, Lcom/infraware/polarisoffice/common/FileSelectActivity$CloseActionReceiver;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity$CloseActionReceiver;-><init>(Lcom/infraware/polarisoffice/common/FileSelectActivity;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/FileSelectActivity$CloseActionReceiver;

    .line 96
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    .line 97
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    const-string v4, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/FileSelectActivity$CloseActionReceiver;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oCloseFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const-string v3, "key_current_file"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strOriginFile:Ljava/lang/String;

    .line 103
    :cond_b1
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nInternalMode:I

    packed-switch v3, :pswitch_data_17c

    .line 157
    :pswitch_b6
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    if-ne v3, v6, :cond_bf

    .line 158
    const v3, 0x7f080024

    iput v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    .line 162
    :cond_bf
    :goto_bf
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setTitle(I)V

    .line 163
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nOrientation:I

    iput v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nOrgOrientation:I

    .line 164
    return-void

    .line 66
    :cond_c9
    const-string v3, "key_dialog_title"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    goto :goto_73

    .line 70
    :cond_d2
    iput v5, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nInternalMode:I

    .line 72
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, mimeType:Ljava/lang/String;
    if-eqz v2, :cond_73

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_73

    .line 75
    iput v8, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nFilterType:I

    .line 76
    new-instance v3, Lcom/infraware/filemanager/file/FileListFilter;

    iget v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nFilterType:I

    invoke-direct {v3, p0, v4}, Lcom/infraware/filemanager/file/FileListFilter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    goto :goto_73

    .line 106
    .end local v2           #mimeType:Ljava/lang/String;
    :pswitch_ee
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    if-ne v3, v6, :cond_f4

    .line 107
    iput v9, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    .line 109
    :cond_f4
    iput v7, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nFilterType:I

    .line 110
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    .line 112
    const-string v3, "key_current_folder"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setCurPath(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setShowPath(Z)V

    .line 115
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_strVendor:Ljava/lang/String;

    const-string v4, "- FV03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_119

    .line 117
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnNewFolder:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    :cond_119
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_bf

    .line 124
    :pswitch_124
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    if-ne v3, v6, :cond_12d

    .line 125
    const v3, 0x7f080024

    iput v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    .line 127
    :cond_12d
    iput v8, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nFilterType:I

    .line 128
    new-instance v3, Lcom/infraware/filemanager/file/FileListFilter;

    iget v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nFilterType:I

    invoke-direct {v3, p0, v4}, Lcom/infraware/filemanager/file/FileListFilter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    goto :goto_bf

    .line 132
    :pswitch_139
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    if-ne v3, v6, :cond_13f

    .line 133
    iput v9, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    .line 135
    :cond_13f
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getRootPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setCurPath(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setShowPath(Z)V

    .line 138
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setSelectMode(I)V

    goto/16 :goto_bf

    .line 145
    :pswitch_15d
    iget v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    if-ne v3, v6, :cond_163

    .line 146
    iput v9, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nTitleId:I

    .line 148
    :cond_163
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getRootPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setCurPath(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setShowPath(Z)V

    .line 151
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setSelectMode(I)V

    goto/16 :goto_bf

    .line 103
    :pswitch_data_17c
    .packed-switch 0x3
        :pswitch_124
        :pswitch_b6
        :pswitch_ee
        :pswitch_139
        :pswitch_15d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/FileSelectActivity$CloseActionReceiver;

    if-eqz v0, :cond_12

    .line 172
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oCloseReceiver:Lcom/infraware/polarisoffice/common/FileSelectActivity$CloseActionReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    :cond_12
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onDestroy()V

    .line 175
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 189
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v5, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nCurDepth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v5, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nCurDepth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p0, p3}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->getFileItem(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 193
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v1, :cond_38

    .line 195
    new-instance v1, Lcom/infraware/filemanager/file/FileListItem;

    .end local v1           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v1}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 196
    .restart local v1       #item:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 197
    iget v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nStorageType:I

    iput v4, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 198
    const-string v4, ""

    iput-object v4, v1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 201
    :cond_38
    iget-boolean v4, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v4, :cond_74

    .line 203
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, strPath:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v2, result:Landroid/content/Intent;
    iget v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nInternalMode:I

    packed-switch v4, :pswitch_data_78

    .line 217
    :pswitch_4a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    .end local v0           #file:Ljava/io/File;
    :goto_56
    iget v4, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nOrientation:I

    iget v5, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nOrgOrientation:I

    if-eq v4, v5, :cond_62

    .line 223
    const-string v4, "key_change_orient"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    :cond_62
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FileSelectActivity;->finish()V

    .line 232
    .end local v2           #result:Landroid/content/Intent;
    .end local v3           #strPath:Ljava/lang/String;
    :goto_69
    return-void

    .line 210
    .restart local v2       #result:Landroid/content/Intent;
    .restart local v3       #strPath:Ljava/lang/String;
    :pswitch_6a
    const-string v4, "key_new_file"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_56

    .line 214
    :pswitch_70
    invoke-super/range {p0 .. p5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_69

    .line 231
    .end local v2           #result:Landroid/content/Intent;
    .end local v3           #strPath:Ljava/lang/String;
    :cond_74
    invoke-super/range {p0 .. p5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_69

    .line 206
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_4a
        :pswitch_6a
        :pswitch_4a
        :pswitch_4a
        :pswitch_70
        :pswitch_70
    .end packed-switch
.end method

.method public onLocaleChanged()V
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 456
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->changeLocaleCreateFolderDlg()V

    .line 458
    :cond_11
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onLocaleChanged()V

    .line 459
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPause()V

    .line 185
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onResume()V

    .line 179
    return-void
.end method

.method public onShowSelectedMenu(Z)V
    .registers 6
    .parameter "isShow"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 291
    iget v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_nInternalMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    .line 293
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    .line 321
    :goto_b
    return-void

    .line 297
    :cond_c
    if-nez p1, :cond_37

    .line 299
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnMove:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnCopy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnDownload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b

    .line 311
    :cond_37
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnMove:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnCopy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FileSelectActivity;->m_btnDownload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b
.end method
