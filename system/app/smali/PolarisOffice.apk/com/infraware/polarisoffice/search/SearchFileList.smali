.class public Lcom/infraware/polarisoffice/search/SearchFileList;
.super Lcom/infraware/filemanager/file/FileBaseActivity;
.source "SearchFileList.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# static fields
.field static final FMACTION_NONE:I = 0x0

.field static final FMACTION_WEB_STORAGE_DOWNLOAD:I = 0x1

.field static final FMACTION_WEB_STORAGE_WEBLOAD:I = 0x2

.field static final FMACTION_WEB_STORAGE_WEBOPEN:I = 0x3


# instance fields
.field private m_bActive:Z

.field private m_bFinish:Z

.field private m_bRemove:Z

.field private m_bSearch:Z

.field private m_nAction:I

.field private m_nDownloadMode:I

.field private m_nPopupType:I

.field private m_nSearchType:I

.field private m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_oDownloadPopup:Landroid/app/AlertDialog;

.field private m_oDuplicatePopup:Landroid/app/AlertDialog;

.field private m_oPasswordPopup:Landroid/app/AlertDialog;

.field private m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_oProgressDialog:Landroid/app/ProgressDialog;

.field private m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

.field private m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_runAction:Ljava/lang/Runnable;

.field private m_strSearchPath:Ljava/lang/String;

.field private m_strSearchWord:Ljava/lang/String;

.field private m_strStorageId:Ljava/lang/String;

.field private m_strTempFile:Ljava/lang/String;

.field private m_strTitle1:Ljava/lang/String;

.field private m_strTitle2:Ljava/lang/String;

.field private m_strVendor:Ljava/lang/String;

.field private m_tvTitle:Landroid/widget/TextView;

.field protected uiUpdateHandler:Landroid/os/Handler;

.field private unzipProgressHandler:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 67
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    .line 68
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle1:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bSearch:Z

    .line 72
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bRemove:Z

    .line 73
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bFinish:Z

    .line 74
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bActive:Z

    .line 76
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_tvTitle:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 79
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 81
    iput v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nAction:I

    .line 82
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nDownloadMode:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTempFile:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    .line 88
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    .line 89
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oPasswordPopup:Landroid/app/AlertDialog;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strVendor:Ljava/lang/String;

    .line 93
    iput v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nPopupType:I

    .line 95
    new-instance v0, Lcom/infraware/polarisoffice/search/SearchFileList$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/search/SearchFileList$1;-><init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_runAction:Ljava/lang/Runnable;

    .line 796
    new-instance v0, Lcom/infraware/polarisoffice/search/SearchFileList$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/search/SearchFileList$2;-><init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->uiUpdateHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/search/SearchFileList;)I
    .registers 2
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nAction:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/search/SearchFileList;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nDownloadMode:I

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;
    .registers 2
    .parameter

    .prologue
    .line 920
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->unzipProgressHandler:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/search/SearchFileList;)I
    .registers 2
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nPopupType:I

    return v0
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    return-object v0
.end method

.method static synthetic access$13(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    return-object v0
.end method

.method static synthetic access$14(Lcom/infraware/polarisoffice/search/SearchFileList;Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/search/SearchFileList;->fileOperationDownload(Lcom/infraware/filemanager/file/FileListItem;)V

    return-void
.end method

.method static synthetic access$15(Lcom/infraware/polarisoffice/search/SearchFileList;)Lcom/infraware/filemanager/async/FileAsyncController;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    return-object v0
.end method

.method static synthetic access$16(Lcom/infraware/polarisoffice/search/SearchFileList;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/search/SearchFileList;)V
    .registers 1
    .parameter

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->downloadWebStorage()V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/search/SearchFileList;)V
    .registers 1
    .parameter

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->openWebStorage()V

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/search/SearchFileList;Landroid/content/Context;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 852
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/search/SearchFileList;->startProgressing(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/search/SearchFileList;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/search/SearchFileList;->addList(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/search/SearchFileList;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bFinish:Z

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/search/SearchFileList;)V
    .registers 1
    .parameter

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->stopProgressing()V

    return-void
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/search/SearchFileList;)I
    .registers 2
    .parameter

    .prologue
    .line 84
    iget v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nDownloadMode:I

    return v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/search/SearchFileList;ILcom/infraware/filemanager/file/FileListItem;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/search/SearchFileList;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;)V

    return-void
.end method

.method private addList(Ljava/lang/Object;)V
    .registers 9
    .parameter "fileObj"

    .prologue
    const/4 v5, 0x0

    .line 661
    new-instance v1, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v1}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 662
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    iget v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_73

    .line 664
    new-instance v0, Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, file:Ljava/io/File;
    new-instance v1, Lcom/infraware/filemanager/file/FileListItem;

    .end local v1           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v1}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 667
    .restart local v1       #item:Lcom/infraware/filemanager/file/FileListItem;
    iput-boolean v5, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 668
    iget v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    iput v3, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 669
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 670
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/infraware/filemanager/file/FileListItem;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/infraware/filemanager/file/FileListItem;->size:J

    .line 672
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    .line 686
    .end local v0           #file:Ljava/io/File;
    :goto_38
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->addList(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 687
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListAdapter;->notifyDataSetChanged()V

    .line 689
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_tvTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle1:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    return-void

    .restart local p1
    :cond_73
    move-object v2, p1

    .line 676
    check-cast v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    .line 678
    .local v2, webFile:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    iput-boolean v5, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 679
    iget v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    iput v3, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 680
    iget-object v3, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->path:Ljava/lang/String;

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 681
    iget-object v3, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/infraware/filemanager/file/FileListItem;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-wide v3, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    iput-wide v3, v1, Lcom/infraware/filemanager/file/FileListItem;->size:J

    .line 683
    iget-wide v3, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->updateTime:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, v1, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    goto :goto_38
.end method

.method private downloadWebStorage()V
    .registers 9

    .prologue
    .line 754
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v4

    .line 755
    .local v4, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 757
    const v5, 0x7f08030e

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FV04"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_24

    .line 758
    const v5, 0x7f0800bf

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    .line 784
    :cond_23
    :goto_23
    return-void

    .line 760
    :cond_24
    const v5, 0x7f0800be

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    goto :goto_23

    .line 764
    :cond_2f
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 766
    const v5, 0x7f080068

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    goto :goto_23

    .line 770
    :cond_40
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v2

    .line 772
    .local v2, manager:Lcom/infraware/filemanager/manager/FileManager;
    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    iget-object v6, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strStorageId:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/infraware/filemanager/file/FileSelectedList;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 775
    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, v5}, Lcom/infraware/filemanager/manager/FileManager;->setItemList(Lcom/infraware/filemanager/file/FileSelectedList;)V

    .line 777
    new-instance v1, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v5, v6}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 778
    .local v1, handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v5, v6}, Lcom/infraware/filemanager/manager/FileManager;->download(Lcom/infraware/filemanager/async/FileAsyncControlHandler;Lcom/infraware/filemanager/file/FileListItem;Z)I

    move-result v3

    .line 779
    .local v3, result:I
    if-eqz v3, :cond_23

    .line 781
    invoke-static {p0, v3}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, errMessage:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    goto :goto_23
.end method

.method private fileOperationDownload(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 6
    .parameter "item"

    .prologue
    .line 722
    if-eqz p1, :cond_c

    .line 724
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 725
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, p1}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 728
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v2

    if-lt v0, v2, :cond_26

    .line 737
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 739
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    .line 750
    :goto_25
    return-void

    .line 730
    :cond_26
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v2, :cond_3b

    .line 732
    const v2, 0x7f08010b

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    goto :goto_25

    .line 728
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 743
    :cond_3e
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 745
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "key_current_folder"

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getRootPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string v2, "key_interanl_mode"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    const-string v2, "key_dialog_title"

    const v3, 0x7f0800fa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    const/16 v2, 0x1007

    invoke-virtual {p0, v1, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_25
.end method

.method private fileOperationWebLoad(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 7
    .parameter "item"

    .prologue
    .line 694
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 695
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3, p1}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 697
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 699
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/infraware/common/util/FileUtils;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, defaultDir:Ljava/io/File;
    new-instance v3, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v3}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 702
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 704
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v2

    .line 705
    .local v2, manager:Lcom/infraware/filemanager/manager/FileManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->getWebFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTempFile:Ljava/lang/String;

    .line 706
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTempFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 708
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTempFile:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_71

    .line 711
    const v3, 0x7f0800b2

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    .line 712
    const-string v3, ""

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTempFile:Ljava/lang/String;

    .line 718
    .end local v1           #file:Ljava/io/File;
    :goto_70
    return-void

    .line 717
    :cond_71
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {p0, v3, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_70
.end method

.method private getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 519
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 520
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 523
    return-object v0
.end method

.method private onPostAction(ILcom/infraware/filemanager/file/FileListItem;)V
    .registers 5
    .parameter "nAction"
    .parameter "item"

    .prologue
    .line 477
    iput p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nAction:I

    .line 478
    iput-object p2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 480
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_runAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method

.method private openWebStorage()V
    .registers 4

    .prologue
    .line 788
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 789
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "INTCMD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 790
    const-string v1, "key_filename"

    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTempFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string v1, "key_caller_pkg_name"

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    const/16 v1, 0x1002

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 794
    return-void
.end method

.method private removeList()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 626
    iget v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    .line 657
    :cond_6
    return-void

    .line 629
    :cond_7
    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v4

    .line 630
    .local v4, nCount:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v3, listFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/file/FileListItem;>;"
    const/4 v2, 0x0

    .line 633
    .local v2, item:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-lt v1, v4, :cond_3c

    .line 641
    const/4 v2, 0x0

    .line 642
    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileListAdapter;->clearList()V

    .line 644
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_28

    .line 645
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/infraware/filemanager/file/FileListItem;
    check-cast v2, Lcom/infraware/filemanager/file/FileListItem;

    .line 647
    .restart local v2       #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_28
    :goto_28
    if-eqz v2, :cond_6

    .line 649
    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v5, v2}, Lcom/infraware/filemanager/file/FileListAdapter;->addList(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 650
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_59

    .line 651
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/infraware/filemanager/file/FileListItem;
    check-cast v2, Lcom/infraware/filemanager/file/FileListItem;

    .restart local v2       #item:Lcom/infraware/filemanager/file/FileListItem;
    goto :goto_28

    .line 635
    :cond_3c
    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v5, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/infraware/filemanager/file/FileListItem;
    check-cast v2, Lcom/infraware/filemanager/file/FileListItem;

    .line 636
    .restart local v2       #item:Lcom/infraware/filemanager/file/FileListItem;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 638
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 653
    .end local v0           #file:Ljava/io/File;
    :cond_59
    const/4 v2, 0x0

    goto :goto_28
.end method

.method private startProgressing(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "operation"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 853
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_7

    .line 904
    :goto_6
    return-void

    .line 856
    :cond_7
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    .line 857
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 858
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 860
    const/16 v0, 0xc

    if-ne p2, v0, :cond_58

    .line 862
    iget v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nDownloadMode:I

    if-ne v0, v1, :cond_4b

    .line 863
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 871
    :goto_2c
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/infraware/polarisoffice/search/SearchFileList$8;

    invoke-direct {v1, p0, p2}, Lcom/infraware/polarisoffice/search/SearchFileList$8;-><init>(Lcom/infraware/polarisoffice/search/SearchFileList;I)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 889
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/infraware/polarisoffice/search/SearchFileList$9;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/search/SearchFileList$9;-><init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 902
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 903
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_6

    .line 865
    :cond_4b
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0800ac

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 868
    :cond_58
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle1:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method

.method private stopProgressing()V
    .registers 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_5

    .line 918
    :goto_4
    return-void

    .line 911
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_e

    .line 914
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 912
    :catch_e
    move-exception v0

    goto :goto_a
.end method

.method private unzip(Lcom/infraware/filemanager/file/FileListItem;Z)V
    .registers 6
    .parameter "fileItem"
    .parameter "moveToFolder"

    .prologue
    .line 924
    if-eqz p1, :cond_1b

    .line 926
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v1

    .line 927
    .local v1, locale:I
    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getANSICharSet(I)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, charSet:Ljava/lang/String;
    new-instance v2, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;Lcom/infraware/filemanager/file/FileListItem;ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->unzipProgressHandler:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    .line 931
    .end local v0           #charSet:Ljava/lang/String;
    .end local v1           #locale:I
    :cond_1b
    return-void
.end method


# virtual methods
.method public isSdCardAction(Ljava/lang/String;)V
    .registers 6
    .parameter "nowAction"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 486
    iget v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    if-ne v1, v3, :cond_1e

    .line 488
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 490
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strSearchPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 492
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->finish()V

    .line 515
    .end local v0           #file:Ljava/io/File;
    :cond_1e
    :goto_1e
    return-void

    .line 495
    .restart local v0       #file:Ljava/io/File;
    :cond_1f
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bRemove:Z

    .line 496
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bFinish:Z

    if-eqz v1, :cond_1e

    .line 497
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->onUpdateList()V

    goto :goto_1e

    .line 500
    .end local v0           #file:Ljava/io/File;
    :cond_29
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 502
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bActive:Z

    if-eqz v1, :cond_1e

    .line 504
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListAdapter;->clearList()V

    .line 505
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListAdapter;->notifyDataSetChanged()V

    .line 507
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bSearch:Z

    .line 508
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bRemove:Z

    .line 509
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bFinish:Z

    .line 511
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->onUpdateList()V

    goto :goto_1e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 351
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/filemanager/file/FileBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 353
    sparse-switch p1, :sswitch_data_6a

    .line 386
    :cond_6
    :goto_6
    return-void

    .line 355
    :sswitch_7
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->onPivotLock()V

    goto :goto_6

    .line 358
    :sswitch_b
    const/4 v6, -0x1

    if-ne p2, v6, :cond_6

    if-eqz p3, :cond_6

    .line 360
    const-string v6, "key_new_folder"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, strPath:Ljava/lang/String;
    new-instance v6, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v6}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    iput-object v6, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 363
    iget-object v6, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    iput-object v5, v6, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, isExist:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v6, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v6

    if-lt v0, v6, :cond_33

    .line 379
    :goto_2b
    if-eqz v1, :cond_63

    .line 380
    const/16 v6, 0x12d

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/search/SearchFileList;->showDialog(I)V

    goto :goto_6

    .line 368
    :cond_33
    iget-object v6, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    .line 370
    .local v2, item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v3

    .line 371
    .local v3, manager:Lcom/infraware/filemanager/manager/FileManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, strName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 374
    const/4 v1, 0x1

    .line 375
    goto :goto_2b

    .line 366
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 382
    .end local v2           #item:Lcom/infraware/filemanager/file/FileListItem;
    .end local v3           #manager:Lcom/infraware/filemanager/manager/FileManager;
    .end local v4           #strName:Ljava/lang/String;
    :cond_63
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {p0, v6, v7}, Lcom/infraware/polarisoffice/search/SearchFileList;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_6

    .line 353
    :sswitch_data_6a
    .sparse-switch
        0x1002 -> :sswitch_7
        0x1007 -> :sswitch_b
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v2, 0x7f08030e

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strVendor:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_layoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    const v2, 0x7f0c00a5

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_tvTitle:Landroid/widget/TextView;

    .line 127
    new-instance v2, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v2}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 128
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v2, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 129
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 132
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_9f

    .line 135
    const-string v2, "key_search_path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strSearchPath:Ljava/lang/String;

    .line 136
    const-string v2, "key_search_type"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nSearchType:I

    .line 138
    iget v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nSearchType:I

    if-nez v2, :cond_5d

    .line 139
    const-string v2, "key_search_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strSearchWord:Ljava/lang/String;

    .line 141
    :cond_5d
    const-string v2, "key_storage_type"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    .line 142
    const-string v2, "key_login_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strStorageId:Ljava/lang/String;

    .line 150
    :goto_6d
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    if-nez v2, :cond_78

    .line 151
    new-instance v2, Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-direct {v2, p0}, Lcom/infraware/filemanager/file/FileListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    .line 153
    :cond_78
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/file/FileListAdapter;->setListType(I)V

    .line 154
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2, v5}, Lcom/infraware/filemanager/file/FileListAdapter;->setSortField(I)V

    .line 155
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->setAscending()V

    .line 157
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nOrientation:I

    .line 158
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 159
    iget v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nOrientation:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->onChangeScreen(I)V

    .line 160
    return-void

    .line 147
    :cond_9f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->finish()V

    goto :goto_6d
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 14
    .parameter "id"

    .prologue
    const v11, 0x7f080045

    const v10, 0x7f080043

    const v9, 0x7f08003b

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 261
    sparse-switch p1, :sswitch_data_fa

    .line 346
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :cond_12
    :goto_12
    return-object v4

    .line 264
    :sswitch_13
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03003a

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 265
    .local v3, view:Landroid/view/View;
    const v5, 0x7f0c0185

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 266
    .local v2, etPassword:Landroid/widget/EditText;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    const v6, 0x7f080055

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 269
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 270
    new-instance v6, Lcom/infraware/polarisoffice/search/SearchFileList$3;

    invoke-direct {v6, p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList$3;-><init>(Lcom/infraware/polarisoffice/search/SearchFileList;Landroid/widget/EditText;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 280
    invoke-virtual {v5, v11, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 281
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 266
    iput-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oPasswordPopup:Landroid/app/AlertDialog;

    .line 282
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oPasswordPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 283
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oPasswordPopup:Landroid/app/AlertDialog;

    goto :goto_12

    .line 287
    .end local v2           #etPassword:Landroid/widget/EditText;
    .end local v3           #view:Landroid/view/View;
    :sswitch_52
    iput p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nPopupType:I

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f0800b5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f08005f

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, duplicateMsg:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 292
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 293
    const v5, 0x7f080046

    new-instance v6, Lcom/infraware/polarisoffice/search/SearchFileList$4;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/search/SearchFileList$4;-><init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 309
    const v5, 0x7f080047

    new-instance v6, Lcom/infraware/polarisoffice/search/SearchFileList$5;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/search/SearchFileList$5;-><init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 314
    new-instance v5, Lcom/infraware/polarisoffice/search/SearchFileList$6;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/search/SearchFileList$6;-><init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 322
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 289
    iput-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    .line 323
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 324
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    goto/16 :goto_12

    .line 327
    .end local v1           #duplicateMsg:Ljava/lang/String;
    :sswitch_b6
    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    if-eqz v5, :cond_12

    .line 330
    const v5, 0x7f080106

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v7}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, downloadMsg:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 334
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 335
    new-instance v6, Lcom/infraware/polarisoffice/search/SearchFileList$7;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/search/SearchFileList$7;-><init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 341
    invoke-virtual {v5, v11, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 342
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 331
    iput-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    .line 343
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 344
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    goto/16 :goto_12

    .line 261
    nop

    :sswitch_data_fa
    .sparse-switch
        0x64 -> :sswitch_13
        0x65 -> :sswitch_52
        0x12c -> :sswitch_b6
        0x12d -> :sswitch_52
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/search/SearchFileList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    :cond_9
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onDestroy()V

    .line 243
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 163
    invoke-virtual {p0, p3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getFileItem(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 164
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, strPath:Ljava/lang/String;
    iget v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    if-ne v4, v6, :cond_59

    .line 168
    iget-boolean v4, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v4, :cond_1f

    iget-object v4, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    const-string v5, "zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 169
    invoke-direct {p0, v1, v6}, Lcom/infraware/polarisoffice/search/SearchFileList;->unzip(Lcom/infraware/filemanager/file/FileListItem;Z)V

    .line 201
    :goto_1e
    return-void

    .line 172
    :cond_1f
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "INTCMD"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v4, "key_filename"

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v4, "key_caller_pkg_name"

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/16 v4, 0x1002

    invoke-virtual {p0, v0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v2

    .line 182
    .local v2, recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/infraware/filemanager/recent/RecentFileManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    goto :goto_1e

    .line 185
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    :cond_55
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->onUnknownExt(Ljava/lang/String;)V

    goto :goto_1e

    .line 189
    :cond_59
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 191
    const v4, 0x7f080068

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    goto :goto_1e

    .line 195
    :cond_6a
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 196
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_82

    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strVendor:Ljava/lang/String;

    const-string v5, "- FV03"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_82

    .line 197
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {p0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->fileOperationWebLoad(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1e

    .line 199
    :cond_82
    const/16 v4, 0x12c

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->showDialog(I)V

    goto :goto_1e
.end method

.method public onLocaleChanged()V
    .registers 12

    .prologue
    const v10, 0x7f080047

    const v9, 0x7f080046

    const v8, 0x7f08003b

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 435
    const v2, 0x7f0800a4

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle1:Ljava/lang/String;

    .line 436
    iget v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nSearchType:I

    packed-switch v2, :pswitch_data_15a

    .line 452
    :goto_19
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_tvTitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0800b5

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f08005f

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, duplicateMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 458
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setText(I)V

    .line 460
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(I)V

    .line 463
    .end local v1           #duplicateMsg:Ljava/lang/String;
    :cond_96
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_d5

    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 465
    const v2, 0x7f080106

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, downloadMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 467
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setText(I)V

    .line 469
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(I)V

    .line 472
    .end local v0           #downloadMsg:Ljava/lang/String;
    :cond_d5
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onLocaleChanged()V

    .line 473
    return-void

    .line 439
    :pswitch_d9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " - \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f080107

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    goto/16 :goto_19

    .line 442
    :pswitch_f9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " - \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f080108

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    goto/16 :goto_19

    .line 445
    :pswitch_119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " - \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f080109

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    goto/16 :goto_19

    .line 448
    :pswitch_139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " - \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f08010a

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    goto/16 :goto_19

    .line 436
    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_f9
        :pswitch_119
        :pswitch_139
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bActive:Z

    .line 207
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPause()V

    .line 208
    return-void
.end method

.method public onPivotLock()V
    .registers 3

    .prologue
    .line 389
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->isPivotLock(Landroid/content/Context;)Z

    move-result v0

    .line 391
    .local v0, bLock:Z
    if-eqz v0, :cond_14

    .line 392
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nOrientation:I

    .line 394
    :cond_14
    iget v1, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nOrientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->onChangeScreen(I)V

    .line 395
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/search/SearchFileList;->setPivotLock(Z)V

    .line 396
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 247
    sparse-switch p1, :sswitch_data_c

    .line 256
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 257
    return-void

    .line 252
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/search/SearchFileList;->removeDialog(I)V

    goto :goto_3

    .line 247
    nop

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_7
        0x65 -> :sswitch_7
        0x12c -> :sswitch_7
        0x12d -> :sswitch_7
    .end sparse-switch
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 214
    new-instance v0, Lcom/infraware/common/util/ini/IniFile;

    const-string v2, "dvToolbarConfig.ini"

    invoke-direct {v0, v2}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v2, "POLSAIRS_DOCUMENT_SETTING"

    const-string v3, "SHOW_EXT"

    invoke-virtual {v0, v2, v3}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a

    .line 219
    :cond_18
    const-string v1, "0"

    .line 221
    :cond_1a
    iget v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nSearchType:I

    if-eqz v2, :cond_26

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_40

    .line 222
    :cond_26
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->setShowExt(Z)V

    .line 226
    :goto_29
    iget-boolean v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bRemove:Z

    if-nez v2, :cond_3a

    iget v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    if-ne v2, v4, :cond_3a

    .line 228
    iput-boolean v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bRemove:Z

    .line 229
    iget-boolean v2, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bFinish:Z

    if-eqz v2, :cond_3a

    .line 230
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->onUpdateList()V

    .line 233
    :cond_3a
    iput-boolean v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bActive:Z

    .line 234
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onResume()V

    .line 235
    return-void

    .line 224
    :cond_40
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->setShowExt(Z)V

    goto :goto_29
.end method

.method public onUnknownExt(Ljava/lang/String;)V
    .registers 8
    .parameter "fileName"

    .prologue
    .line 400
    invoke-static {}, Lcom/infraware/filemanager/porting/DRM;->getInstance()Lcom/infraware/filemanager/porting/DRM;

    move-result-object v0

    .line 401
    .local v0, drm:Lcom/infraware/filemanager/porting/DRM;
    const/4 v1, 0x0

    .line 403
    .local v1, drmCategory:Ljava/lang/String;
    invoke-virtual {v0, p1, p0}, Lcom/infraware/filemanager/porting/DRM;->isDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_28

    .line 405
    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/infraware/filemanager/porting/DRM;->getDrmContentJudge(I)I

    move-result v4

    .line 406
    .local v4, right:I
    if-nez v4, :cond_20

    .line 408
    const v5, 0x7f080079

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    .line 430
    .end local v4           #right:I
    :goto_1f
    return-void

    .line 412
    .restart local v4       #right:I
    :cond_20
    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v3

    .line 413
    .local v3, mediaType:I
    invoke-virtual {v0, v3}, Lcom/infraware/filemanager/porting/DRM;->getContentCategory(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .end local v3           #mediaType:I
    .end local v4           #right:I
    :cond_28
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Lcom/infraware/common/util/Utils;->getUnknownIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 417
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_3f

    .line 421
    if-eqz v1, :cond_3a

    :try_start_31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 422
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/search/SearchFileList;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_3e

    goto :goto_1f

    .line 426
    :catch_3e
    move-exception v5

    .line 429
    :cond_3f
    const v5, 0x7f080104

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/search/SearchFileList;->onToastMessage(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method protected updateList()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 529
    iget-boolean v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bSearch:Z

    if-nez v3, :cond_151

    .line 531
    iput-boolean v8, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bSearch:Z

    .line 533
    new-instance v1, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v1}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 534
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strSearchPath:Ljava/lang/String;

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 536
    const v3, 0x7f0800a4

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle1:Ljava/lang/String;

    .line 537
    iget v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nSearchType:I

    packed-switch v3, :pswitch_data_1e2

    .line 561
    :goto_21
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_tvTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle1:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    iput v3, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 564
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 566
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v2

    .line 568
    .local v2, manager:Lcom/infraware/filemanager/manager/FileManager;
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strStorageId:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/infraware/filemanager/file/FileSelectedList;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3, v6}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 571
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/manager/FileManager;->setItemList(Lcom/infraware/filemanager/file/FileSelectedList;)V

    .line 573
    new-instance v0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v3}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 574
    .local v0, handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    new-instance v3, Lcom/infraware/filemanager/async/FileAsyncController;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v1, v0, v6}, Lcom/infraware/filemanager/async/FileAsyncController;-><init>(ILcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/async/FileAsyncControlHandler;Z)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    .line 575
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    invoke-virtual {v3, v8}, Lcom/infraware/filemanager/async/FileAsyncController;->setPriority(I)V

    .line 576
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    invoke-virtual {v3}, Lcom/infraware/filemanager/async/FileAsyncController;->start()V

    .line 578
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/SearchFileList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 580
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_viewEmpty:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_viewNoSDCard:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 622
    .end local v0           #handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    .end local v1           #item:Lcom/infraware/filemanager/file/FileListItem;
    .end local v2           #manager:Lcom/infraware/filemanager/manager/FileManager;
    :cond_a1
    :goto_a1
    return-void

    .line 540
    .restart local v1       #item:Lcom/infraware/filemanager/file/FileListItem;
    :pswitch_a2
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strSearchWord:Ljava/lang/String;

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strSearchWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    goto/16 :goto_21

    .line 544
    :pswitch_c1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f080107

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    .line 545
    const-string v3, "doc"

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    goto/16 :goto_21

    .line 548
    :pswitch_e5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f080108

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    .line 549
    const-string v3, "xls"

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    goto/16 :goto_21

    .line 552
    :pswitch_109
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f080109

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    .line 553
    const-string v3, "ppt"

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    goto/16 :goto_21

    .line 556
    :pswitch_12d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f08010a

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/search/SearchFileList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    .line 557
    const-string v3, "pdf"

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    goto/16 :goto_21

    .line 586
    .end local v1           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_151
    iget-boolean v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bFinish:Z

    if-eqz v3, :cond_a1

    .line 589
    iget-boolean v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bRemove:Z

    if-eqz v3, :cond_162

    iget v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_nStorageType:I

    if-ne v3, v8, :cond_162

    .line 591
    iput-boolean v6, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_bRemove:Z

    .line 592
    invoke-direct {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->removeList()V

    .line 595
    :cond_162
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_tvTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle1:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_strTitle2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1b7

    .line 599
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListAdapter;->sortFileList()V

    .line 600
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListAdapter;->notifyDataSetChanged()V

    .line 602
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 603
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_viewEmpty:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_viewNoSDCard:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a1

    .line 608
    :cond_1b7
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->isSdcard()Z

    move-result v3

    if-nez v3, :cond_1d6

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->isLocalStorage()Z

    move-result v3

    if-eqz v3, :cond_1d6

    .line 610
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_viewNoSDCard:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_viewEmpty:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    :goto_1cd
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/SearchFileList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_a1

    .line 615
    :cond_1d6
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_viewNoSDCard:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/SearchFileList;->m_viewEmpty:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1cd

    .line 537
    nop

    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_c1
        :pswitch_e5
        :pswitch_109
        :pswitch_12d
    .end packed-switch
.end method
