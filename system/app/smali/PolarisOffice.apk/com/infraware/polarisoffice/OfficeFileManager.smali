.class public Lcom/infraware/polarisoffice/OfficeFileManager;
.super Lcom/infraware/filemanager/file/FileBaseActivity;
.source "OfficeFileManager.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/OfficeFileManager$IconMenu;,
        Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;
    }
.end annotation


# static fields
.field static final FMACTION_NONE:I = 0x0

.field static final FMACTION_WEB_STORAGE_CLOSE:I = 0x63

.field static final FMACTION_WEB_STORAGE_CREATE:I = 0x3

.field static final FMACTION_WEB_STORAGE_DELETE:I = 0x5

.field static final FMACTION_WEB_STORAGE_DOWNLOAD:I = 0xc

.field static final FMACTION_WEB_STORAGE_LOGIN:I = 0x1

.field static final FMACTION_WEB_STORAGE_LOGOUT:I = 0x2

.field static final FMACTION_WEB_STORAGE_RENAME:I = 0x4

.field static final FMACTION_WEB_STORAGE_UPLOAD:I = 0xb

.field static final FMACTION_WEB_STORAGE_WEBLOAD:I = 0xd

.field static final FMACTION_WEB_STORAGE_WEBOPEN:I = 0xe


# instance fields
.field private mScanToast:Landroid/widget/Toast;

.field private m_bSearchActivity:Z

.field private m_nAction:I

.field private m_nDownloadMode:I

.field private m_nLoginType:I

.field private m_nOperation:I

.field private m_nPopupType:I

.field private m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_oCancelDialog:Landroid/app/AlertDialog;

.field private m_oDownloadPopup:Landroid/app/AlertDialog;

.field private m_oDuplicatePopup:Landroid/app/AlertDialog;

.field private m_oFailDialog:Landroid/app/AlertDialog;

.field private m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oIconMenuPopup:Landroid/app/AlertDialog;

.field private m_oListListener:Landroid/content/DialogInterface$OnClickListener;

.field private m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

.field private m_oPasswordPopup:Landroid/app/AlertDialog;

.field private m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

.field private m_oRootContext:Landroid/content/Context;

.field private m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

.field private m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

.field private m_oWebProgress:Landroid/app/ProgressDialog;

.field private m_runAction:Ljava/lang/Runnable;

.field private m_strLoginId:Ljava/lang/String;

.field private m_strPostName:Ljava/lang/String;

.field private m_strProgressDialogTitle:Ljava/lang/String;

.field private m_strTempFile:Ljava/lang/String;

.field private m_strVendor:Ljava/lang/String;

.field protected uiUpdateHandler:Landroid/os/Handler;

.field private unzipProgressHandler:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;-><init>()V

    .line 104
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    .line 106
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nAction:I

    .line 107
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nPopupType:I

    .line 109
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strPostName:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_runAction:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oHandler:Landroid/os/Handler;

    .line 114
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    .line 117
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 118
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 119
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 121
    new-instance v0, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v0}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 123
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    .line 124
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    .line 125
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPasswordPopup:Landroid/app/AlertDialog;

    .line 126
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    .line 128
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 129
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    .line 131
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    .line 132
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFailDialog:Landroid/app/AlertDialog;

    .line 134
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    .line 135
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strProgressDialogTitle:Ljava/lang/String;

    .line 136
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nOperation:I

    .line 138
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nLoginType:I

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strLoginId:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownloadMode:I

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strTempFile:Ljava/lang/String;

    .line 146
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_bSearchActivity:Z

    .line 794
    new-instance v0, Lcom/infraware/polarisoffice/OfficeFileManager$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$1;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2817
    new-instance v0, Lcom/infraware/polarisoffice/OfficeFileManager$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$2;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->uiUpdateHandler:Landroid/os/Handler;

    .line 3108
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->mScanToast:Landroid/widget/Toast;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;
    .registers 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/OfficeFileManager;)I
    .registers 2
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownloadMode:I

    return v0
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/OfficeFileManager;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2946
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startProgressing(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/OfficeFileManager;IILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3002
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/polarisoffice/OfficeFileManager;->startProgressing(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/infraware/polarisoffice/OfficeFileManager;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2916
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setProgressUnit(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2923
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/OfficeFileManager;->incrementProgressing(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2935
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/OfficeFileManager;->setValueProgressing(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$16(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 1
    .parameter

    .prologue
    .line 3088
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->stopProgressing()V

    return-void
.end method

.method static synthetic access$17(Lcom/infraware/polarisoffice/OfficeFileManager;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2902
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager;->isLocalOperation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/app/AlertDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFailDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$19(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1816
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationNew(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$20(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/common/config/RuntimeConfig;
    .registers 2
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    return-object v0
.end method

.method static synthetic access$21(Lcom/infraware/polarisoffice/OfficeFileManager;)I
    .registers 2
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nAction:I

    return v0
.end method

.method static synthetic access$22(Lcom/infraware/polarisoffice/OfficeFileManager;)I
    .registers 2
    .parameter

    .prologue
    .line 138
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nLoginType:I

    return v0
.end method

.method static synthetic access$23(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strLoginId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/infraware/polarisoffice/OfficeFileManager;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2408
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setContext(I)V

    return-void
.end method

.method static synthetic access$25(Lcom/infraware/polarisoffice/OfficeFileManager;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 138
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nLoginType:I

    return-void
.end method

.method static synthetic access$26(Lcom/infraware/polarisoffice/OfficeFileManager;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strLoginId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 1
    .parameter

    .prologue
    .line 2172
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->createWebFolder()V

    return-void
.end method

.method static synthetic access$28(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 1
    .parameter

    .prologue
    .line 2226
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->deleteWebFile()V

    return-void
.end method

.method static synthetic access$29(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 1
    .parameter

    .prologue
    .line 2280
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->renameWebFile()V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/OfficeFileManager;)I
    .registers 2
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    return v0
.end method

.method static synthetic access$30(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 1
    .parameter

    .prologue
    .line 2330
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->uploadWebStorage()V

    return-void
.end method

.method static synthetic access$31(Lcom/infraware/polarisoffice/OfficeFileManager;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 143
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownloadMode:I

    return-void
.end method

.method static synthetic access$32(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 1
    .parameter

    .prologue
    .line 2364
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->downloadWebStorage()V

    return-void
.end method

.method static synthetic access$33(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 1
    .parameter

    .prologue
    .line 2398
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->openWebStorage()V

    return-void
.end method

.method static synthetic access$34(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;
    .registers 2
    .parameter

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->unzipProgressHandler:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    return-object v0
.end method

.method static synthetic access$35(Lcom/infraware/polarisoffice/OfficeFileManager;)I
    .registers 2
    .parameter

    .prologue
    .line 107
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nPopupType:I

    return v0
.end method

.method static synthetic access$36(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    return-object v0
.end method

.method static synthetic access$37(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/filemanager/file/FileListItem;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1888
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationPaste(Lcom/infraware/filemanager/file/FileListItem;Z)V

    return-void
.end method

.method static synthetic access$38(Lcom/infraware/polarisoffice/OfficeFileManager;ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1693
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    return-void
.end method

.method static synthetic access$40(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2029
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationDownload(Lcom/infraware/filemanager/file/FileListItem;)V

    return-void
.end method

.method static synthetic access$41(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$42(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strPostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$43(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    return-object v0
.end method

.method static synthetic access$44(Lcom/infraware/polarisoffice/OfficeFileManager;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$45(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/app/AlertDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$46(Lcom/infraware/polarisoffice/OfficeFileManager;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$47(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/async/FileAsyncController;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/polarisoffice/dialog/FileManagerDialog;
    .registers 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 2801
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->decideFolderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/OfficeFileManager;ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2076
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationSearch(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/OfficeFileManager;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2784
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager;->sort(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/OfficeFileManager;)Lcom/infraware/filemanager/file/FileSelectedList;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    return-object v0
.end method

.method private checkMediaScannerScanning()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3111
    invoke-static {p0}, Lcom/infraware/common/util/FileUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3112
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->mScanToast:Landroid/widget/Toast;

    if-nez v2, :cond_27

    .line 3113
    const-string v2, ""

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->mScanToast:Landroid/widget/Toast;

    .line 3117
    :goto_14
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->mScanToast:Landroid/widget/Toast;

    const v2, 0x7f0800a8

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 3118
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 3119
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3122
    :goto_26
    return v0

    .line 3115
    :cond_27
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    goto :goto_14

    :cond_2d
    move v0, v1

    .line 3122
    goto :goto_26
.end method

.method private createWebFolder()V
    .registers 5

    .prologue
    .line 2174
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v1

    .line 2177
    .local v1, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-static {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->convertTypeToService(I)I

    move-result v0

    .line 2178
    .local v0, serviceType:I
    if-nez v0, :cond_17

    .line 2180
    const v2, 0x7f0800b2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2224
    :goto_16
    return-void

    .line 2184
    :cond_17
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2186
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_16

    .line 2190
    :cond_28
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    .line 2191
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    const v3, 0x7f0800ae

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2192
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/infraware/polarisoffice/OfficeFileManager$11;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$11;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2205
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2206
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 2207
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strPostName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->isExist(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 2208
    const v2, 0x7f0800b5

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_16

    .line 2210
    :cond_6b
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/infraware/polarisoffice/OfficeFileManager$12;

    invoke-direct {v3, p0, v1, v0}, Lcom/infraware/polarisoffice/OfficeFileManager$12;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/filemanager/webstorage/WebStorageAPI;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2222
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_16
.end method

.method private decideFolderName()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2803
    const/4 v3, 0x0

    .line 2804
    .local v3, prefix:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungGlobalVer()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2805
    new-instance v3, Ljava/lang/String;

    .end local v3           #prefix:Ljava/lang/String;
    const v4, 0x7f0800cd

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2809
    .restart local v3       #prefix:Ljava/lang/String;
    :goto_15
    const/4 v0, 0x1

    .line 2810
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

    .line 2811
    .end local v1           #index:I
    .restart local v0       #index:I
    :goto_38
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->isAlreadyExist(Ljava/lang/String;Lcom/infraware/filemanager/file/FileListItem;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 2814
    return-object v2

    .line 2807
    .end local v0           #index:I
    .end local v2           #newFolder:Ljava/lang/String;
    :cond_40
    new-instance v3, Ljava/lang/String;

    .end local v3           #prefix:Ljava/lang/String;
    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v3       #prefix:Ljava/lang/String;
    goto :goto_15

    .line 2812
    .restart local v0       #index:I
    .restart local v2       #newFolder:Ljava/lang/String;
    :cond_4d
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
    goto :goto_38
.end method

.method private deleteWebFile()V
    .registers 5

    .prologue
    .line 2228
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    if-nez v2, :cond_f

    .line 2230
    const v2, 0x7f0800b2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2278
    :goto_e
    return-void

    .line 2234
    :cond_f
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2236
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_e

    .line 2240
    :cond_20
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v1

    .line 2241
    .local v1, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    iget v0, v2, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 2243
    .local v0, serviceType:I
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    .line 2244
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    const v3, 0x7f0800b0

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2245
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/infraware/polarisoffice/OfficeFileManager$13;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$13;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2259
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2260
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 2261
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/infraware/polarisoffice/OfficeFileManager$14;

    invoke-direct {v3, p0, v1, v0}, Lcom/infraware/polarisoffice/OfficeFileManager$14;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/filemanager/webstorage/WebStorageAPI;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2277
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_e
.end method

.method private downloadWebStorage()V
    .registers 9

    .prologue
    .line 2366
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v4

    .line 2367
    .local v4, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2369
    const v5, 0x7f08030e

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FV04"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_24

    .line 2370
    const v5, 0x7f0800bf

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2396
    :cond_23
    :goto_23
    return-void

    .line 2372
    :cond_24
    const v5, 0x7f0800be

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_23

    .line 2376
    :cond_2f
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 2378
    const v5, 0x7f080068

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_23

    .line 2382
    :cond_40
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v2

    .line 2384
    .local v2, manager:Lcom/infraware/filemanager/manager/FileManager;
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/infraware/filemanager/file/FileSelectedList;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 2387
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, v5}, Lcom/infraware/filemanager/manager/FileManager;->setItemList(Lcom/infraware/filemanager/file/FileSelectedList;)V

    .line 2389
    new-instance v1, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v1, v5, v6, v7}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 2390
    .local v1, handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v5, v6}, Lcom/infraware/filemanager/manager/FileManager;->download(Lcom/infraware/filemanager/async/FileAsyncControlHandler;Lcom/infraware/filemanager/file/FileListItem;Z)I

    move-result v3

    .line 2391
    .local v3, result:I
    if-eqz v3, :cond_23

    .line 2393
    invoke-static {p0, v3}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2394
    .local v0, errMessage:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_23
.end method

.method private fileOperationAddToFavorite(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 6
    .parameter "item"

    .prologue
    .line 1806
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1807
    .local v1, strPath:Ljava/lang/String;
    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v2, :cond_40

    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_40

    .line 1808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1810
    :cond_40
    invoke-static {p0}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/favorite/FavoriteListManager;

    move-result-object v0

    .line 1811
    .local v0, favorite:Lcom/infraware/filemanager/favorite/FavoriteListManager;
    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    .line 1813
    const v2, 0x7f080102

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 1814
    return-void
.end method

.method private fileOperationCopy(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1870
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    if-eq v1, v2, :cond_6

    .line 1886
    :goto_5
    return-void

    .line 1873
    :cond_6
    if-eqz p1, :cond_12

    .line 1875
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 1876
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1, p1}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 1879
    :cond_12
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 1881
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1882
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "key_current_folder"

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    const-string v1, "key_interanl_mode"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1884
    const-string v1, "key_dialog_title"

    const v2, 0x7f0800f9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1885
    const/16 v1, 0x1006

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5
.end method

.method private fileOperationDelete(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 13
    .parameter "item"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1917
    if-eqz p1, :cond_e

    .line 1919
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 1920
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6, p1}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 1923
    :cond_e
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6, v9}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 1925
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v4

    .line 1926
    .local v4, manager:Lcom/infraware/filemanager/manager/FileManager;
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4, v6}, Lcom/infraware/filemanager/manager/FileManager;->setItemList(Lcom/infraware/filemanager/file/FileSelectedList;)V

    .line 1928
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileSelectedList;->getType()I

    move-result v6

    if-eq v6, v10, :cond_52

    .line 1930
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 1932
    const v6, 0x7f080068

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 1972
    :goto_34
    return-void

    .line 1936
    :cond_35
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/infraware/filemanager/file/FileSelectedList;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v4}, Lcom/infraware/filemanager/manager/FileManager;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_52

    .line 1939
    const v6, 0x7f0800ba

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 1940
    invoke-static {v10}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    goto :goto_34

    .line 1945
    :cond_52
    const/4 v2, 0x0

    .line 1946
    .local v2, isFile:Z
    const/4 v3, 0x0

    .line 1947
    .local v3, isFolder:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_55
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v6

    if-lt v1, v6, :cond_78

    .line 1962
    :cond_5d
    const/4 v5, 0x0

    .line 1963
    .local v5, messageId:I
    if-eqz v3, :cond_8e

    if-nez v2, :cond_8e

    .line 1964
    const v5, 0x7f080061

    .line 1970
    :goto_65
    new-instance v6, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v7, v9}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    iput-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 1971
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v6, v5}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->deleteDlg(I)V

    goto :goto_34

    .line 1949
    .end local v5           #messageId:I
    :cond_78
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6, v1}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v0

    .line 1950
    .local v0, fileItem:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v0, :cond_89

    .line 1952
    iget-boolean v6, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v6, :cond_8c

    .line 1953
    const/4 v3, 0x1

    .line 1957
    :goto_85
    if-eqz v3, :cond_89

    if-nez v2, :cond_5d

    .line 1947
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 1955
    :cond_8c
    const/4 v2, 0x1

    goto :goto_85

    .line 1965
    .end local v0           #fileItem:Lcom/infraware/filemanager/file/FileListItem;
    .restart local v5       #messageId:I
    :cond_8e
    if-nez v3, :cond_96

    if-eqz v2, :cond_96

    .line 1966
    const v5, 0x7f080060

    goto :goto_65

    .line 1968
    :cond_96
    const v5, 0x7f080062

    goto :goto_65
.end method

.method private fileOperationDownload(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 2031
    if-eqz p1, :cond_d

    .line 2033
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 2034
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, p1}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 2037
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v2

    if-lt v0, v2, :cond_27

    .line 2047
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 2049
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2060
    :goto_26
    return-void

    .line 2039
    :cond_27
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v2, :cond_3f

    .line 2041
    invoke-static {v4}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 2042
    const v2, 0x7f08010b

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_26

    .line 2037
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2053
    :cond_42
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 2055
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2056
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "key_current_folder"

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->getRootPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2057
    const-string v2, "key_interanl_mode"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2058
    const-string v2, "key_dialog_title"

    const v3, 0x7f0800fa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2059
    const/16 v2, 0x1007

    invoke-virtual {p0, v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_26
.end method

.method private fileOperationExtract(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 1994
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->unzip(Lcom/infraware/filemanager/file/FileListItem;Z)V

    .line 1995
    return-void
.end method

.method private fileOperationLogin(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 8
    .parameter "item"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 1744
    iget v2, p1, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    packed-switch v2, :pswitch_data_7c

    .line 1786
    :cond_7
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v1

    .line 1787
    .local v1, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    iget v2, p1, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->isLogin(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1788
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(I)V

    .line 1791
    .end local v1           #webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    :goto_1a
    return-void

    .line 1747
    :pswitch_1b
    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strLoginId:Ljava/lang/String;

    .line 1748
    iput v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nLoginType:I

    .line 1750
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->clone()Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1751
    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 1759
    :cond_33
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/infraware/common/account/AddAccountEdit;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1760
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "key_account_type"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1761
    const/16 v2, 0x100

    invoke-virtual {p0, v0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a

    .line 1766
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_45
    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strLoginId:Ljava/lang/String;

    .line 1767
    const/4 v2, 0x3

    iput v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nLoginType:I

    .line 1769
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->clone()Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1770
    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    if-eqz v2, :cond_5e

    iget-object v2, p1, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 1778
    :cond_5e
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/infraware/common/account/AddAccountEdit;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1779
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "key_account_type"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1780
    const/16 v2, 0x101

    invoke-virtual {p0, v0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a

    .line 1790
    .end local v0           #intent:Landroid/content/Intent;
    .restart local v1       #webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    :cond_70
    iget v2, p1, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->loginWebStorage(ILjava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1a

    .line 1744
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_45
    .end packed-switch
.end method

.method private fileOperationMove(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 5
    .parameter "item"

    .prologue
    .line 1850
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 1866
    :goto_5
    return-void

    .line 1853
    :cond_6
    if-eqz p1, :cond_12

    .line 1855
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 1856
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1, p1}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 1859
    :cond_12
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 1861
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1862
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "key_current_folder"

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1863
    const-string v1, "key_interanl_mode"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1864
    const-string v1, "key_dialog_title"

    const v2, 0x7f0800f8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1865
    const/16 v1, 0x1005

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5
.end method

.method private fileOperationNew(ILjava/lang/String;)V
    .registers 11
    .parameter "contentType"
    .parameter "folder"

    .prologue
    const/4 v7, 0x1

    .line 1818
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1819
    .local v3, osVer:Ljava/lang/String;
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 1821
    const-string v5, "/mnt"

    invoke-virtual {p2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1b

    .line 1822
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1825
    :cond_1b
    const/4 v1, 0x0

    .line 1827
    .local v1, freeBlock:I
    :try_start_1c
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v4, sf:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_24} :catch_62

    move-result v1

    .line 1831
    .end local v4           #sf:Landroid/os/StatFs;
    :goto_25
    if-nez v1, :cond_32

    .line 1832
    const v5, 0x7f0800bd

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 1846
    :cond_31
    :goto_31
    return-void

    .line 1836
    :cond_32
    invoke-static {p1, v7}, Lcom/infraware/common/util/FileUtils;->getFileExtension(IZ)Ljava/lang/String;

    move-result-object v0

    .line 1838
    .local v0, ext:Ljava/lang/String;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_31

    .line 1841
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1842
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "key_new_file"

    invoke-static {p0, v0, p2}, Lcom/infraware/common/util/FileUtils;->decideFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1843
    const-string v5, "INTCMD"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1844
    const-string v5, "key_caller_pkg_name"

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1845
    const/16 v5, 0x1002

    invoke-virtual {p0, v2, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_31

    .line 1829
    .end local v0           #ext:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_62
    move-exception v5

    goto :goto_25
.end method

.method private fileOperationPaste(Lcom/infraware/filemanager/file/FileListItem;Z)V
    .registers 8
    .parameter "item"
    .parameter "isOverwrite"

    .prologue
    const/4 v4, 0x1

    .line 1890
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->isOperationExist()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1913
    :goto_7
    return-void

    .line 1893
    :cond_8
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v1

    .line 1894
    .local v1, manager:Lcom/infraware/filemanager/manager/FileManager;
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/manager/FileManager;->setItemList(Lcom/infraware/filemanager/file/FileSelectedList;)V

    .line 1898
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->getMode()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    goto :goto_7

    .line 1907
    :pswitch_1b
    new-instance v0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, p1, v3}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 1908
    .local v0, handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    new-instance v2, Lcom/infraware/filemanager/async/FileAsyncController;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0, p2}, Lcom/infraware/filemanager/async/FileAsyncController;-><init>(ILcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/async/FileAsyncControlHandler;Z)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    .line 1909
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    invoke-virtual {v2, v4}, Lcom/infraware/filemanager/async/FileAsyncController;->setPriority(I)V

    .line 1910
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    invoke-virtual {v2}, Lcom/infraware/filemanager/async/FileAsyncController;->start()V

    goto :goto_7

    .line 1901
    .end local v0           #handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    :pswitch_37
    new-instance v0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, p1, v3}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 1902
    .restart local v0       #handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    new-instance v2, Lcom/infraware/filemanager/async/FileAsyncController;

    invoke-direct {v2, v4, p1, v0, p2}, Lcom/infraware/filemanager/async/FileAsyncController;-><init>(ILcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/async/FileAsyncControlHandler;Z)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    .line 1903
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    invoke-virtual {v2, v4}, Lcom/infraware/filemanager/async/FileAsyncController;->setPriority(I)V

    .line 1904
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    invoke-virtual {v2}, Lcom/infraware/filemanager/async/FileAsyncController;->start()V

    goto :goto_7

    .line 1898
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_37
    .end packed-switch
.end method

.method private fileOperationProperty(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 11
    .parameter "item"

    .prologue
    .line 2004
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/infraware/filemanager/FilePropertyActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2006
    .local v4, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 2007
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 2010
    .local v5, oos:Ljava/io/ObjectOutputStream;
    :try_start_9
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v7, 0x19000

    invoke-direct {v1, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_3d

    .line 2011
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_11
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_4c

    .line 2012
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .local v6, oos:Ljava/io/ObjectOutputStream;
    :try_start_16
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->clone()Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    .line 2013
    .local v2, cloneItem:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v7, p1, Lcom/infraware/filemanager/file/FileListItem;->isSDCard:Z

    if-eqz v7, :cond_21

    .line 2014
    const/4 v7, 0x0

    iput-object v7, v2, Lcom/infraware/filemanager/file/FileListItem;->icon:Landroid/graphics/Bitmap;

    .line 2015
    :cond_21
    invoke-virtual {v6, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2016
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_4f

    .line 2023
    const-string v7, "key_login_id"

    iget-object v8, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2024
    const-string v7, "key_property"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2026
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivity(Landroid/content/Intent;)V

    move-object v5, v6

    .end local v6           #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 2027
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #cloneItem:Lcom/infraware/filemanager/file/FileListItem;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    :goto_3c
    return-void

    .line 2017
    :catch_3d
    move-exception v3

    .line 2018
    .local v3, e:Ljava/io/IOException;
    :goto_3e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 2019
    const v7, 0x7f0800b2

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_3c

    .line 2017
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_4c
    move-exception v3

    move-object v0, v1

    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    goto :goto_3e

    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #oos:Ljava/io/ObjectOutputStream;
    :catch_4f
    move-exception v3

    move-object v5, v6

    .end local v6           #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    goto :goto_3e
.end method

.method private fileOperationRename(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 5
    .parameter "item"

    .prologue
    .line 1976
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getShowExt()Z

    move-result v0

    .line 1977
    .local v0, isShowExt:Z
    iget v1, p1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    .line 1979
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1981
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 1990
    :goto_19
    return-void

    .line 1985
    :cond_1a
    const/4 v0, 0x0

    .line 1988
    :cond_1b
    new-instance v1, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-direct {v1, p0, p1}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 1989
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->renameFolderDlg(Z)V

    goto :goto_19
.end method

.method private fileOperationSearch(ILjava/lang/String;)V
    .registers 6
    .parameter "searchType"
    .parameter "searchKey"

    .prologue
    const/4 v2, 0x1

    .line 2078
    if-nez p1, :cond_34

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_34

    .line 2080
    :cond_b
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_bSearchActivity:Z

    if-eqz v1, :cond_13

    .line 2081
    invoke-static {v2}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 2111
    :goto_12
    return-void

    .line 2085
    :cond_13
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_bSearchActivity:Z

    .line 2086
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/search/InputSearchKey;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2088
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "key_search_path"

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getRootPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2089
    const-string v1, "key_storage_type"

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2091
    const/16 v1, 0x100d

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_12

    .line 2095
    .end local v0           #intent:Landroid/content/Intent;
    :cond_34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/search/SearchFileList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2097
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "key_search_path"

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getRootPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2098
    const-string v1, "key_search_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2100
    packed-switch p1, :pswitch_data_68

    .line 2107
    :goto_4e
    const-string v1, "key_login_id"

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2108
    const-string v1, "key_storage_type"

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2110
    const/16 v1, 0x100e

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_12

    .line 2103
    :pswitch_62
    const-string v1, "key_search_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4e

    .line 2100
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_62
    .end packed-switch
.end method

.method private fileOperationSend(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 1999
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onAttachFile(Ljava/lang/String;)V

    .line 2000
    return-void
.end method

.method private fileOperationUpload()V
    .registers 4

    .prologue
    .line 2063
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2065
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2074
    :goto_10
    return-void

    .line 2069
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/common/FileSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2070
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "key_current_folder"

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getRootPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    const-string v1, "key_interanl_mode"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2072
    const-string v1, "key_dialog_title"

    const v2, 0x7f0800f6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2073
    const/16 v1, 0x1004

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10
.end method

.method private fileOperationWebLoad(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 8
    .parameter "item"

    .prologue
    .line 2115
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 2116
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3, p1}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 2118
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 2120
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/infraware/common/util/FileUtils;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2122
    .local v0, defaultDir:Ljava/io/File;
    new-instance v3, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v3}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    iput-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 2123
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 2125
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v2

    .line 2126
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

    iput-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strTempFile:Ljava/lang/String;

    .line 2127
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strTempFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2129
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strTempFile:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2130
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_71

    .line 2132
    const v3, 0x7f0800b2

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2133
    const-string v3, ""

    iput-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strTempFile:Ljava/lang/String;

    .line 2139
    .end local v1           #file:Ljava/io/File;
    :goto_70
    return-void

    .line 2138
    :cond_71
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    const-string v5, ""

    invoke-direct {p0, v3, v4, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V

    goto :goto_70
.end method

.method private incrementProgressing(ILjava/lang/String;)V
    .registers 4
    .parameter "aIncValue"
    .parameter "message"

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    if-nez v0, :cond_5

    .line 2933
    :goto_4
    return-void

    .line 2929
    :cond_5
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    .line 2930
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, p2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2932
    :cond_12
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->incrementProgressBy(I)V

    goto :goto_4
.end method

.method private isLocalOperation(I)Z
    .registers 3
    .parameter "operation"

    .prologue
    .line 2904
    packed-switch p1, :pswitch_data_8

    .line 2913
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2910
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2904
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isOperationExist()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1795
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    if-nez v1, :cond_6

    .line 1801
    :cond_5
    :goto_5
    return v0

    .line 1798
    :cond_6
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1801
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private loginWebStorage(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .parameter "serviceType"
    .parameter "loginId"
    .parameter "password"
    .parameter "isRefresh"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2144
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v2

    .line 2145
    .local v2, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2147
    const v4, 0x7f08030e

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FV04"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_26

    .line 2148
    const v4, 0x7f0800bf

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2169
    :goto_25
    return v3

    .line 2150
    :cond_26
    const v4, 0x7f0800be

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_25

    .line 2154
    :cond_31
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 2156
    const v4, 0x7f080068

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_25

    .line 2160
    :cond_42
    new-instance v0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, v3, v5, v6}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 2161
    .local v0, handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    const-string v3, "LOGIN"

    invoke-virtual {v2, v3, p1, p2, v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createThreadByType(Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/thread/LoginThread;

    .line 2162
    .local v1, loginThread:Lcom/infraware/filemanager/webstorage/thread/LoginThread;
    invoke-virtual {v1, p3}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setPassword(Ljava/lang/String;)V

    .line 2163
    if-eqz p4, :cond_62

    .line 2164
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setMode(I)V

    .line 2167
    :goto_5d
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->start()V

    move v3, v4

    .line 2169
    goto :goto_25

    .line 2166
    :cond_62
    invoke-virtual {v1, v4}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setMode(I)V

    goto :goto_5d
.end method

.method private onPostAction(ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V
    .registers 6
    .parameter "nAction"
    .parameter "item"
    .parameter "name"

    .prologue
    .line 1695
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nAction:I

    .line 1696
    iput-object p2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1697
    iput-object p3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strPostName:Ljava/lang/String;

    .line 1699
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_runAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1700
    return-void
.end method

.method private openWebStorage()V
    .registers 4

    .prologue
    .line 2400
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2401
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "INTCMD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2402
    const-string v1, "key_filename"

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strTempFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2403
    const-string v1, "key_caller_pkg_name"

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2405
    const/16 v1, 0x1002

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2406
    return-void
.end method

.method private renameWebFile()V
    .registers 5

    .prologue
    .line 2282
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    if-nez v2, :cond_f

    .line 2284
    const v2, 0x7f0800b2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2328
    :goto_e
    return-void

    .line 2288
    :cond_f
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2290
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_e

    .line 2294
    :cond_20
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v1

    .line 2295
    .local v1, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    iget v0, v2, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 2297
    .local v0, serviceType:I
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    .line 2298
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    const v3, 0x7f0800af

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2299
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/infraware/polarisoffice/OfficeFileManager$15;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$15;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2313
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2314
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 2315
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/infraware/polarisoffice/OfficeFileManager$16;

    invoke-direct {v3, p0, v1, v0}, Lcom/infraware/polarisoffice/OfficeFileManager$16;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/filemanager/webstorage/WebStorageAPI;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2327
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_e
.end method

.method private setContext(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 2410
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 2411
    .local v0, parent:Landroid/app/Activity;
    instance-of v1, v0, Lcom/infraware/polarisoffice/OfficeMainActivity;

    if-eqz v1, :cond_d

    .line 2412
    check-cast v0, Lcom/infraware/polarisoffice/OfficeMainActivity;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0, p0, p1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setContext(Landroid/content/Context;I)V

    .line 2413
    :cond_d
    return-void
.end method

.method private setMenuItems(Landroid/view/Menu;)V
    .registers 12
    .parameter "menu"

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f0800d5

    const v7, 0x7f02023a

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 2721
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->isUpdatable()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2782
    :cond_f
    :goto_f
    return-void

    .line 2724
    :cond_10
    const/4 v0, 0x0

    .line 2725
    .local v0, index:I
    iget v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    if-nez v3, :cond_3b

    .line 2727
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v4, "- FV03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_31

    .line 2728
    const/16 v3, 0x1c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    const v4, 0x7f0800db

    invoke-interface {p1, v5, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02020b

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 2729
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_31
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    invoke-interface {p1, v5, v6, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_f

    .line 2734
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_3b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getSelectMode()I

    move-result v3

    if-eqz v3, :cond_80

    .line 2736
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v2

    .line 2737
    .local v2, itemCount:I
    if-eqz v2, :cond_f

    .line 2741
    add-int/lit8 v2, v2, -0x1

    .line 2743
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-eq v3, v2, :cond_65

    .line 2744
    const/16 v3, 0x5b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v4, 0x7f08009f

    invoke-interface {p1, v5, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020236

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 2745
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_65
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-eqz v3, :cond_f

    .line 2746
    const/16 v3, 0x5c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v4, 0x7f0800a0

    invoke-interface {p1, v5, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020242

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .end local v2           #itemCount:I
    :goto_7e
    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_f

    .line 2751
    :cond_80
    iget v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    if-ne v3, v9, :cond_f4

    .line 2753
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v4, "- FV03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_ae

    .line 2755
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v3, 0x7f0800d0

    invoke-interface {p1, v5, v5, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020225

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2756
    const/16 v3, 0x8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    const v4, 0x7f0800e2

    invoke-interface {p1, v5, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020234

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2759
    :cond_ae
    const/4 v3, 0x6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v4, 0x7f0800ce

    invoke-interface {p1, v5, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020221

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2760
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v4, "- FV03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_18a

    .line 2761
    const/16 v3, 0x9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    const v4, 0x7f0800e3

    invoke-interface {p1, v5, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020217

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2762
    :goto_d9
    const/4 v3, 0x3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v4, 0x7f0800d3

    invoke-interface {p1, v5, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020240

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2763
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    invoke-interface {p1, v5, v6, v1, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_f

    .line 2768
    :cond_f4
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v4, "- FV03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_120

    .line 2770
    const/16 v3, 0x1b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v4, 0x7f0800da

    invoke-interface {p1, v5, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020227

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2771
    const/16 v3, 0x8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    const v4, 0x7f0800e2

    invoke-interface {p1, v5, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020234

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2774
    :cond_120
    const/4 v3, 0x6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v4, 0x7f0800ce

    invoke-interface {p1, v5, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020221

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2775
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    const v3, 0x7f0800cf

    invoke-interface {p1, v5, v9, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020244

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2777
    const/4 v3, 0x3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const v4, 0x7f0800d3

    invoke-interface {p1, v5, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020240

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2778
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v4, "FV04"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_16d

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v4, "- FV09"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_16d

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v4, "- FV03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_188

    .line 2779
    :cond_16d
    const/4 v3, 0x4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    const v4, 0x7f0800d4

    invoke-interface {p1, v5, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020231

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2780
    :goto_17d
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    invoke-interface {p1, v5, v6, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_7e

    :cond_188
    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_17d

    .end local v0           #index:I
    .restart local v1       #index:I
    :cond_18a
    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_d9
.end method

.method private setProgressUnit(I)V
    .registers 3
    .parameter "aValue"

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    if-nez v0, :cond_5

    .line 2921
    :goto_4
    return-void

    .line 2920
    :cond_5
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setProgressUnit(I)V

    goto :goto_4
.end method

.method private setValueProgressing(ILjava/lang/String;)V
    .registers 4
    .parameter "aValue"
    .parameter "message"

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    if-nez v0, :cond_5

    .line 2944
    :goto_4
    return-void

    .line 2940
    :cond_5
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    .line 2941
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, p2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2943
    :cond_12
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setProgress(I)V

    goto :goto_4
.end method

.method private sort(I)V
    .registers 3
    .parameter "sortField"

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getSortField()I

    move-result v0

    if-eq v0, p1, :cond_21

    .line 2788
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    if-nez v0, :cond_12

    .line 2789
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    .line 2791
    :cond_12
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v0, p0, p1}, Lcom/infraware/common/config/RuntimeConfig;->setSortField(Landroid/content/Context;I)V

    .line 2793
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/file/FileListAdapter;->setSortField(I)V

    .line 2794
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->setAscending()V

    .line 2797
    :cond_21
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->sortFileList()V

    .line 2798
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    .line 2799
    return-void
.end method

.method private startProgressing(IILjava/lang/String;)V
    .registers 7
    .parameter "operation"
    .parameter "maxValue"
    .parameter "title"

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    if-eqz v0, :cond_a

    .line 3005
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, p2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setMax(I)V

    .line 3086
    :goto_9
    return-void

    .line 3009
    :cond_a
    iput-object p3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strProgressDialogTitle:Ljava/lang/String;

    .line 3010
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nOperation:I

    .line 3012
    new-instance v0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    .line 3013
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, p3}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3014
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3015
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, p2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setMax(I)V

    .line 3016
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setProgressStyle(I)V

    .line 3017
    const-string v0, "PROGRESS"

    const-string v1, "OfficeFileManager"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4e

    .line 3019
    :cond_3d
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/infraware/polarisoffice/OfficeFileManager$20;

    invoke-direct {v2, p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager$20;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    invoke-virtual {v0, v1, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3045
    :cond_4e
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$21;

    invoke-direct {v1, p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager$21;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3071
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$22;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$22;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3083
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 3084
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->show()V

    .line 3085
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_9
.end method

.method private startProgressing(Ljava/lang/String;)V
    .registers 6
    .parameter "aTitle"

    .prologue
    const/4 v3, 0x0

    .line 2947
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    if-eqz v0, :cond_6

    .line 3000
    :goto_5
    return-void

    .line 2950
    :cond_6
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strProgressDialogTitle:Ljava/lang/String;

    .line 2952
    new-instance v0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    .line 2953
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2954
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setProgressStyle(I)V

    .line 2955
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/infraware/polarisoffice/OfficeFileManager$17;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$17;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2972
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$18;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$18;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2989
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$19;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$19;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2997
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2998
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->show()V

    .line 2999
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_5
.end method

.method private stopProgressing()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3089
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->setUpdateState(Z)V

    .line 3090
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3092
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_21

    .line 3094
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3095
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3098
    :cond_21
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    if-nez v0, :cond_26

    .line 3106
    :cond_25
    :goto_25
    return-void

    .line 3101
    :cond_26
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->dismiss()V

    .line 3102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    .line 3104
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 3105
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->setSelectMode(I)V

    goto :goto_25
.end method

.method private unzip(Lcom/infraware/filemanager/file/FileListItem;Z)V
    .registers 6
    .parameter "fileItem"
    .parameter "moveToFolder"

    .prologue
    .line 2477
    if-eqz p1, :cond_1b

    .line 2479
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v1

    .line 2480
    .local v1, locale:I
    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getANSICharSet(I)Ljava/lang/String;

    move-result-object v0

    .line 2482
    .local v0, charSet:Ljava/lang/String;
    new-instance v2, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;Lcom/infraware/filemanager/file/FileListItem;ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->unzipProgressHandler:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    .line 2484
    .end local v0           #charSet:Ljava/lang/String;
    .end local v1           #locale:I
    :cond_1b
    return-void
.end method

.method private uploadWebStorage()V
    .registers 9

    .prologue
    .line 2332
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v4

    .line 2333
    .local v4, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2335
    const v5, 0x7f08030e

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FV04"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_24

    .line 2336
    const v5, 0x7f0800bf

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2362
    :cond_23
    :goto_23
    return-void

    .line 2338
    :cond_24
    const v5, 0x7f0800be

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_23

    .line 2342
    :cond_2f
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 2344
    const v5, 0x7f080068

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_23

    .line 2348
    :cond_40
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v2

    .line 2350
    .local v2, manager:Lcom/infraware/filemanager/manager/FileManager;
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/infraware/filemanager/file/FileSelectedList;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/infraware/filemanager/file/FileSelectedList;->setMode(I)V

    .line 2353
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, v5}, Lcom/infraware/filemanager/manager/FileManager;->setItemList(Lcom/infraware/filemanager/file/FileSelectedList;)V

    .line 2355
    new-instance v1, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v1, v5, v6, v7}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 2356
    .local v1, handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPostItem:Lcom/infraware/filemanager/file/FileListItem;

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v5, v6}, Lcom/infraware/filemanager/manager/FileManager;->upload(Lcom/infraware/filemanager/async/FileAsyncControlHandler;Lcom/infraware/filemanager/file/FileListItem;Z)I

    move-result v3

    .line 2357
    .local v3, result:I
    if-eqz v3, :cond_23

    .line 2359
    invoke-static {p0, v3}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2360
    .local v0, errMessage:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_23
.end method


# virtual methods
.method public deleteAPKFile()V
    .registers 8

    .prologue
    .line 3127
    const-string v4, "/mnt/sdcard/.polarisOffice/polarisTemp"

    const-string v5, "polarisTemp"

    const-string v6, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v4, v5, v6, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3128
    .local v3, tempPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3129
    .local v2, tempFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 3130
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3131
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    array-length v4, v0

    if-lt v1, v4, :cond_1e

    .line 3139
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_1d
    return-void

    .line 3132
    .restart local v0       #files:[Ljava/io/File;
    .restart local v1       #i:I
    :cond_1e
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 3133
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 3134
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3131
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 2424
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2425
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2426
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2427
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2428
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2429
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2430
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2431
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2432
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2433
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2434
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2435
    return-object v0
.end method

.method public isAlreadyExist(Ljava/lang/String;Lcom/infraware/filemanager/file/FileListItem;)Z
    .registers 9
    .parameter "newName"
    .parameter "item"

    .prologue
    .line 1712
    const/4 v1, 0x0

    .line 1713
    .local v1, nFileType:I
    const/4 v3, 0x0

    .line 1714
    .local v3, strFilePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1716
    .local v2, strFileName:Ljava/lang/String;
    if-eqz p2, :cond_6e

    .line 1718
    iget v4, p2, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_67

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getShowExt()Z

    move-result v0

    .line 1719
    .local v0, isShowExt:Z
    :goto_e
    iget v1, p2, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1720
    invoke-virtual {p2}, Lcom/infraware/filemanager/file/FileListItem;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1721
    if-nez v0, :cond_69

    iget-boolean v4, p2, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v4, :cond_69

    iget-object v4, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v4, :cond_69

    iget-object v4, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_69

    .line 1722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1733
    .end local v0           #isShowExt:Z
    :goto_43
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_74

    .line 1734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1738
    :goto_5c
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    invoke-virtual {v4, v3, v1, v5}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    return v4

    .line 1718
    :cond_67
    const/4 v0, 0x0

    goto :goto_e

    .line 1724
    .restart local v0       #isShowExt:Z
    :cond_69
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    .line 1728
    .end local v0           #isShowExt:Z
    :cond_6e
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    .line 1729
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    .line 1730
    move-object v2, p1

    goto :goto_43

    .line 1736
    :cond_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5c
.end method

.method public isSdCardAction(Ljava/lang/String;)V
    .registers 6
    .parameter "nowAction"

    .prologue
    .line 2440
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 2471
    :cond_5
    :goto_5
    return-void

    .line 2443
    :cond_6
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2444
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->onSDCardRemoved()V

    .line 2447
    :cond_17
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2448
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onMediaDBBroadCast()V

    .line 2450
    :cond_22
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2451
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_35

    .line 2453
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->closeContextMenu()V

    .line 2454
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->initState()V

    .line 2457
    :cond_35
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    if-eqz v2, :cond_4d

    .line 2459
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2460
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 2461
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->closeContextMenu()V

    .line 2464
    :cond_4d
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    .line 2466
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 2467
    .local v1, parent:Landroid/app/Activity;
    instance-of v2, v1, Lcom/infraware/polarisoffice/OfficeMainActivity;

    if-eqz v2, :cond_5

    move-object v2, v1

    .line 2468
    check-cast v2, Lcom/infraware/polarisoffice/OfficeMainActivity;

    iget v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setBtnCreate(I)V

    .line 2469
    check-cast v1, Lcom/infraware/polarisoffice/OfficeMainActivity;

    .end local v1           #parent:Landroid/app/Activity;
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setBtnSearch(I)V

    goto :goto_5
.end method

.method protected makeRootList()V
    .registers 2

    .prologue
    .line 2418
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(I)V

    .line 2419
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->makeRootList()V

    .line 2420
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 28
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 955
    invoke-super/range {p0 .. p3}, Lcom/infraware/filemanager/file/FileBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 957
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 959
    packed-switch p1, :pswitch_data_4ba

    .line 1201
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 961
    :pswitch_c
    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    if-eqz p3, :cond_b

    .line 963
    const-string v21, "key_template_file"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 965
    .local v8, fileName:Ljava/lang/String;
    const/16 v21, 0x2e

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 966
    .local v10, idx_exe:I
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 968
    .local v6, ext:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-class v21, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 969
    .local v11, intent:Landroid/content/Intent;
    const-string v21, "INTCMD"

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 970
    const-string v21, "key_new_file"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/infraware/common/util/FileUtils;->decideFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    const-string v21, "key_template_file"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-string v21, "key_caller_pkg_name"

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    const/16 v21, 0x1002

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b

    .line 978
    .end local v6           #ext:Ljava/lang/String;
    .end local v8           #fileName:Ljava/lang/String;
    .end local v10           #idx_exe:I
    .end local v11           #intent:Landroid/content/Intent;
    :pswitch_77
    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_cd

    if-eqz p3, :cond_cd

    .line 980
    const-string v21, "key_filename"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 981
    .local v20, strPath:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-class v21, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 982
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v21, "INTCMD"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    const-string v21, "key_filename"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const-string v21, "key_caller_pkg_name"

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    const/16 v21, 0x1002

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    .line 988
    invoke-static/range {p0 .. p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v16

    .line 989
    .local v16, recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/recent/RecentFileManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 993
    .end local v11           #intent:Landroid/content/Intent;
    .end local v16           #recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    .end local v20           #strPath:Ljava/lang/String;
    :cond_cd
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    goto/16 :goto_b

    .line 997
    :pswitch_d2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11a

    .line 999
    new-instance v5, Lcom/infraware/common/account/ListAccountInfo;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/infraware/common/account/ListAccountInfo;-><init>(Z)V

    .line 1000
    .local v5, accountsList:Lcom/infraware/common/account/ListAccountInfo;
    invoke-virtual {v5}, Lcom/infraware/common/account/ListAccountInfo;->getAccountValue()Ljava/util/List;

    move-result-object v4

    .line 1001
    .local v4, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/common/account/AccountInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_11a

    .line 1003
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_111

    .line 1006
    const/16 v21, 0x0

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->setStorageType(ILjava/lang/String;)V

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    goto/16 :goto_b

    .line 1013
    :cond_111
    const/4 v9, 0x0

    .local v9, i:I
    :goto_112
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v9, v0, :cond_122

    .line 1036
    .end local v4           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/common/account/AccountInfo;>;"
    .end local v5           #accountsList:Lcom/infraware/common/account/ListAccountInfo;
    .end local v9           #i:I
    :cond_11a
    :goto_11a
    :pswitch_11a
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPivotLock()V

    goto/16 :goto_b

    .line 1015
    .restart local v4       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/common/account/AccountInfo;>;"
    .restart local v5       #accountsList:Lcom/infraware/common/account/ListAccountInfo;
    .restart local v9       #i:I
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/infraware/common/account/AccountInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/infraware/common/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_143

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPivotLock()V

    goto :goto_11a

    .line 1023
    :cond_143
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_152

    .line 1025
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->finish()V

    goto/16 :goto_b

    .line 1013
    :cond_152
    add-int/lit8 v9, v9, 0x1

    goto :goto_112

    .line 1041
    .end local v4           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/common/account/AccountInfo;>;"
    .end local v5           #accountsList:Lcom/infraware/common/account/ListAccountInfo;
    .end local v9           #i:I
    :pswitch_155
    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    if-eqz p3, :cond_b

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v21

    if-nez v21, :cond_1e3

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getBaseContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0800b7

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getListView()Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1047
    .local v14, itemView:Landroid/view/View;
    if-eqz v14, :cond_1d5

    .line 1049
    const/high16 v21, 0x7f09

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/infraware/filemanager/file/FileListItem;

    .line 1051
    .local v13, item:Lcom/infraware/filemanager/file/FileListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemIdx:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/infraware/filemanager/file/FileListAdapter;->getPosition(Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemTop:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .end local v13           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_1d5
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setSelectMode(I)V

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->closeOptionsMenu()V

    goto/16 :goto_b

    .line 1060
    .end local v14           #itemView:Landroid/view/View;
    :cond_1e3
    const-string v21, "key_new_folder"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1062
    .restart local v20       #strPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1063
    .local v7, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 1064
    .restart local v13       #item:Lcom/infraware/filemanager/file/FileListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_229

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/infraware/filemanager/file/FileSelectedList;->getMode()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2b1

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getBaseContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0800b3

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1074
    :cond_229
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setUpdateState(Z)V

    .line 1075
    const/4 v12, 0x0

    .line 1077
    .local v12, isExist:Z
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v9, v0, :cond_257

    .line 1093
    :goto_242
    if-eqz v12, :cond_2b1

    .line 1095
    const/16 v21, 0x1005

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a6

    .line 1096
    const/16 v21, 0xc9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->showDialog(I)V

    goto/16 :goto_b

    .line 1079
    :cond_257
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v15

    .line 1081
    .local v15, manager:Lcom/infraware/filemanager/manager/FileManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v13

    .line 1082
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1083
    .local v19, strName:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2a3

    .line 1085
    new-instance v21, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct/range {v21 .. v21}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1088
    const/4 v12, 0x1

    .line 1089
    goto :goto_242

    .line 1077
    :cond_2a3
    add-int/lit8 v9, v9, 0x1

    goto :goto_234

    .line 1098
    .end local v15           #manager:Lcom/infraware/filemanager/manager/FileManager;
    .end local v19           #strName:Ljava/lang/String;
    :cond_2a6
    const/16 v21, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->showDialog(I)V

    goto/16 :goto_b

    .line 1104
    .end local v9           #i:I
    .end local v12           #isExist:Z
    :cond_2b1
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1105
    .restart local v7       #file:Ljava/io/File;
    new-instance v13, Lcom/infraware/filemanager/file/FileListItem;

    .end local v13           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v13}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1106
    .restart local v13       #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1107
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 1109
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationPaste(Lcom/infraware/filemanager/file/FileListItem;Z)V

    goto/16 :goto_b

    .line 1113
    .end local v7           #file:Ljava/io/File;
    .end local v13           #item:Lcom/infraware/filemanager/file/FileListItem;
    .end local v20           #strPath:Ljava/lang/String;
    :pswitch_2d8
    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    if-eqz p3, :cond_b

    .line 1115
    const-string v21, "key_select_files"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 1116
    .local v18, selectedFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 1119
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2f6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v9, v0, :cond_352

    .line 1129
    const/4 v12, 0x0

    .line 1130
    .restart local v12       #isExist:Z
    const/4 v9, 0x0

    :goto_300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v9, v0, :cond_385

    .line 1143
    :goto_30e
    new-instance v21, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct/range {v21 .. v21}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1147
    if-eqz v12, :cond_3d5

    .line 1149
    const/16 v21, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1121
    .end local v12           #isExist:Z
    :cond_352
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1122
    .restart local v7       #file:Ljava/io/File;
    new-instance v13, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v13}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1123
    .restart local v13       #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1124
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 1119
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2f6

    .line 1132
    .end local v7           #file:Ljava/io/File;
    .end local v13           #item:Lcom/infraware/filemanager/file/FileListItem;
    .restart local v12       #isExist:Z
    :cond_385
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v15

    .line 1134
    .restart local v15       #manager:Lcom/infraware/filemanager/manager/FileManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v13

    .line 1135
    .restart local v13       #item:Lcom/infraware/filemanager/file/FileListItem;
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1136
    .restart local v19       #strName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3d1

    .line 1138
    const/4 v12, 0x1

    .line 1139
    goto/16 :goto_30e

    .line 1130
    :cond_3d1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_300

    .line 1154
    .end local v13           #item:Lcom/infraware/filemanager/file/FileListItem;
    .end local v15           #manager:Lcom/infraware/filemanager/manager/FileManager;
    .end local v19           #strName:Ljava/lang/String;
    :cond_3d5
    const/16 v21, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1159
    .end local v9           #i:I
    .end local v12           #isExist:Z
    .end local v18           #selectedFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3ec
    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    if-eqz p3, :cond_b

    .line 1161
    const-string v21, "key_new_folder"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1163
    .restart local v20       #strPath:Ljava/lang/String;
    new-instance v21, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct/range {v21 .. v21}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1166
    const/4 v12, 0x0

    .line 1167
    .restart local v12       #isExist:Z
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v9, v0, :cond_434

    .line 1180
    :goto_427
    if-eqz v12, :cond_46c

    .line 1181
    const/16 v21, 0x12d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->showDialog(I)V

    goto/16 :goto_b

    .line 1169
    :cond_434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v13

    .line 1171
    .restart local v13       #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v15

    .line 1172
    .restart local v15       #manager:Lcom/infraware/filemanager/manager/FileManager;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1173
    .restart local v19       #strName:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_469

    .line 1175
    const/4 v12, 0x1

    .line 1176
    goto :goto_427

    .line 1167
    :cond_469
    add-int/lit8 v9, v9, 0x1

    goto :goto_419

    .line 1183
    .end local v13           #item:Lcom/infraware/filemanager/file/FileListItem;
    .end local v15           #manager:Lcom/infraware/filemanager/manager/FileManager;
    .end local v19           #strName:Ljava/lang/String;
    :cond_46c
    const/16 v21, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oActionItem:Lcom/infraware/filemanager/file/FileListItem;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1187
    .end local v9           #i:I
    .end local v12           #isExist:Z
    .end local v20           #strPath:Ljava/lang/String;
    :pswitch_483
    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_4aa

    if-eqz p3, :cond_4aa

    .line 1189
    const-string v21, "key_search_key"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1190
    .local v17, searchKey:Ljava/lang/String;
    if-eqz v17, :cond_4aa

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_4aa

    .line 1191
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationSearch(ILjava/lang/String;)V

    .line 1193
    .end local v17           #searchKey:Ljava/lang/String;
    :cond_4aa
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/infraware/polarisoffice/OfficeFileManager;->m_bSearchActivity:Z

    goto/16 :goto_b

    .line 1198
    :pswitch_4b4
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    goto/16 :goto_b

    .line 959
    nop

    :pswitch_data_4ba
    .packed-switch 0x1000
        :pswitch_77
        :pswitch_b
        :pswitch_11a
        :pswitch_b
        :pswitch_2d8
        :pswitch_155
        :pswitch_155
        :pswitch_3ec
        :pswitch_4b4
        :pswitch_d2
        :pswitch_b
        :pswitch_b
        :pswitch_11a
        :pswitch_483
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onAttachFile(Ljava/lang/String;)V
    .registers 16
    .parameter "fileName"

    .prologue
    .line 1375
    const/16 v12, 0x2e

    invoke-virtual {p1, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1378
    .local v3, idx_exe:I
    if-gez v3, :cond_41

    .line 1379
    const-string v2, ""

    .line 1383
    .local v2, ext:Ljava/lang/String;
    :goto_a
    iget-object v12, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v13, "- FV02"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_48

    .line 1385
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1387
    .local v7, strModelName:Ljava/lang/String;
    const-string v12, "LG-LU6200"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_26

    const-string v12, "LG-SU640"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 1389
    :cond_26
    const-string v12, "dcf"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_36

    const-string v12, "odf"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 1391
    :cond_36
    const v12, 0x7f080078

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 1466
    .end local v7           #strModelName:Ljava/lang/String;
    :goto_40
    return-void

    .line 1381
    .end local v2           #ext:Ljava/lang/String;
    :cond_41
    add-int/lit8 v12, v3, 0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ext:Ljava/lang/String;
    goto :goto_a

    .line 1397
    :cond_48
    invoke-static {v2}, Lcom/infraware/filemanager/porting/DRM;->isDRMExt(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_69

    .line 1399
    invoke-static {}, Lcom/infraware/filemanager/porting/DRM;->getInstance()Lcom/infraware/filemanager/porting/DRM;

    move-result-object v0

    .line 1400
    .local v0, drm:Lcom/infraware/filemanager/porting/DRM;
    invoke-virtual {v0, p1, p0}, Lcom/infraware/filemanager/porting/DRM;->isDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v12

    if-lez v12, :cond_69

    .line 1402
    invoke-virtual {v0}, Lcom/infraware/filemanager/porting/DRM;->isActionSupported()Z

    move-result v12

    if-nez v12, :cond_69

    .line 1404
    const v12, 0x7f080078

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_40

    .line 1410
    .end local v0           #drm:Lcom/infraware/filemanager/porting/DRM;
    :cond_69
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v4, intent:Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/infraware/common/util/Utils;->getMimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/infraware/common/define/CMDefine$MimeInfo;

    move-result-object v5

    .line 1413
    .local v5, mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    if-nez v5, :cond_81

    .line 1415
    const v12, 0x7f0800b2

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_40

    .line 1419
    :cond_81
    iget v12, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaType:I

    if-eqz v12, :cond_142

    .line 1420
    const-string v12, "android.intent.extra.STREAM"

    iget-object v13, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1424
    :goto_8c
    iget-object v12, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    if-nez v12, :cond_a5

    .line 1425
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "application/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    .line 1427
    :cond_a5
    iget-object v12, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    const-string v13, "text/plain"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_db

    .line 1429
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x7d0

    invoke-static {v12, p1, v13}, Lcom/infraware/common/util/FileUtils;->getTextFromFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1430
    .local v8, text:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->beAttatchTextFileToMMSBody()Z

    move-result v12

    if-eqz v12, :cond_ca

    .line 1431
    const-string v12, "sms_body"

    invoke-virtual {v4, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    const-string v12, "PolarisOfficeMode"

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1434
    :cond_ca
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSendTextFileAsExtraText(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_db

    .line 1435
    const-string v12, "android.intent.extra.TEXT"

    invoke-virtual {v4, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    const-string v12, "isSendToText"

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1440
    .end local v8           #text:Ljava/lang/String;
    :cond_db
    const-string v12, "fromAppName"

    const-string v13, "PolarisOffice"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1442
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v12

    if-eqz v12, :cond_116

    .line 1443
    iget-object v12, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1444
    .local v6, nPos:I
    iget-object v12, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1445
    .local v10, type:Ljava/lang/String;
    if-eqz v10, :cond_116

    const-string v12, "video"

    invoke-virtual {v10, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_116

    .line 1446
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    .line 1450
    .end local v6           #nPos:I
    .end local v10           #type:Ljava/lang/String;
    :cond_116
    iget-object v12, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    iget-object v12, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v13, "- FV09"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_14b

    .line 1453
    const v12, 0x7f080283

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1457
    .local v9, title:Ljava/lang/CharSequence;
    :goto_12c
    invoke-static {v4, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    .line 1460
    .local v11, wrapperIntent:Landroid/content/Intent;
    :try_start_130
    invoke-virtual {p0, v11}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivity(Landroid/content/Intent;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_133} :catch_135

    goto/16 :goto_40

    .line 1462
    :catch_135
    move-exception v1

    .line 1464
    .local v1, e:Ljava/lang/Exception;
    const v12, 0x7f0800b2

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1422
    .end local v1           #e:Ljava/lang/Exception;
    .end local v9           #title:Ljava/lang/CharSequence;
    .end local v11           #wrapperIntent:Landroid/content/Intent;
    :cond_142
    const-string v12, "android.intent.extra.STREAM"

    iget-object v13, v5, Lcom/infraware/common/define/CMDefine$MimeInfo;->fileUri:Landroid/net/Uri;

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_8c

    .line 1455
    :cond_14b
    const v12, 0x7f0800cb

    invoke-virtual {p0, v12}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #title:Ljava/lang/CharSequence;
    goto :goto_12c
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 4
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 1206
    invoke-static {}, Lcom/infraware/polarisoffice/MyApplication;->isButtonEnable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1232
    :cond_7
    :goto_7
    return-void

    .line 1209
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 1210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 1229
    :pswitch_13
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onButtonClick(Landroid/view/View;)V

    goto :goto_7

    .line 1213
    :pswitch_17
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1214
    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationMove(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_7

    .line 1217
    :pswitch_21
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1218
    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationCopy(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_7

    .line 1221
    :pswitch_2b
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1222
    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationDelete(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_7

    .line 1225
    :pswitch_35
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1226
    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationDownload(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_7

    .line 1210
    nop

    :pswitch_data_40
    .packed-switch 0x7f0c00ab
        :pswitch_35
        :pswitch_13
        :pswitch_13
        :pswitch_17
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method

.method public onCloseThread()V
    .registers 2

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1705
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1707
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oWebProgress:Landroid/app/ProgressDialog;

    .line 1708
    return-void
.end method

.method public onConfirmCreateFolder(Ljava/lang/String;)V
    .registers 14
    .parameter "name"

    .prologue
    const v11, 0x7f0800bd

    const/4 v10, 0x3

    .line 1470
    iget-object v8, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5b

    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    .line 1471
    .local v6, path:Ljava/lang/String;
    :goto_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1473
    .local v4, newFolderName:Ljava/lang/String;
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1474
    .local v5, osVer:Ljava/lang/String;
    const-string v8, "2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3b

    .line 1476
    const-string v8, "/mnt"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3b

    .line 1477
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1480
    :cond_3b
    iget v8, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_ac

    .line 1481
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1482
    .local v3, newFolder:Ljava/io/File;
    const/4 v1, 0x0

    .line 1483
    .local v1, errorMessage:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a0

    .line 1485
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 1486
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    .line 1505
    :goto_55
    if-eqz v1, :cond_5a

    .line 1506
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 1513
    .end local v1           #errorMessage:Ljava/lang/String;
    .end local v3           #newFolder:Ljava/io/File;
    :cond_5a
    :goto_5a
    return-void

    .line 1470
    .end local v4           #newFolderName:Ljava/lang/String;
    .end local v5           #osVer:Ljava/lang/String;
    .end local v6           #path:Ljava/lang/String;
    :cond_5b
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    .line 1489
    .restart local v1       #errorMessage:Ljava/lang/String;
    .restart local v3       #newFolder:Ljava/io/File;
    .restart local v4       #newFolderName:Ljava/lang/String;
    .restart local v5       #osVer:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    :cond_71
    const/4 v2, 0x0

    .line 1491
    .local v2, freeBlock:I
    :try_start_72
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v7, sf:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_7e} :catch_8a

    move-result v2

    .line 1496
    .end local v7           #sf:Landroid/os/StatFs;
    :goto_7f
    if-nez v2, :cond_94

    .line 1497
    invoke-virtual {p0, v11}, Lcom/infraware/polarisoffice/OfficeFileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    .line 1493
    :catch_8a
    move-exception v0

    .line 1494
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v11}, Lcom/infraware/polarisoffice/OfficeFileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7f

    .line 1499
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_94
    const v8, 0x7f0800b2

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/OfficeFileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    .line 1503
    .end local v2           #freeBlock:I
    :cond_a0
    const v8, 0x7f0800b5

    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/OfficeFileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    .line 1509
    .end local v1           #errorMessage:Ljava/lang/String;
    .end local v3           #newFolder:Ljava/io/File;
    :cond_ac
    iget v8, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_b5

    .line 1510
    iget v8, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    if-ne v8, v10, :cond_5a

    .line 1511
    :cond_b5
    const/4 v8, 0x0

    invoke-direct {p0, v10, v8, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method public onConfirmDelete()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1567
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 1569
    new-instance v0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v4, v2}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 1570
    .local v0, fileAsyncControlHandler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    new-instance v1, Lcom/infraware/filemanager/async/FileAsyncController;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/infraware/filemanager/async/FileAsyncController;-><init>(ILcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/async/FileAsyncControlHandler;Z)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    .line 1571
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    invoke-virtual {v1}, Lcom/infraware/filemanager/async/FileAsyncController;->start()V

    .line 1572
    return-void
.end method

.method public onConfirmRename(Lcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;Z)V
    .registers 13
    .parameter "item"
    .parameter "newName"
    .parameter "isForceChangeExt"

    .prologue
    const/4 v8, 0x1

    .line 1517
    iget v7, p1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-ne v7, v8, :cond_3e

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getShowExt()Z

    move-result v4

    .line 1518
    .local v4, isShowExt:Z
    :goto_9
    if-nez p3, :cond_40

    .line 1520
    const-string v6, ""

    .line 1522
    .local v6, newExt:Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1523
    .local v3, index:I
    if-ltz v3, :cond_1b

    .line 1524
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1526
    :cond_1b
    if-eqz v4, :cond_40

    iget-object v7, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v7, :cond_40

    iget-object v7, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_40

    iget-object v7, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_40

    .line 1528
    new-instance v7, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-direct {v7, p0, p1}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    iput-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 1529
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v7, p2}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->renameExtDlg(Ljava/lang/String;)V

    .line 1563
    .end local v3           #index:I
    .end local v6           #newExt:Ljava/lang/String;
    :goto_3d
    return-void

    .line 1517
    .end local v4           #isShowExt:Z
    :cond_3e
    const/4 v4, 0x0

    goto :goto_9

    .line 1535
    .restart local v4       #isShowExt:Z
    :cond_40
    iget v7, p1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-eq v7, v8, :cond_71

    .line 1537
    move-object v1, p2

    .line 1538
    .local v1, fileName:Ljava/lang/String;
    if-nez v4, :cond_6c

    iget-object v7, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v7, :cond_6c

    iget-object v7, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6c

    .line 1539
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1541
    :cond_6c
    const/4 v7, 0x4

    invoke-direct {p0, v7, p1, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(ILcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)V

    goto :goto_3d

    .line 1545
    .end local v1           #fileName:Ljava/lang/String;
    :cond_71
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v7}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 1546
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v7, p1}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 1548
    invoke-static {}, Lcom/infraware/filemanager/manager/FileManager;->getInstance()Lcom/infraware/filemanager/manager/FileManager;

    move-result-object v5

    .line 1549
    .local v5, manager:Lcom/infraware/filemanager/manager/FileManager;
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v5, v7}, Lcom/infraware/filemanager/manager/FileManager;->setItemList(Lcom/infraware/filemanager/file/FileSelectedList;)V

    .line 1551
    invoke-virtual {v5, p2, v4}, Lcom/infraware/filemanager/manager/FileManager;->rename(Ljava/lang/String;Z)I

    move-result v2

    .line 1552
    .local v2, fmResult:I
    if-nez v2, :cond_93

    .line 1554
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateMedia()V

    .line 1562
    :goto_8d
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v7}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    goto :goto_3d

    .line 1559
    :cond_93
    invoke-static {p0, v2}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, errMsg:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_8d
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 624
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    if-nez v1, :cond_1d

    .line 625
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 629
    .local v0, fileItem:Lcom/infraware/filemanager/file/FileListItem;
    :goto_15
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_72

    .line 671
    :cond_1c
    :goto_1c
    :pswitch_1c
    return v3

    .line 627
    .end local v0           #fileItem:Lcom/infraware/filemanager/file/FileListItem;
    :cond_1d
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    .restart local v0       #fileItem:Lcom/infraware/filemanager/file/FileListItem;
    goto :goto_15

    .line 631
    :pswitch_20
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationAddToFavorite(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1c

    .line 634
    :pswitch_24
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 635
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationMove(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1c

    .line 638
    :pswitch_2e
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 639
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationCopy(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1c

    .line 642
    :pswitch_38
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 643
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationDelete(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1c

    .line 646
    :pswitch_42
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 647
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationDownload(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1c

    .line 651
    :pswitch_4c
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 652
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationRename(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1c

    .line 655
    :pswitch_56
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 656
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationExtract(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1c

    .line 659
    :pswitch_60
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationSend(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1c

    .line 662
    :pswitch_64
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationProperty(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_1c

    .line 665
    :pswitch_68
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->setAllSelected(Z)V

    goto :goto_1c

    .line 668
    :pswitch_6c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setAllSelected(Z)V

    goto :goto_1c

    .line 629
    nop

    :pswitch_data_72
    .packed-switch 0x7f0c0308
        :pswitch_20
        :pswitch_24
        :pswitch_2e
        :pswitch_1c
        :pswitch_42
        :pswitch_38
        :pswitch_4c
        :pswitch_4c
        :pswitch_56
        :pswitch_60
        :pswitch_64
        :pswitch_68
        :pswitch_6c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v7, 0x7f08030e

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    .line 154
    move-object v0, p0

    .line 155
    .local v0, activity:Landroid/app/Activity;
    :goto_13
    if-nez v0, :cond_a6

    .line 161
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v7, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 162
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/infraware/polarisoffice/OfficeFileManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->registerForContextMenu(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 167
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 168
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_75

    .line 170
    const-string v7, "key_storage_type"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 171
    .local v6, storageType:I
    const-string v7, "key_login_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, loginId:Ljava/lang/String;
    invoke-virtual {p0, v6, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->setStorageType(ILjava/lang/String;)V

    .line 175
    if-ne v6, v10, :cond_59

    .line 177
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v8, "- FV02"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_ae

    .line 178
    const v7, 0x7f0800fc

    iput v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nTitleId:I

    .line 182
    :goto_54
    iget v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nTitleId:I

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/OfficeFileManager;->setTitle(I)V

    .line 185
    :cond_59
    const-string v7, "key_storage_path"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, path:Ljava/lang/String;
    if-eqz v4, :cond_75

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_75

    .line 188
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->setCurPath(Ljava/lang/String;)V

    .line 190
    const-string v7, "key_is_root"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 191
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->setRootPath(Ljava/lang/String;)V

    .line 195
    .end local v3           #loginId:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #storageType:I
    :cond_75
    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/OfficeFileManager;->setSelectMode(I)V

    .line 197
    iput v10, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nInternalMode:I

    .line 198
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    .line 200
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v7, p0}, Lcom/infraware/common/config/RuntimeConfig;->getSortField(Landroid/content/Context;)I

    move-result v5

    .line 201
    .local v5, sortField:I
    if-nez v5, :cond_8e

    .line 203
    const/4 v5, 0x1

    .line 204
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v7, p0, v5}, Lcom/infraware/common/config/RuntimeConfig;->setSortField(Landroid/content/Context;I)V

    .line 207
    :cond_8e
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v7, v5}, Lcom/infraware/filemanager/file/FileListAdapter;->setSortField(I)V

    .line 208
    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v7}, Lcom/infraware/filemanager/file/FileListAdapter;->setAscending()V

    .line 210
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPivotLock()V

    .line 212
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->deleteAPKFile()V

    .line 214
    new-instance v7, Lcom/infraware/polarisoffice/OfficeFileManager$3;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$3;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    iput-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_runAction:Ljava/lang/Runnable;

    .line 261
    return-void

    .line 157
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #sortField:I
    :cond_a6
    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oRootContext:Landroid/content/Context;

    .line 158
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto/16 :goto_13

    .line 181
    .restart local v1       #extras:Landroid/os/Bundle;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #loginId:Ljava/lang/String;
    .restart local v6       #storageType:I
    :cond_ae
    const v7, 0x7f08007b

    iput v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nTitleId:I

    goto :goto_54
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v11, 0x7f0c030c

    const v10, 0x7f0c0308

    const v9, 0x7f0800cc

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 528
    move-object v2, p3

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 529
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemTop:Ljava/util/HashMap;

    iget v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 533
    .local v0, fileItem:Lcom/infraware/filemanager/file/FileListItem;
    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 536
    iget v4, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-nez v4, :cond_45

    .line 619
    :cond_44
    :goto_44
    return-void

    .line 539
    :cond_45
    iget-boolean v4, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v4, :cond_53

    iget-object v4, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_44

    .line 542
    :cond_53
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 544
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 545
    .local v1, inflater:Landroid/view/MenuInflater;
    const v4, 0x7f0b0006

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 547
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getSelectMode()I

    move-result v4

    if-eqz v4, :cond_b6

    .line 549
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_44

    .line 552
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 553
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v3

    .line 555
    .local v3, itemCount:I
    add-int/lit8 v3, v3, -0x1

    .line 557
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v4

    if-eq v4, v3, :cond_96

    .line 558
    const v4, 0x7f0c0313

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 559
    :cond_96
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v4

    if-eqz v4, :cond_a8

    .line 560
    const v4, 0x7f0c0314

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 615
    .end local v3           #itemCount:I
    :cond_a8
    :goto_a8
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->isSdcard()Z

    move-result v4

    if-nez v4, :cond_44

    .line 617
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_44

    .line 564
    :cond_b6
    iget-boolean v4, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v4, :cond_10b

    .line 565
    iget-object v4, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 569
    :goto_bf
    iget v4, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-ne v4, v7, :cond_15f

    .line 571
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v5, "- FV03"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_d4

    .line 572
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 574
    :cond_d4
    const v4, 0x7f0c0309

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 575
    const v4, 0x7f0c030a

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 576
    const v4, 0x7f0c030d

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 577
    const v4, 0x7f0c0312

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 579
    iget-boolean v4, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v4, :cond_117

    .line 581
    const v4, 0x7f0c030f

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a8

    .line 567
    :cond_10b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_bf

    .line 585
    :cond_117
    const v4, 0x7f0c030e

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 586
    iget-object v4, v0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    const-string v5, "zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 588
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 589
    const v4, 0x7f0c0310

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 591
    :cond_13c
    const v4, 0x7f0c0311

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 592
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v5, "- FV09"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a8

    .line 593
    const v4, 0x7f0c0311

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f080284

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_a8

    .line 598
    :cond_15f
    iget-boolean v4, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v4, :cond_18c

    .line 599
    iget-object v4, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 603
    :goto_168
    const v4, 0x7f0c030d

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 604
    const v4, 0x7f0c0312

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 606
    iget-boolean v4, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v4, :cond_198

    .line 607
    const v4, 0x7f0c030f

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a8

    .line 601
    :cond_18c
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_168

    .line 610
    :cond_198
    const v4, 0x7f0c030e

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 611
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a8
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

    .line 429
    sparse-switch p1, :sswitch_data_fa

    .line 523
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :cond_12
    :goto_12
    return-object v4

    .line 432
    :sswitch_13
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03003a

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 433
    .local v3, view:Landroid/view/View;
    const v5, 0x7f0c0185

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 434
    .local v2, etPassword:Landroid/widget/EditText;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 435
    const v6, 0x7f080055

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 437
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 438
    new-instance v6, Lcom/infraware/polarisoffice/OfficeFileManager$4;

    invoke-direct {v6, p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager$4;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 448
    invoke-virtual {v5, v11, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 449
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 434
    iput-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPasswordPopup:Landroid/app/AlertDialog;

    .line 450
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPasswordPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 451
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oPasswordPopup:Landroid/app/AlertDialog;

    goto :goto_12

    .line 458
    .end local v2           #etPassword:Landroid/widget/EditText;
    .end local v3           #view:Landroid/view/View;
    :sswitch_52
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nPopupType:I

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f0800b5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f08005f

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, duplicateMsg:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 463
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 464
    const v5, 0x7f080046

    new-instance v6, Lcom/infraware/polarisoffice/OfficeFileManager$5;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$5;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 486
    const v5, 0x7f080047

    new-instance v6, Lcom/infraware/polarisoffice/OfficeFileManager$6;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$6;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 491
    new-instance v5, Lcom/infraware/polarisoffice/OfficeFileManager$7;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$7;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 499
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 460
    iput-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    .line 500
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 501
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    goto/16 :goto_12

    .line 504
    .end local v1           #duplicateMsg:Ljava/lang/String;
    :sswitch_b6
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    if-eqz v5, :cond_12

    .line 507
    const v5, 0x7f080106

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v7}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, downloadMsg:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 509
    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 511
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 512
    new-instance v6, Lcom/infraware/polarisoffice/OfficeFileManager$8;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$8;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 518
    invoke-virtual {v5, v11, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 519
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 508
    iput-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    .line 520
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 521
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    goto/16 :goto_12

    .line 429
    nop

    :sswitch_data_fa
    .sparse-switch
        0x64 -> :sswitch_13
        0x65 -> :sswitch_52
        0xc8 -> :sswitch_52
        0xc9 -> :sswitch_52
        0x12c -> :sswitch_b6
        0x12d -> :sswitch_52
        0x12e -> :sswitch_52
    .end sparse-switch
.end method

.method public onCreateEvent()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1576
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->isUpdatable()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1578
    invoke-static {v2}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 1671
    :goto_b
    return-void

    .line 1582
    :cond_c
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    packed-switch v1, :pswitch_data_88

    goto :goto_b

    .line 1655
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/common/account/AddAccount;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1656
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x1008

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b

    .line 1585
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1f
    new-instance v1, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    invoke-direct {v1, p0, p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    .line 1595
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1596
    const v2, 0x7f0800d0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1598
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1599
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1595
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    .line 1608
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    new-instance v2, Lcom/infraware/polarisoffice/OfficeFileManager$9;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$9;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1622
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    new-instance v2, Lcom/infraware/polarisoffice/OfficeFileManager$10;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/OfficeFileManager$10;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1645
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1646
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_b

    .line 1660
    :pswitch_5f
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 1662
    invoke-static {v2}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 1663
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_b

    .line 1667
    :cond_73
    new-instance v1, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 1668
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->decideFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->createFolderDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1582
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v0, :cond_9

    .line 312
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->dismiss()V

    .line 314
    :cond_9
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    if-eqz v0, :cond_12

    .line 315
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    :cond_12
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->unregisterForContextMenu(Landroid/view/View;)V

    .line 319
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onDestroy()V

    .line 321
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 390
    const/16 v0, 0x52

    if-ne p1, v0, :cond_13

    .line 391
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 392
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownKey:I

    .line 393
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 394
    const/4 v0, 0x1

    .line 398
    :goto_10
    return v0

    .line 396
    :cond_11
    const/4 v0, 0x0

    goto :goto_10

    .line 398
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 403
    const/16 v0, 0x52

    if-ne p1, v0, :cond_9

    .line 404
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onSearchEvent()V

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 351
    iget v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownKey:I

    if-eq v3, p1, :cond_a

    .line 352
    const/4 v3, -0x1

    iput v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownKey:I

    .line 385
    :goto_9
    return v2

    .line 356
    :cond_a
    sparse-switch p1, :sswitch_data_6e

    .line 385
    :cond_d
    :goto_d
    invoke-super {p0, p1, p2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_9

    .line 359
    :sswitch_12
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getSelectMode()I

    move-result v3

    if-ne v3, v2, :cond_d

    .line 361
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 362
    .local v1, itemView:Landroid/view/View;
    if-eqz v1, :cond_52

    .line 364
    const/high16 v3, 0x7f09

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 366
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v5, v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getPosition(Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemTop:Ljava/util/HashMap;

    iget v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_52
    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeFileManager;->setSelectMode(I)V

    .line 371
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->closeOptionsMenu()V

    goto :goto_9

    .line 376
    .end local v1           #itemView:Landroid/view/View;
    :sswitch_59
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onSearchEvent()V

    goto :goto_9

    .line 379
    :sswitch_5d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 381
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->openOptionsMenu()V

    goto :goto_d

    .line 356
    nop

    :sswitch_data_6e
    .sparse-switch
        0x4 -> :sswitch_12
        0x52 -> :sswitch_5d
        0x54 -> :sswitch_59
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 16
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 867
    invoke-virtual {p0, p3}, Lcom/infraware/polarisoffice/OfficeFileManager;->getFileItem(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 869
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->curMode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_22

    .line 870
    if-nez v1, :cond_1f

    .line 872
    new-instance v1, Lcom/infraware/filemanager/file/FileListItem;

    .end local v1           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v1}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 873
    .restart local v1       #item:Lcom/infraware/filemanager/file/FileListItem;
    iput-boolean v9, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 874
    iget v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    iput v5, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 875
    const-string v5, ""

    iput-object v5, v1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 878
    :cond_1f
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->curFileItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 951
    :cond_21
    :goto_21
    return-void

    .line 881
    :cond_22
    if-eqz v1, :cond_21

    .line 884
    iget v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    if-nez v5, :cond_2c

    .line 886
    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationLogin(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_21

    .line 890
    :cond_2c
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemTop:Ljava/util/HashMap;

    iget v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getSelectMode()I

    move-result v5

    if-eqz v5, :cond_58

    .line 895
    invoke-super/range {p0 .. p5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_21

    .line 899
    :cond_58
    iget-boolean v5, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v5, :cond_116

    .line 901
    iget v5, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-ne v5, v8, :cond_da

    .line 903
    iget-boolean v5, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v5, :cond_72

    iget-object v5, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    const-string v6, "zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 904
    invoke-direct {p0, v1, v8}, Lcom/infraware/polarisoffice/OfficeFileManager;->unzip(Lcom/infraware/filemanager/file/FileListItem;Z)V

    goto :goto_21

    .line 908
    :cond_72
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 909
    .local v4, strPath:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 912
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".qbk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 913
    .local v2, qbkFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 914
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 917
    :cond_ad
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 918
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "INTCMD"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 919
    const-string v5, "key_filename"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    const-string v5, "key_caller_pkg_name"

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    const/16 v5, 0x1002

    invoke-virtual {p0, v0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    .line 924
    invoke-static {p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;

    move-result-object v3

    .line 925
    .local v3, recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    invoke-virtual {v3, v4}, Lcom/infraware/filemanager/recent/RecentFileManager;->InsertFileInfoToDB(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 928
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #qbkFile:Ljava/io/File;
    .end local v3           #recent:Lcom/infraware/filemanager/recent/RecentFileManager;
    :cond_d5
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUnknownExt(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 932
    .end local v4           #strPath:Ljava/lang/String;
    :cond_da
    iget v5, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_e4

    iget v5, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_116

    .line 934
    :cond_e4
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_f6

    .line 936
    const v5, 0x7f080068

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 940
    :cond_f6
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 941
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_10f

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strVendor:Ljava/lang/String;

    const-string v6, "- FV03"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_10f

    .line 942
    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationWebLoad(Lcom/infraware/filemanager/file/FileListItem;)V

    goto/16 :goto_21

    .line 944
    :cond_10f
    const/16 v5, 0x12c

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->showDialog(I)V

    goto/16 :goto_21

    .line 950
    :cond_116
    invoke-super/range {p0 .. p5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto/16 :goto_21
.end method

.method public onLocaleChanged()V
    .registers 12

    .prologue
    const v10, 0x7f08003b

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 1237
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->closeContextMenu()V

    .line 1239
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1240
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->onShow()V

    .line 1242
    :cond_1b
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1244
    iget v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nOperation:I

    if-nez v4, :cond_132

    .line 1245
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    const v5, 0x7f0800a6

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setTitle(I)V

    .line 1252
    :goto_33
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v4, v7}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f080045

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1255
    :cond_3f
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 1257
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f080043

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1258
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oCancelDialog:Landroid/app/AlertDialog;

    const v5, 0x7f0800b8

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1261
    :cond_63
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_b6

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 1263
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f0800b5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f08005f

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1264
    .local v1, duplicateMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1265
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1266
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f080046

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1267
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDuplicatePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f080047

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1270
    .end local v1           #duplicateMsg:Ljava/lang/String;
    :cond_b6
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_f9

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 1272
    const v4, 0x7f080106

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSelectedItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, downloadMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1274
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f080046

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1276
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oDownloadPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f080047

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1279
    .end local v0           #downloadMsg:Ljava/lang/String;
    :cond_f9
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_119

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_119

    .line 1281
    const/4 v2, -0x1

    .line 1282
    .local v2, menuId:I
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    if-eqz v4, :cond_110

    .line 1283
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->m_nMenuId:I
    invoke-static {v4}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;->access$0(Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;)I

    move-result v2

    .line 1285
    :cond_110
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1286
    .local v3, view:Landroid/widget/ListView;
    sparse-switch v2, :sswitch_data_192

    .line 1312
    .end local v2           #menuId:I
    .end local v3           #view:Landroid/widget/ListView;
    :cond_119
    :goto_119
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFailDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_12e

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_12e

    .line 1313
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFailDialog:Landroid/app/AlertDialog;

    invoke-static {v4, v5}, Lcom/infraware/common/util/Utils;->onLocaleChanged(Landroid/content/Context;Landroid/app/AlertDialog;)V

    .line 1314
    :cond_12e
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onLocaleChanged()V

    .line 1315
    return-void

    .line 1247
    :cond_132
    iget v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nOperation:I

    if-ne v4, v6, :cond_140

    .line 1248
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    const v5, 0x7f0800a7

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setTitle(I)V

    goto/16 :goto_33

    .line 1251
    :cond_140
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strProgressDialogTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    .line 1289
    .restart local v2       #menuId:I
    .restart local v3       #view:Landroid/widget/ListView;
    :sswitch_149
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    const v5, 0x7f0800d0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1291
    new-instance v4, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    invoke-direct {v4, p0, p0, v9}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    .line 1292
    if-eqz v3, :cond_119

    .line 1293
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_119

    .line 1296
    :sswitch_160
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    const v5, 0x7f0800e3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1298
    new-instance v4, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    const/16 v5, 0x9

    invoke-direct {v4, p0, p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    .line 1299
    if-eqz v3, :cond_119

    .line 1300
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_119

    .line 1303
    :sswitch_179
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    const v5, 0x7f0800d3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1305
    new-instance v4, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    const/4 v5, 0x3

    invoke-direct {v4, p0, p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    .line 1306
    if-eqz v3, :cond_119

    .line 1307
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_119

    .line 1286
    nop

    :sswitch_data_192
    .sparse-switch
        0x0 -> :sswitch_149
        0x3 -> :sswitch_179
        0x9 -> :sswitch_160
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 696
    if-nez p1, :cond_9

    .line 697
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 791
    :cond_8
    :goto_8
    return v1

    .line 699
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_120

    .line 788
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_8

    .line 702
    :sswitch_15
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    if-eq v2, v1, :cond_2a

    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 704
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_8

    .line 708
    :cond_2a
    new-instance v2, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/file/FileListItem;)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 709
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->decideFolderName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->createFolderDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 712
    :sswitch_3e
    const-string v2, ""

    invoke-direct {p0, v5, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationSearch(ILjava/lang/String;)V

    goto :goto_8

    .line 715
    :sswitch_44
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    if-eqz v2, :cond_8

    .line 718
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->checkMediaScannerScanning()Z

    move-result v2

    if-nez v2, :cond_8

    .line 720
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 722
    const v2, 0x7f0800b7

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_8

    .line 726
    :cond_61
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setSelectMode(I)V

    goto :goto_8

    .line 729
    :sswitch_65
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setAllSelected(Z)V

    goto :goto_8

    .line 732
    :sswitch_69
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->setAllSelected(Z)V

    goto :goto_8

    .line 735
    :sswitch_6d
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationUpload()V

    goto :goto_8

    .line 738
    :sswitch_71
    new-instance v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    invoke-direct {v2, p0, p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    .line 740
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 741
    const v3, 0x7f0800d0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 743
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 744
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 740
    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    .line 746
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 747
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 750
    :sswitch_9e
    new-instance v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    const/16 v3, 0x9

    invoke-direct {v2, p0, p0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    .line 752
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 753
    const v3, 0x7f0800e3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 755
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 756
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 752
    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    .line 758
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 759
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 762
    :sswitch_cd
    new-instance v2, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;-><init>(Lcom/infraware/polarisoffice/OfficeFileManager;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    .line 764
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 765
    const v3, 0x7f0800d3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 767
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMenuAdapter:Lcom/infraware/polarisoffice/OfficeFileManager$IconMenuAdapter;

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 768
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 764
    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    .line 770
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 771
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oIconMenuPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 774
    :sswitch_fb
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    if-eq v2, v1, :cond_8

    .line 777
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strLoginId:Ljava/lang/String;

    .line 778
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    iput v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nLoginType:I

    .line 780
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-static {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->convertTypeToService(I)I

    move-result v0

    .line 782
    .local v0, serviceType:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->loginWebStorage(ILjava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_8

    .line 785
    .end local v0           #serviceType:I
    :sswitch_11a
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onSetting()V

    goto/16 :goto_8

    .line 699
    nop

    :sswitch_data_120
    .sparse-switch
        0x0 -> :sswitch_71
        0x1 -> :sswitch_6d
        0x3 -> :sswitch_cd
        0x4 -> :sswitch_fb
        0x5 -> :sswitch_11a
        0x6 -> :sswitch_44
        0x8 -> :sswitch_3e
        0x9 -> :sswitch_9e
        0x1b -> :sswitch_15
        0x5b -> :sswitch_65
        0x5c -> :sswitch_69
    .end sparse-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPauseDialog()V

    .line 268
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPause()V

    .line 269
    return-void
.end method

.method public onPauseDialog()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 275
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->onPause()V

    .line 276
    :cond_11
    return-void
.end method

.method public onPivotLock()V
    .registers 3

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->isPivotLock(Landroid/content/Context;)Z

    move-result v0

    .line 1332
    .local v0, bLock:Z
    if-eqz v0, :cond_10

    .line 1333
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nOrientation:I

    .line 1335
    :cond_10
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nOrientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onChangeScreen(I)V

    .line 1336
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->setPivotLock(Z)V

    .line 1337
    return-void
.end method

.method public onPostAction(I)V
    .registers 4
    .parameter "nAction"

    .prologue
    .line 1689
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nAction:I

    .line 1690
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_runAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1691
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 412
    sparse-switch p1, :sswitch_data_c

    .line 424
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 425
    return-void

    .line 420
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager;->removeDialog(I)V

    goto :goto_3

    .line 412
    nop

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_7
        0x65 -> :sswitch_7
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_7
        0x12c -> :sswitch_7
        0x12d -> :sswitch_7
        0x12e -> :sswitch_7
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 676
    iget v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    iget v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nTmpDepth:I

    if-eq v3, v4, :cond_8

    .line 691
    :goto_7
    return v2

    .line 679
    :cond_8
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 680
    .local v1, itemView:Landroid/view/View;
    if-eqz v1, :cond_42

    .line 682
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 684
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getPosition(Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oMapItemTop:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_42
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 689
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setMenuItems(Landroid/view/Menu;)V

    .line 691
    const/4 v2, 0x1

    goto :goto_7
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "saveInstanceState"

    .prologue
    .line 335
    if-eqz p1, :cond_15

    .line 337
    const-string v2, "key_storage_type"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 338
    .local v1, storageType:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 340
    const-string v2, "key_storage_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->setCurPath(Ljava/lang/String;)V

    .line 345
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #storageType:I
    :cond_15
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 346
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 281
    invoke-static {v4}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 283
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->setContext(I)V

    .line 286
    new-instance v0, Lcom/infraware/common/util/ini/IniFile;

    const-string v2, "dvToolbarConfig.ini"

    invoke-direct {v0, v2}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v2, "POLSAIRS_DOCUMENT_SETTING"

    const-string v3, "SHOW_EXT"

    invoke-virtual {v0, v2, v3}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_22

    .line 291
    :cond_20
    const-string v1, "1"

    .line 293
    :cond_22
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_49

    .line 294
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->setShowExt(Z)V

    .line 299
    :goto_2d
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    if-eqz v2, :cond_36

    .line 300
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oFileDialog:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->onResume()V

    .line 302
    :cond_36
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_oProgressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 303
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeFileManager;->setUpdateState(Z)V

    .line 305
    :cond_45
    invoke-super {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onResume()V

    .line 306
    return-void

    .line 296
    :cond_49
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->setShowExt(Z)V

    goto :goto_2d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 326
    const-string v0, "key_storage_type"

    iget v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    const-string v0, "key_storage_path"

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-super {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 330
    return-void
.end method

.method public onSearchEvent()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1675
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->isUpdatable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1677
    invoke-static {v1}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 1685
    :goto_a
    return-void

    .line 1681
    :cond_b
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I

    if-eqz v0, :cond_16

    .line 1682
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->fileOperationSearch(ILjava/lang/String;)V

    goto :goto_a

    .line 1684
    :cond_16
    invoke-static {v1}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    goto :goto_a
.end method

.method public onSetting()V
    .registers 2

    .prologue
    .line 1326
    const/16 v0, 0x1009

    invoke-static {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->callSettingActivity(Landroid/app/Activity;I)V

    .line 1327
    return-void
.end method

.method public onUnknownExt(Ljava/lang/String;)V
    .registers 8
    .parameter "fileName"

    .prologue
    .line 1341
    invoke-static {}, Lcom/infraware/filemanager/porting/DRM;->getInstance()Lcom/infraware/filemanager/porting/DRM;

    move-result-object v0

    .line 1342
    .local v0, drm:Lcom/infraware/filemanager/porting/DRM;
    const/4 v1, 0x0

    .line 1344
    .local v1, drmCategory:Ljava/lang/String;
    invoke-virtual {v0, p1, p0}, Lcom/infraware/filemanager/porting/DRM;->isDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_28

    .line 1346
    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/infraware/filemanager/porting/DRM;->getDrmContentJudge(I)I

    move-result v4

    .line 1347
    .local v4, right:I
    if-nez v4, :cond_20

    .line 1349
    const v5, 0x7f080079

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 1371
    .end local v4           #right:I
    :goto_1f
    return-void

    .line 1353
    .restart local v4       #right:I
    :cond_20
    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v3

    .line 1354
    .local v3, mediaType:I
    invoke-virtual {v0, v3}, Lcom/infraware/filemanager/porting/DRM;->getContentCategory(I)Ljava/lang/String;

    move-result-object v1

    .line 1357
    .end local v3           #mediaType:I
    .end local v4           #right:I
    :cond_28
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Lcom/infraware/common/util/Utils;->getUnknownIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1358
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_3f

    .line 1362
    if-eqz v1, :cond_3a

    :try_start_31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 1363
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_3e

    goto :goto_1f

    .line 1367
    :catch_3e
    move-exception v5

    .line 1370
    :cond_3f
    const v5, 0x7f080104

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public onUpdateState(Z)V
    .registers 4
    .parameter "isUpdate"

    .prologue
    .line 1320
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeFileManager;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1321
    .local v0, parent:Landroid/app/Activity;
    instance-of v1, v0, Lcom/infraware/polarisoffice/OfficeMainActivity;

    if-eqz v1, :cond_d

    .line 1322
    check-cast v0, Lcom/infraware/polarisoffice/OfficeMainActivity;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setEnabled(Z)V

    .line 1323
    :cond_d
    return-void
.end method
