.class public Lcom/infraware/filemanager/file/FileBaseActivity;
.super Landroid/app/ListActivity;
.source "FileBaseActivity.java"

# interfaces
.implements Lcom/infraware/common/event/FindByPositionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x12cL

.field protected static final MODE_NONE:I = 0x0

.field protected static final MODE_REMOTE:I = 0x1

.field private static final UPDATE_PROGRESS_COLOR:I = 0x1

.field private static final UPDATE_PROGRESS_END:I = 0x2

.field private static final UPDATE_PROGRESS_START:I

.field private static m_oMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BOXNET_ROOT_PATH:Ljava/lang/String;

.field private GOOGLE_ROOT_PATH:Ljava/lang/String;

.field private LOCAL_ROOT_PATH:Ljava/lang/String;

.field protected curFileItem:Lcom/infraware/filemanager/file/FileListItem;

.field protected curMode:Ljava/lang/Integer;

.field private dispatchExecutor:Ljava/util/concurrent/ExecutorService;

.field protected m_bAccountList:Z

.field private m_bCancelSelect:Z

.field private m_bShowHidden:Z

.field private m_bShowPath:Z

.field private m_bUpdatable:Z

.field protected m_btnCancel:Landroid/widget/Button;

.field protected m_btnCopy:Landroid/widget/Button;

.field protected m_btnDelete:Landroid/widget/Button;

.field protected m_btnDownload:Landroid/widget/Button;

.field protected m_btnMove:Landroid/widget/Button;

.field protected m_btnNewFolder:Landroid/widget/Button;

.field protected m_btnSelect:Landroid/widget/Button;

.field protected m_btnUpload:Landroid/widget/Button;

.field protected m_layoutButton:Landroid/widget/LinearLayout;

.field protected m_layoutFileList:Landroid/widget/FrameLayout;

.field protected m_layoutProgress:Landroid/widget/FrameLayout;

.field protected m_layoutTitle:Landroid/widget/LinearLayout;

.field protected m_nCurDepth:I

.field protected m_nCurUpdate:J

.field protected m_nDownKey:I

.field protected m_nFilterType:I

.field protected m_nInternalMode:I

.field protected m_nLocaleCode:I

.field protected m_nOrientation:I

.field private m_nSelectMode:I

.field protected m_nStorageType:I

.field protected m_nTitleId:I

.field protected m_nTmpDepth:I

.field private m_nUpdateColor:I

.field private m_nUpdateState:I

.field protected m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

.field protected m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

.field protected m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

.field protected m_oFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/file/FileListItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_oFindReceiver:Lcom/infraware/common/event/FindByPositionEvent;

.field protected m_oFolderFilter:Lcom/infraware/filemanager/file/FileListFilter;

.field protected m_oHandler:Landroid/os/Handler;

.field protected m_oMapItemIdx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_oMapItemTop:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_oMapSDCardTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m_oProgressThread:Ljava/lang/Thread;

.field private m_oScanProgress:Landroid/app/ProgressDialog;

.field private m_oSelectHandler:Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;

.field private m_oSelectProgress:Landroid/app/ProgressDialog;

.field protected m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

.field private m_oToastMsg:Landroid/widget/Toast;

.field private m_oUpdateThread:Ljava/lang/Thread;

.field protected m_runInitState:Ljava/lang/Runnable;

.field protected m_runPostScan:Ljava/lang/Runnable;

.field protected m_runPostSelect:Ljava/lang/Runnable;

.field protected m_runPostUpdate:Ljava/lang/Runnable;

.field protected m_runToastMsg:Ljava/lang/Runnable;

.field protected m_runUpdateList:Ljava/lang/Runnable;

.field protected m_runUpdateMedia:Ljava/lang/Runnable;

.field protected m_runUpdateProgress:Ljava/lang/Runnable;

.field protected m_strCurPath:Ljava/lang/String;

.field protected m_strRootPath:Ljava/lang/String;

.field protected m_strStorageId:Ljava/lang/String;

.field protected m_strStoragePath:Ljava/lang/String;

.field protected m_strTmpPath:Ljava/lang/String;

.field private m_strToastMsg:Ljava/lang/String;

.field protected m_viewEmpty:Landroid/widget/TextView;

.field protected m_viewNoSDCard:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 67
    const-string v0, "/"

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->LOCAL_ROOT_PATH:Ljava/lang/String;

    .line 68
    const-string v0, "/"

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->GOOGLE_ROOT_PATH:Ljava/lang/String;

    .line 69
    const-string v0, "/"

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->BOXNET_ROOT_PATH:Ljava/lang/String;

    .line 71
    iput-boolean v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bShowPath:Z

    .line 72
    iput-boolean v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bShowHidden:Z

    .line 74
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    .line 75
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I

    .line 76
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateState:I

    .line 78
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;

    .line 79
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    .line 81
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oUpdateThread:Ljava/lang/Thread;

    .line 82
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oProgressThread:Ljava/lang/Thread;

    .line 84
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oToastMsg:Landroid/widget/Toast;

    .line 85
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strToastMsg:Ljava/lang/String;

    .line 87
    iput-boolean v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bCancelSelect:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bUpdatable:Z

    .line 90
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectHandler:Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapSDCardTable:Ljava/util/HashMap;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurUpdate:J

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    .line 101
    iput-boolean v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bAccountList:Z

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemTop:Ljava/util/HashMap;

    .line 112
    const v0, 0x7f080024

    iput v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nTitleId:I

    .line 113
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nInternalMode:I

    .line 114
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nFilterType:I

    .line 115
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nLocaleCode:I

    .line 116
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nOrientation:I

    .line 118
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFolderFilter:Lcom/infraware/filemanager/file/FileListFilter;

    .line 119
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    .line 121
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    .line 122
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    .line 124
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    .line 125
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oAsyncController:Lcom/infraware/filemanager/async/FileAsyncController;

    .line 146
    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFindReceiver:Lcom/infraware/common/event/FindByPositionEvent;

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/infraware/filemanager/file/FileBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$1;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runUpdateProgress:Ljava/lang/Runnable;

    .line 384
    new-instance v0, Lcom/infraware/filemanager/file/FileBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$2;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runUpdateList:Ljava/lang/Runnable;

    .line 392
    new-instance v0, Lcom/infraware/filemanager/file/FileBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$3;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runUpdateMedia:Ljava/lang/Runnable;

    .line 403
    new-instance v0, Lcom/infraware/filemanager/file/FileBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$4;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runPostScan:Ljava/lang/Runnable;

    .line 415
    new-instance v0, Lcom/infraware/filemanager/file/FileBaseActivity$5;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$5;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runPostUpdate:Ljava/lang/Runnable;

    .line 429
    new-instance v0, Lcom/infraware/filemanager/file/FileBaseActivity$6;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$6;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runPostSelect:Ljava/lang/Runnable;

    .line 445
    new-instance v0, Lcom/infraware/filemanager/file/FileBaseActivity$7;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$7;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runInitState:Ljava/lang/Runnable;

    .line 453
    new-instance v0, Lcom/infraware/filemanager/file/FileBaseActivity$8;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$8;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runToastMsg:Ljava/lang/Runnable;

    .line 1722
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->curMode:Ljava/lang/Integer;

    .line 1725
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->dispatchExecutor:Ljava/util/concurrent/ExecutorService;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/filemanager/file/FileBaseActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateState:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/filemanager/file/FileBaseActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oToastMsg:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$11(Lcom/infraware/filemanager/file/FileBaseActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strToastMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/filemanager/file/FileBaseActivity;Landroid/widget/Toast;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oToastMsg:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$13(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->updateSelect()V

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/filemanager/file/FileBaseActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I

    return v0
.end method

.method static synthetic access$3()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->updateMedia()V

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/filemanager/file/FileBaseActivity;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/filemanager/file/FileBaseActivity;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$9(Lcom/infraware/filemanager/file/FileBaseActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bCancelSelect:Z

    return-void
.end method

.method private clearSelectedList()V
    .registers 2

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    if-nez v0, :cond_5

    .line 1696
    :goto_4
    return-void

    .line 1694
    :cond_5
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 1695
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    goto :goto_4
.end method

.method public static convertTypeToService(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, serviceType:I
    packed-switch p0, :pswitch_data_a

    .line 935
    :goto_4
    return v0

    .line 928
    :pswitch_5
    const/4 v0, 0x1

    .line 929
    goto :goto_4

    .line 931
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 925
    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static onAddMedia(Lcom/infraware/filemanager/media/MediaItem;)V
    .registers 3
    .parameter "mediaItem"

    .prologue
    .line 905
    sget-object v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 909
    :goto_4
    return-void

    .line 908
    :cond_5
    sget-object v1, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_8
    sget-object v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_4

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static onClearMedia()V
    .registers 2

    .prologue
    .line 913
    sget-object v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 920
    :goto_4
    return-void

    .line 916
    :cond_5
    sget-object v1, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 918
    :try_start_8
    sget-object v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 916
    monitor-exit v1

    goto :goto_4

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private setCurrentPosition()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1351
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1352
    .local v0, idx:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1354
    .local v1, top:Ljava/lang/Integer;
    if-nez v0, :cond_27

    .line 1356
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1368
    :cond_26
    :goto_26
    return-void

    .line 1360
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_3f

    .line 1361
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1363
    :cond_3f
    if-nez v1, :cond_45

    .line 1364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1366
    :cond_45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_26

    .line 1367
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_26
.end method

.method private setSDCardConfig()V
    .registers 6

    .prologue
    .line 1710
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v3, 0x1

    if-lt v0, v3, :cond_5

    .line 1717
    return-void

    .line 1712
    :cond_5
    sget-object v3, Lcom/infraware/filemanager/porting/DeviceConfig$SDCardList;->SDCARD_FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 1713
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/infraware/filemanager/porting/DeviceConfig$SDCardList;->SDCARD_FOLDER_ICON:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1714
    .local v1, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_20

    if-eqz v1, :cond_20

    .line 1715
    sget-object v3, Lcom/infraware/filemanager/porting/DeviceConfig$SDCardList;->SDCARD_FOLDER_NAME:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->addSDCardIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1710
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setSelectItem()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1700
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getSelectableCount()I

    move-result v0

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 1701
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->setSelect(IZ)Lcom/infraware/filemanager/file/FileListItem;

    .line 1705
    :goto_15
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->notifyDataSetChanged()V

    .line 1706
    return-void

    .line 1703
    :cond_1b
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0, v2, v2}, Lcom/infraware/filemanager/file/FileListAdapter;->setSelect(IZ)Lcom/infraware/filemanager/file/FileListItem;

    goto :goto_15
.end method

.method private updateMedia()V
    .registers 3

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 951
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onMediaDBBroadCast()V

    .line 952
    sget-object v1, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_c
    sget-object v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    .line 1106
    :goto_12
    return-void

    .line 952
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0

    .line 955
    :cond_16
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    .line 956
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/infraware/filemanager/file/FileBaseActivity$9;

    invoke-direct {v1, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$9;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 968
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 969
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 971
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/filemanager/file/FileBaseActivity$10;

    invoke-direct {v1, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$10;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_12
.end method

.method private updateSelect()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1641
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    if-nez v4, :cond_9

    .line 1643
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPostSelect()V

    .line 1687
    :goto_8
    return-void

    .line 1647
    :cond_9
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v4

    if-lez v4, :cond_3c

    .line 1649
    const/4 v1, 0x0

    .line 1651
    .local v1, isUpdate:Z
    iget v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nInternalMode:I

    sparse-switch v4, :sswitch_data_76

    .line 1658
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileSelectedList;->getType()I

    move-result v4

    iget v5, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    if-ne v4, v5, :cond_4d

    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileSelectedList;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4d

    move v1, v3

    .line 1662
    :goto_30
    if-eqz v1, :cond_6f

    .line 1665
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1666
    .local v0, index:I
    :goto_3a
    if-gez v0, :cond_4f

    .line 1683
    .end local v0           #index:I
    .end local v1           #isUpdate:Z
    :cond_3c
    :goto_3c
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-nez v3, :cond_47

    .line 1684
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->clearSelectedList()V

    .line 1686
    :cond_47
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPostSelect()V

    goto :goto_8

    .line 1655
    .restart local v1       #isUpdate:Z
    :sswitch_4b
    const/4 v1, 0x1

    .line 1656
    goto :goto_30

    .line 1658
    :cond_4d
    const/4 v1, 0x0

    goto :goto_30

    .line 1668
    .restart local v0       #index:I
    :cond_4f
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    .line 1669
    .local v2, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bCancelSelect:Z

    if-eqz v4, :cond_61

    .line 1671
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(I)Lcom/infraware/filemanager/file/FileListItem;

    .line 1666
    :cond_5e
    :goto_5e
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 1675
    :cond_61
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v4, v2, v3}, Lcom/infraware/filemanager/file/FileListAdapter;->setSelect(Lcom/infraware/filemanager/file/FileListItem;Z)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v4

    if-nez v4, :cond_5e

    .line 1676
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(I)Lcom/infraware/filemanager/file/FileListItem;

    goto :goto_5e

    .line 1680
    .end local v0           #index:I
    .end local v2           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_6f
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    goto :goto_3c

    .line 1651
    nop

    :sswitch_data_76
    .sparse-switch
        0x4 -> :sswitch_4b
        0x8 -> :sswitch_4b
    .end sparse-switch
.end method


# virtual methods
.method protected addFileItemToAdapter(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 3
    .parameter "aFileItem"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/file/FileListAdapter;->addList(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 468
    return-void
.end method

.method public addSDCardIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "name"
    .parameter "icon"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapSDCardTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public clearSDCard()V
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapSDCardTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 319
    return-void
.end method

.method public getCurPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getFileByPosition(II)Ljava/util/concurrent/Future;
    .registers 5
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->dispatchExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/infraware/filemanager/file/FileBaseActivity$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/infraware/filemanager/file/FileBaseActivity$15;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected getFileItem(I)Lcom/infraware/filemanager/file/FileListItem;
    .registers 3
    .parameter "position"

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    if-nez v0, :cond_6

    .line 1605
    const/4 v0, 0x0

    .line 1607
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/file/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    goto :goto_5
.end method

.method public getFindByPositionIntentFilter()Landroid/content/IntentFilter;
    .registers 4

    .prologue
    .line 1773
    const-string v0, "0"

    .line 1774
    .local v0, filter:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 1775
    const/4 v1, 0x0

    .line 1778
    :goto_b
    return-object v1

    .line 1777
    :cond_c
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1778
    .local v1, intentFilter:Landroid/content/IntentFilter;
    goto :goto_b
.end method

.method public getRootPath(I)Ljava/lang/String;
    .registers 4
    .parameter "type"

    .prologue
    .line 287
    const-string v0, ""

    .line 288
    .local v0, path:Ljava/lang/String;
    packed-switch p1, :pswitch_data_1e

    .line 301
    :goto_5
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strRootPath:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strRootPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    .line 302
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strRootPath:Ljava/lang/String;

    .line 304
    :cond_13
    return-object v0

    .line 291
    :pswitch_14
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->LOCAL_ROOT_PATH:Ljava/lang/String;

    .line 292
    goto :goto_5

    .line 294
    :pswitch_17
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->GOOGLE_ROOT_PATH:Ljava/lang/String;

    .line 295
    goto :goto_5

    .line 297
    :pswitch_1a
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->BOXNET_ROOT_PATH:Ljava/lang/String;

    goto :goto_5

    .line 288
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method public getSDCardIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "name"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapSDCardTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSelectMode()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    return v0
.end method

.method public getShowExt()Z
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getShowExt()Z

    move-result v0

    return v0
.end method

.method public initState()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 150
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemTop:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    .line 153
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strStoragePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->setTmpState()V

    .line 156
    return-void
.end method

.method public isFindByPositionAction(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 1783
    const-string v3, "pos_x"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1784
    .local v1, x:I
    const-string v3, "pos_y"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1786
    .local v2, y:I
    new-instance v0, Ljava/lang/Thread;

    const/4 v3, 0x0

    new-instance v4, Lcom/infraware/filemanager/file/FileBaseActivity$16;

    invoke-direct {v4, p0, v1, v2}, Lcom/infraware/filemanager/file/FileBaseActivity$16;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;II)V

    invoke-direct {v0, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 1802
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1803
    return-void
.end method

.method public isLocalStorage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 242
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    if-ne v1, v0, :cond_6

    .line 245
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected isSdcard()Z
    .registers 3

    .prologue
    .line 471
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, stateSd:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 474
    const/4 v1, 0x1

    .line 476
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isUpdatable()Z
    .registers 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bUpdatable:Z

    return v0
.end method

.method protected makeLocalFileList(Ljava/lang/String;)V
    .registers 13
    .parameter "path"

    .prologue
    const/16 v10, 0x2e

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 1201
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->isSdcard()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1285
    :cond_a
    return-void

    .line 1204
    :cond_b
    const/4 v3, 0x0

    .line 1205
    .local v3, item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/file/FileBaseActivity;->getRootPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_32

    .line 1206
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getSelectMode()I

    move-result v4

    if-eq v4, v9, :cond_32

    .line 1208
    new-instance v3, Lcom/infraware/filemanager/file/FileListItem;

    .end local v3           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v3}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1209
    .restart local v3       #item:Lcom/infraware/filemanager/file/FileListItem;
    iput-boolean v9, v3, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 1210
    iput v9, v3, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1211
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    iput-object v4, v3, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1212
    const-string v4, ".."

    iput-object v4, v3, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 1213
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    :cond_32
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v2, home:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurUpdate:J

    .line 1220
    const/4 v1, 0x0

    check-cast v1, [Ljava/io/File;

    .line 1221
    .local v1, fileList:[Ljava/io/File;
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFolderFilter:Lcom/infraware/filemanager/file/FileListFilter;

    if-eqz v4, :cond_55

    .line 1222
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFolderFilter:Lcom/infraware/filemanager/file/FileListFilter;

    invoke-virtual {v4, p1}, Lcom/infraware/filemanager/file/FileListFilter;->setPath(Ljava/lang/String;)V

    .line 1224
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFolderFilter:Lcom/infraware/filemanager/file/FileListFilter;

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1225
    if-eqz v1, :cond_a

    .line 1228
    array-length v6, v1

    move v4, v5

    :goto_53
    if-lt v4, v6, :cond_7d

    .line 1260
    :cond_55
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    if-eqz v4, :cond_a

    .line 1261
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    invoke-virtual {v4, p1}, Lcom/infraware/filemanager/file/FileListFilter;->setPath(Ljava/lang/String;)V

    .line 1263
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1264
    if-eqz v1, :cond_a

    .line 1267
    array-length v6, v1

    move v4, v5

    :goto_68
    if-ge v4, v6, :cond_a

    aget-object v0, v1, v4

    .line 1269
    .local v0, file:Ljava/io/File;
    iget-boolean v7, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bShowHidden:Z

    if-nez v7, :cond_f3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_f3

    .line 1267
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 1228
    .end local v0           #file:Ljava/io/File;
    :cond_7d
    aget-object v0, v1, v4

    .line 1230
    .restart local v0       #file:Ljava/io/File;
    iget-boolean v7, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bShowHidden:Z

    if-nez v7, :cond_90

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_90

    .line 1228
    :cond_8d
    :goto_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 1233
    :cond_90
    new-instance v3, Lcom/infraware/filemanager/file/FileListItem;

    .end local v3           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v3}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1234
    .restart local v3       #item:Lcom/infraware/filemanager/file/FileListItem;
    iput-boolean v9, v3, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 1235
    iput v9, v3, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1236
    iget-object v7, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    iput-object v7, v3, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1237
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 1238
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcom/infraware/filemanager/file/FileListItem;->size:J

    .line 1239
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    .line 1241
    invoke-static {v0, p1}, Lcom/infraware/filemanager/porting/DeviceConfig$SdDetectHelper;->isSdCardDirectory(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 1243
    iget-object v7, v3, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/infraware/filemanager/file/FileBaseActivity;->getSDCardIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v3, Lcom/infraware/filemanager/file/FileListItem;->icon:Landroid/graphics/Bitmap;

    .line 1244
    iget-object v7, v3, Lcom/infraware/filemanager/file/FileListItem;->icon:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_c1

    .line 1245
    iput-boolean v9, v3, Lcom/infraware/filemanager/file/FileListItem;->isSDCard:Z

    .line 1248
    :cond_c1
    const-string v7, "/mnt"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ed

    .line 1250
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/mnt/sdcard2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 1251
    :cond_e7
    iget-object v7, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    .line 1255
    :cond_ed
    iget-object v7, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    .line 1272
    :cond_f3
    new-instance v3, Lcom/infraware/filemanager/file/FileListItem;

    .end local v3           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v3}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1273
    .restart local v3       #item:Lcom/infraware/filemanager/file/FileListItem;
    iput-boolean v5, v3, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 1274
    iput v9, v3, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1275
    iget-object v7, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    iput-object v7, v3, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1276
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lcom/infraware/filemanager/file/FileListItem;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/infraware/filemanager/file/FileListItem;->size:J

    .line 1278
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    .line 1280
    iget-object v7, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7a
.end method

.method protected makeRootList()V
    .registers 14

    .prologue
    .line 1110
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 1111
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemTop:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 1115
    new-instance v1, Lcom/infraware/common/util/ini/IniFile;

    const-string v10, "dvToolbarConfig.ini"

    invoke-direct {v1, v10}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v1, configFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v10, "ACCOUNT_SETTING"

    const-string v11, "ACCOUNT"

    invoke-virtual {v1, v10, v11}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, accountInfo:Ljava/lang/String;
    const/4 v3, 0x1

    .line 1119
    .local v3, isGoogle:Z
    const/4 v2, 0x1

    .line 1120
    .local v2, isBoxnet:Z
    if-eqz v0, :cond_3c

    .line 1122
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v10, ":"

    invoke-direct {v9, v0, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    .local v9, strToken:Ljava/util/StringTokenizer;
    const/4 v5, 0x0

    .line 1127
    .local v5, nAccountCount:I
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 1129
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1130
    .local v8, strFlag:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v6, v5

    .line 1133
    .end local v5           #nAccountCount:I
    .end local v8           #strFlag:Ljava/lang/String;
    .local v6, nAccountCount:I
    :goto_38
    add-int/lit8 v5, v6, -0x1

    .end local v6           #nAccountCount:I
    .restart local v5       #nAccountCount:I
    if-gtz v6, :cond_56

    .line 1188
    .end local v5           #nAccountCount:I
    .end local v9           #strToken:Ljava/util/StringTokenizer;
    :cond_3c
    if-eqz v2, :cond_55

    .line 1190
    new-instance v4, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v4}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1191
    .local v4, item:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 1192
    const/4 v10, 0x0

    iput v10, v4, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1193
    const-string v10, "Box.net"

    iput-object v10, v4, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 1194
    const/4 v10, 0x2

    iput v10, v4, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 1195
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    .end local v4           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_55
    return-void

    .line 1137
    .restart local v5       #nAccountCount:I
    .restart local v9       #strToken:Ljava/util/StringTokenizer;
    :cond_56
    new-instance v4, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v4}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1138
    .restart local v4       #item:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 1139
    const/4 v10, 0x0

    iput v10, v4, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1141
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 1144
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 1146
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 1149
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    .line 1150
    iget-object v10, v4, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    const-string v11, "<skarnd!dbal>"

    const-string v12, ":"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    .line 1152
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 1155
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1156
    .restart local v8       #strFlag:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1158
    .local v7, serviceType:I
    const/4 v10, 0x1

    if-ne v7, v10, :cond_a4

    move v6, v5

    .line 1161
    .end local v5           #nAccountCount:I
    .restart local v6       #nAccountCount:I
    goto :goto_38

    .line 1166
    .end local v6           #nAccountCount:I
    .restart local v5       #nAccountCount:I
    :cond_a4
    const/4 v10, 0x2

    if-ne v7, v10, :cond_ab

    .line 1168
    const/4 v10, 0x2

    iput v10, v4, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 1169
    const/4 v2, 0x0

    .line 1172
    :cond_ab
    iget-object v10, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4           #item:Lcom/infraware/filemanager/file/FileListItem;
    .end local v7           #serviceType:I
    .end local v8           #strFlag:Ljava/lang/String;
    :cond_b0
    move v6, v5

    .end local v5           #nAccountCount:I
    .restart local v6       #nAccountCount:I
    goto :goto_38
.end method

.method protected makeWebFileList(Ljava/lang/String;)V
    .registers 10
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    .line 1289
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v2

    .line 1290
    .local v2, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkLoginThreadAlive()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1347
    :cond_b
    return-void

    .line 1293
    :cond_c
    const/4 v0, 0x0

    .line 1294
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    const/4 v1, -0x1

    .line 1295
    .local v1, serviceType:I
    iget v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_76

    .line 1297
    const/4 v1, 0x1

    .line 1298
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->GOOGLE_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3a

    .line 1299
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getSelectMode()I

    move-result v4

    if-eq v4, v6, :cond_3a

    .line 1301
    new-instance v0, Lcom/infraware/filemanager/file/FileListItem;

    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v0}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1302
    .restart local v0       #item:Lcom/infraware/filemanager/file/FileListItem;
    iput-boolean v6, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 1303
    iget v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    iput v4, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1304
    iput-object p1, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1305
    const-string v4, ".."

    iput-object v4, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 1306
    iput v1, v0, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 1307
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    :cond_3a
    :goto_3a
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strStorageId:Ljava/lang/String;

    iget-object v5, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v2, v1, v4, v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getFirst(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    move-result-object v3

    .line 1329
    .local v3, webFile:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    :goto_42
    if-eqz v3, :cond_b

    .line 1331
    new-instance v0, Lcom/infraware/filemanager/file/FileListItem;

    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v0}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1332
    .restart local v0       #item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    iput-boolean v4, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 1333
    iget v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    iput v4, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1334
    iput-object p1, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1335
    iget-wide v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    iput-wide v4, v0, Lcom/infraware/filemanager/file/FileListItem;->size:J

    .line 1336
    iput v1, v0, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 1337
    iget-wide v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->updateTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    .line 1338
    iget-boolean v4, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v4, :cond_a3

    .line 1339
    iget-object v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    iput-object v4, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 1343
    :goto_68
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strStorageId:Ljava/lang/String;

    iget-object v5, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v2, v1, v4, v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getNext(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    move-result-object v3

    goto :goto_42

    .line 1311
    .end local v3           #webFile:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    :cond_76
    iget v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3a

    .line 1313
    const/4 v1, 0x2

    .line 1314
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->BOXNET_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3a

    .line 1315
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getSelectMode()I

    move-result v4

    if-eq v4, v6, :cond_3a

    .line 1317
    new-instance v0, Lcom/infraware/filemanager/file/FileListItem;

    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {v0}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 1318
    .restart local v0       #item:Lcom/infraware/filemanager/file/FileListItem;
    iput-boolean v6, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 1319
    iget v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    iput v4, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 1320
    iput-object p1, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 1321
    const-string v4, ".."

    iput-object v4, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 1322
    iput v1, v0, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 1323
    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 1341
    .restart local v3       #webFile:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    :cond_a3
    iget-object v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/infraware/filemanager/file/FileListItem;->setName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68
.end method

.method public moveFolder(Ljava/lang/String;)V
    .registers 5
    .parameter "folder"

    .prologue
    .line 1573
    const-string v1, ".."

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_54

    .line 1575
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    if-lez v1, :cond_47

    .line 1579
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nTmpDepth:I

    .line 1581
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1582
    .local v0, nIndex:I
    if-ltz v0, :cond_47

    .line 1583
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strTmpPath:Ljava/lang/String;

    .line 1584
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strTmpPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_47

    .line 1585
    const-string v1, "/"

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strTmpPath:Ljava/lang/String;

    .line 1596
    .end local v0           #nIndex:I
    :cond_47
    :goto_47
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateList()V

    .line 1598
    iget-boolean v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bShowPath:Z

    if-eqz v1, :cond_53

    .line 1599
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strTmpPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onToastMessage(Ljava/lang/String;)V

    .line 1600
    :cond_53
    return-void

    .line 1592
    :cond_54
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nTmpDepth:I

    .line 1593
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7a

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_77
    iput-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strTmpPath:Ljava/lang/String;

    goto :goto_47

    :cond_7a
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_77
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 682
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 684
    packed-switch p1, :pswitch_data_e

    .line 696
    :cond_6
    :goto_6
    return-void

    .line 689
    :pswitch_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 691
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateList()V

    goto :goto_6

    .line 684
    :pswitch_data_e
    .packed-switch 0x100
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 779
    return-void
.end method

.method public onChangeScreen(I)V
    .registers 3
    .parameter "nType"

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 857
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "_newConfig"

    .prologue
    .line 664
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_f

    .line 666
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nOrientation:I

    .line 667
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nOrientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onChangeScreen(I)V

    .line 670
    :cond_f
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 671
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nLocaleCode:I

    if-eq v1, v0, :cond_1e

    .line 673
    iput v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nLocaleCode:I

    .line 674
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onLocaleChanged()V

    .line 677
    :cond_1e
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 678
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 489
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 491
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->setContentView(I)V

    .line 493
    invoke-static {p0}, Lcom/infraware/common/util/FileUtils;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->LOCAL_ROOT_PATH:Ljava/lang/String;

    .line 494
    iput v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    .line 495
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->LOCAL_ROOT_PATH:Ljava/lang/String;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strStoragePath:Ljava/lang/String;

    .line 496
    const-string v2, ""

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strStorageId:Ljava/lang/String;

    .line 497
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strRootPath:Ljava/lang/String;

    .line 499
    const v2, 0x7f0c00a2

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutProgress:Landroid/widget/FrameLayout;

    .line 500
    const v2, 0x7f0c00a3

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutFileList:Landroid/widget/FrameLayout;

    .line 502
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 504
    const v2, 0x7f0c00a4

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutTitle:Landroid/widget/LinearLayout;

    .line 505
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    const v2, 0x7f0c00a9

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    .line 509
    const v2, 0x7f0c00ac

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnSelect:Landroid/widget/Button;

    .line 510
    const v2, 0x7f0c006d

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnCancel:Landroid/widget/Button;

    .line 511
    const v2, 0x7f0c00ae

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnMove:Landroid/widget/Button;

    .line 512
    const v2, 0x7f0c00af

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnCopy:Landroid/widget/Button;

    .line 513
    const v2, 0x7f0c00b0

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnDelete:Landroid/widget/Button;

    .line 514
    const v2, 0x7f0c00aa

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnUpload:Landroid/widget/Button;

    .line 515
    const v2, 0x7f0c00ab

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnDownload:Landroid/widget/Button;

    .line 516
    const v2, 0x7f0c00ad

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnNewFolder:Landroid/widget/Button;

    .line 518
    invoke-virtual {p0, v5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    .line 520
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nOrientation:I

    .line 521
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v2

    iput v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nLocaleCode:I

    .line 523
    iget v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nOrientation:I

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onChangeScreen(I)V

    .line 525
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->initState()V

    .line 527
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 528
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemTop:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 530
    const v2, 0x7f0c00a7

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewEmpty:Landroid/widget/TextView;

    .line 531
    const v2, 0x7f0c00a8

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewNoSDCard:Landroid/widget/TextView;

    .line 533
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewNoSDCard:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 537
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 539
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMediaList:Ljava/util/ArrayList;

    .line 541
    new-instance v2, Lcom/infraware/filemanager/file/FileListFilter;

    invoke-direct {v2, p0, v4}, Lcom/infraware/filemanager/file/FileListFilter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFolderFilter:Lcom/infraware/filemanager/file/FileListFilter;

    .line 542
    new-instance v2, Lcom/infraware/filemanager/file/FileListFilter;

    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nFilterType:I

    invoke-direct {v2, p0, v3}, Lcom/infraware/filemanager/file/FileListFilter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileFilter:Lcom/infraware/filemanager/file/FileListFilter;

    .line 544
    new-instance v2, Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-direct {v2, p0}, Lcom/infraware/filemanager/file/FileListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    .line 545
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 547
    iget v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->setSelectMode(I)V

    .line 549
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    .line 550
    .local v0, config:Lcom/infraware/common/config/RuntimeConfig;
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->getSortField(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/file/FileListAdapter;->setSortField(I)V

    .line 551
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->setAscending()V

    .line 553
    new-instance v2, Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-direct {v2}, Lcom/infraware/filemanager/file/FileSelectedList;-><init>()V

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    .line 555
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->clearSDCard()V

    .line 556
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->setSDCardConfig()V

    .line 558
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getFindByPositionIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 559
    .local v1, intentFilter:Landroid/content/IntentFilter;
    if-eqz v1, :cond_165

    .line 561
    new-instance v2, Lcom/infraware/common/event/FindByPositionEvent;

    invoke-direct {v2}, Lcom/infraware/common/event/FindByPositionEvent;-><init>()V

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFindReceiver:Lcom/infraware/common/event/FindByPositionEvent;

    .line 562
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFindReceiver:Lcom/infraware/common/event/FindByPositionEvent;

    invoke-virtual {v2, p0}, Lcom/infraware/common/event/FindByPositionEvent;->setFindByPositionListener(Lcom/infraware/common/event/FindByPositionListener;)V

    .line 563
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFindReceiver:Lcom/infraware/common/event/FindByPositionEvent;

    invoke-virtual {p0, v2, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    :cond_165
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 567
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFindReceiver:Lcom/infraware/common/event/FindByPositionEvent;

    if-eqz v0, :cond_9

    .line 582
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFindReceiver:Lcom/infraware/common/event/FindByPositionEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 584
    :cond_9
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 585
    return-void
.end method

.method public onInitState()V
    .registers 3

    .prologue
    .line 940
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runInitState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 941
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 604
    iput p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    .line 605
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 610
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    if-eq v1, p1, :cond_9

    .line 611
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    .line 658
    :cond_8
    :goto_8
    return v0

    .line 615
    :cond_9
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->isUpdatable()Z

    move-result v1

    if-nez v1, :cond_12

    .line 617
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    goto :goto_8

    .line 621
    :cond_12
    sparse-switch p1, :sswitch_data_62

    .line 657
    :cond_15
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    .line 658
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8

    .line 624
    :sswitch_1c
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    if-eq v1, v0, :cond_8

    .line 627
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strRootPath:Ljava/lang/String;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strRootPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3d

    .line 629
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strRootPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3d

    .line 631
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    .line 632
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8

    .line 636
    :cond_3d
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    if-lez v1, :cond_49

    .line 638
    const-string v1, ".."

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->moveFolder(Ljava/lang/String;)V

    .line 639
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    goto :goto_8

    .line 642
    :cond_49
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bAccountList:Z

    if-eqz v1, :cond_15

    .line 644
    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    if-eqz v1, :cond_15

    .line 646
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->setStorageType(ILjava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateList()V

    goto :goto_8

    .line 653
    :sswitch_5f
    iput v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    goto :goto_8

    .line 621
    :sswitch_data_62
    .sparse-switch
        0x4 -> :sswitch_1c
        0x54 -> :sswitch_5f
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 700
    invoke-virtual {p0, p3}, Lcom/infraware/filemanager/file/FileBaseActivity;->getFileItem(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 701
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v1, :cond_9

    .line 750
    :cond_8
    :goto_8
    return-void

    .line 704
    :cond_9
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getSelectMode()I

    move-result v2

    if-eq v2, v4, :cond_15

    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getSelectMode()I

    move-result v2

    if-ne v2, v5, :cond_24

    .line 706
    :cond_15
    iget v2, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_24

    .line 708
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->reverseSelect(Lcom/infraware/filemanager/file/FileListItem;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->setAllSelected(Z)V

    goto :goto_8

    .line 713
    :cond_24
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getSelectMode()I

    move-result v2

    if-eq v2, v4, :cond_34

    .line 714
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getSelectMode()I

    move-result v2

    if-ne v2, v5, :cond_66

    iget-boolean v2, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v2, :cond_66

    .line 716
    :cond_34
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->reverseSelect(Lcom/infraware/filemanager/file/FileListItem;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 718
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->clone()Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v0

    .line 719
    .local v0, cloneItem:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 720
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v2

    if-ne v2, v4, :cond_50

    .line 721
    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    .line 731
    .end local v0           #cloneItem:Lcom/infraware/filemanager/file/FileListItem;
    :cond_50
    :goto_50
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->setSelectItem()V

    goto :goto_8

    .line 725
    :cond_54
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, v1}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(Lcom/infraware/filemanager/file/FileListItem;)Lcom/infraware/filemanager/file/FileListItem;

    .line 726
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v2

    if-nez v2, :cond_50

    .line 727
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    goto :goto_50

    .line 736
    :cond_66
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-boolean v2, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v2, :cond_8

    .line 741
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getSelectMode()I

    move-result v2

    if-ne v2, v5, :cond_9a

    .line 743
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->clearSelectedList()V

    .line 744
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListAdapter;->clearSelectedList()V

    .line 747
    :cond_9a
    iget-object v2, v1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->moveFolder(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public onListItemSelect(ZLcom/infraware/filemanager/file/FileListItem;)V
    .registers 7
    .parameter "isSelect"
    .parameter "selectedItem"

    .prologue
    const/4 v3, 0x1

    .line 753
    iget v1, p2, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 755
    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->setAllSelected(Z)V

    .line 775
    :goto_9
    return-void

    .line 759
    :cond_a
    if-eqz p1, :cond_24

    .line 761
    invoke-virtual {p2}, Lcom/infraware/filemanager/file/FileListItem;->clone()Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v0

    .line 762
    .local v0, cloneItem:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 763
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v1

    if-ne v1, v3, :cond_20

    .line 764
    invoke-virtual {p0, v3}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    .line 774
    .end local v0           #cloneItem:Lcom/infraware/filemanager/file/FileListItem;
    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->setSelectItem()V

    goto :goto_9

    .line 768
    :cond_24
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1, p2}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(Lcom/infraware/filemanager/file/FileListItem;)Lcom/infraware/filemanager/file/FileListItem;

    .line 769
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v1

    if-nez v1, :cond_20

    .line 770
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    goto :goto_20
.end method

.method public onLocaleChanged()V
    .registers 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewEmpty:Landroid/widget/TextView;

    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewNoSDCard:Landroid/widget/TextView;

    const v1, 0x7f08009e

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnSelect:Landroid/widget/Button;

    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnCancel:Landroid/widget/Button;

    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnMove:Landroid/widget/Button;

    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnCopy:Landroid/widget/Button;

    const v1, 0x7f08004c

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnDelete:Landroid/widget/Button;

    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnUpload:Landroid/widget/Button;

    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnDownload:Landroid/widget/Button;

    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnNewFolder:Landroid/widget/Button;

    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nTitleId:I

    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->setTitle(I)V

    .line 796
    return-void
.end method

.method public onMediaDBBroadCast()V
    .registers 6

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 894
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 895
    return-void
.end method

.method public onMediaDBBroadCast(Ljava/lang/String;)V
    .registers 7
    .parameter "fileName"

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 900
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 901
    return-void
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 591
    .local v1, itemView:Landroid/view/View;
    if-eqz v1, :cond_3b

    .line 593
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 595
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getPosition(Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemTop:Ljava/util/HashMap;

    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    .end local v0           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_3b
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 600
    return-void
.end method

.method public onPostScan()V
    .registers 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runPostScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 879
    return-void
.end method

.method public onPostSelect()V
    .registers 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runPostSelect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 889
    return-void
.end method

.method public onPostUpdate()V
    .registers 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runPostUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 884
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 574
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateList()V

    .line 575
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 576
    return-void
.end method

.method public onShowSelectedMenu(Z)V
    .registers 5
    .parameter "isShow"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 804
    if-nez p1, :cond_b

    .line 806
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 852
    :goto_a
    return-void

    .line 810
    :cond_b
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnMove:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnCopy:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnDownload:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnNewFolder:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 821
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nInternalMode:I

    packed-switch v0, :pswitch_data_6c

    :pswitch_3d
    goto :goto_a

    .line 828
    :pswitch_3e
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 830
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    packed-switch v0, :pswitch_data_80

    goto :goto_a

    .line 833
    :pswitch_49
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnMove:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnCopy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a

    .line 838
    :pswitch_54
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnDownload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a

    .line 843
    :pswitch_5a
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a

    .line 847
    :pswitch_65
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a

    .line 821
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3d
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_5a
        :pswitch_65
    .end packed-switch

    .line 830
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_49
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method public onToastMessage(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 944
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strToastMsg:Ljava/lang/String;

    .line 945
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strToastMsg:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strToastMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 946
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runToastMsg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 947
    :cond_15
    return-void
.end method

.method public onUpdateList()V
    .registers 3

    .prologue
    .line 867
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runUpdateList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 868
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runUpdateList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 869
    return-void
.end method

.method public onUpdateMedia()V
    .registers 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runUpdateMedia:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 874
    return-void
.end method

.method public onUpdateProgress(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 861
    iput p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateState:I

    .line 862
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_runUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 863
    return-void
.end method

.method public onUpdateState(Z)V
    .registers 2
    .parameter "isUpdate"

    .prologue
    .line 800
    return-void
.end method

.method protected setAllSelected(Z)V
    .registers 7
    .parameter "isSelect"

    .prologue
    .line 1612
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->clear()V

    .line 1614
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_22

    .line 1632
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListAdapter;->notifyDataSetChanged()V

    .line 1633
    if-eqz p1, :cond_4e

    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v3

    if-eqz v3, :cond_4e

    .line 1634
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    .line 1637
    :goto_21
    return-void

    .line 1616
    :cond_22
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/file/FileListItem;

    .line 1617
    .local v2, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v2, :cond_2f

    .line 1614
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1620
    :cond_2f
    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    iget-boolean v3, v2, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v3, :cond_2c

    .line 1623
    :cond_38
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3, v1, p1}, Lcom/infraware/filemanager/file/FileListAdapter;->setSelect(IZ)Lcom/infraware/filemanager/file/FileListItem;

    .line 1625
    if-eqz p1, :cond_2c

    iget v3, v2, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2c

    .line 1627
    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileListItem;->clone()Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v0

    .line 1628
    .local v0, cloneItem:Lcom/infraware/filemanager/file/FileListItem;
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v3, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->add(Lcom/infraware/filemanager/file/FileListItem;)V

    goto :goto_2c

    .line 1636
    .end local v0           #cloneItem:Lcom/infraware/filemanager/file/FileListItem;
    .end local v2           #item:Lcom/infraware/filemanager/file/FileListItem;
    :cond_4e
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/infraware/filemanager/file/FileBaseActivity;->onShowSelectedMenu(Z)V

    goto :goto_21
.end method

.method public setCurPath(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    const/16 v4, 0x2f

    .line 200
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 228
    :cond_a
    :goto_a
    return-void

    .line 203
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 206
    .local v2, length:I
    const/4 v0, 0x0

    .line 207
    .local v0, curDepth:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-lt v1, v2, :cond_27

    .line 212
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->LOCAL_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 214
    const/4 v1, 0x0

    :goto_1a
    if-lt v1, v2, :cond_32

    .line 220
    if-ltz v0, :cond_a

    .line 222
    iput v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    .line 223
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    .line 225
    iput v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nTmpDepth:I

    .line 226
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strTmpPath:Ljava/lang/String;

    goto :goto_a

    .line 209
    :cond_27
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2f

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 207
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 216
    :cond_32
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3a

    .line 217
    add-int/lit8 v0, v0, -0x1

    .line 214
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public setCurState()V
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nTmpDepth:I

    iput v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    .line 160
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strTmpPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    .line 161
    return-void
.end method

.method protected setPivotLock(Z)V
    .registers 3
    .parameter "bLock"

    .prologue
    .line 481
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nInternalMode:I

    if-nez v0, :cond_5

    .line 484
    :goto_4
    return-void

    .line 483
    :cond_5
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    goto :goto_4
.end method

.method public setRootPath(Ljava/lang/String;)V
    .registers 2
    .parameter "rootPath"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strRootPath:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setSelectMode(I)V
    .registers 5
    .parameter "selectMode"

    .prologue
    const/4 v2, 0x1

    .line 253
    if-eqz p1, :cond_a

    .line 254
    new-instance v0, Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;

    invoke-direct {v0, p0, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectHandler:Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;

    .line 256
    :cond_a
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->clearSelectedList()V

    .line 258
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    if-eqz v0, :cond_18

    .line 259
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectHandler:Lcom/infraware/filemanager/file/FileBaseActivity$SelectHandler;

    invoke-virtual {v0, p1, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->setSelectMode(ILandroid/os/Handler;)V

    .line 261
    :cond_18
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    if-eq v0, p1, :cond_64

    .line 263
    iput p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    .line 264
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_64

    .line 266
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->clearSelectedList()V

    .line 268
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    if-ne v0, v2, :cond_3d

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->LOCAL_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5b

    .line 269
    :cond_3d
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->GOOGLE_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5b

    .line 270
    :cond_4c
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->BOXNET_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_64

    .line 272
    :cond_5b
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    if-ne v0, v2, :cond_6a

    .line 273
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->removeUpFolder()V

    .line 279
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->notifyDataSetChanged()V

    .line 280
    return-void

    .line 275
    :cond_6a
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    iget v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/file/FileListAdapter;->insertUpFolder(ILjava/lang/String;)V

    goto :goto_64
.end method

.method public setShowExt(Z)V
    .registers 3
    .parameter "isShow"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/file/FileListAdapter;->setShowExt(Z)V

    .line 310
    return-void
.end method

.method public setShowPath(Z)V
    .registers 2
    .parameter "isShow"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bShowPath:Z

    .line 250
    return-void
.end method

.method public setStorageType(ILjava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "loginId"

    .prologue
    .line 170
    packed-switch p1, :pswitch_data_2e

    .line 195
    :goto_3
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->initState()V

    .line 196
    return-void

    .line 173
    :pswitch_7
    iput p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    .line 174
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 175
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bAccountList:Z

    goto :goto_3

    .line 177
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bAccountList:Z

    goto :goto_3

    .line 181
    :pswitch_19
    iput p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    goto :goto_3

    .line 184
    :pswitch_1c
    iput p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    .line 185
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->GOOGLE_ROOT_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strStoragePath:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strStorageId:Ljava/lang/String;

    goto :goto_3

    .line 189
    :pswitch_25
    iput p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    .line 190
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->BOXNET_ROOT_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strStoragePath:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strStorageId:Ljava/lang/String;

    goto :goto_3

    .line 170
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_19
        :pswitch_1c
        :pswitch_25
    .end packed-switch
.end method

.method public setTmpState()V
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurDepth:I

    iput v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nTmpDepth:I

    .line 165
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strTmpPath:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setUpdateState(Z)V
    .registers 4
    .parameter "isUpdate"

    .prologue
    const/4 v0, 0x0

    .line 333
    iput v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I

    .line 334
    if-eqz p1, :cond_21

    :goto_5
    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bUpdatable:Z

    .line 336
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutFileList:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    .line 337
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutFileList:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bUpdatable:Z

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 339
    :cond_12
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bUpdatable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 341
    iget-boolean v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bUpdatable:Z

    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateState(Z)V

    .line 342
    return-void

    .line 334
    :cond_21
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected updateList()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1372
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->isUpdatable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1455
    :cond_7
    :goto_7
    return-void

    .line 1375
    :cond_8
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oScanProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1378
    :cond_14
    iget v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    if-ne v3, v5, :cond_57

    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strTmpPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_57

    .line 1380
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v0, current:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 1383
    .local v1, currentUpdate:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_57

    iget-wide v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nCurUpdate:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_57

    .line 1385
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/infraware/filemanager/file/FileBaseActivity;->getRootPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_57

    .line 1386
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-ne v3, v4, :cond_7

    .line 1387
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListAdapter;->notifyDataSetChanged()V

    goto :goto_7

    .line 1394
    .end local v0           #current:Ljava/io/File;
    .end local v1           #currentUpdate:J
    :cond_57
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/infraware/filemanager/file/FileBaseActivity$11;

    invoke-direct {v4, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$11;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oUpdateThread:Ljava/lang/Thread;

    .line 1418
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/infraware/filemanager/file/FileBaseActivity$12;

    invoke-direct {v4, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$12;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oProgressThread:Ljava/lang/Thread;

    .line 1450
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->setCurState()V

    .line 1451
    invoke-virtual {p0, v5}, Lcom/infraware/filemanager/file/FileBaseActivity;->setUpdateState(Z)V

    .line 1453
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oProgressThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1454
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_7
.end method

.method protected updateScreen()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1459
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1461
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1462
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileListAdapter;->setList(Ljava/util/ArrayList;)V

    .line 1464
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 1466
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    if-eqz v0, :cond_29

    .line 1467
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->sortFileList()V

    .line 1470
    :cond_29
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1472
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_d1

    .line 1474
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    if-eqz v0, :cond_88

    .line 1476
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_c5

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectedList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_c5

    .line 1478
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;

    .line 1479
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0800aa

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1480
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/infraware/filemanager/file/FileBaseActivity$13;

    invoke-direct {v1, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$13;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1497
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1498
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oSelectProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1500
    iput-boolean v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_bCancelSelect:Z

    .line 1501
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/filemanager/file/FileBaseActivity$14;

    invoke-direct {v1, p0}, Lcom/infraware/filemanager/file/FileBaseActivity$14;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1506
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1512
    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1513
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewNoSDCard:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1514
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1516
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->notifyDataSetChanged()V

    .line 1518
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oMapItemIdx:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_c9

    .line 1519
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->setCurrentPosition()V

    .line 1523
    :goto_a9
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    if-nez v0, :cond_b0

    .line 1524
    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->setUpdateState(Z)V

    .line 1558
    :cond_b0
    :goto_b0
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_c4

    .line 1560
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    if-eqz v0, :cond_12f

    .line 1561
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->insertSelector()V

    .line 1564
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->setSelectItem()V

    .line 1569
    :cond_c4
    :goto_c4
    return-void

    .line 1509
    :cond_c5
    invoke-direct {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->updateSelect()V

    goto :goto_88

    .line 1521
    :cond_c9
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_a9

    .line 1528
    :cond_d1
    iget v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nSelectMode:I

    if-eqz v0, :cond_d8

    .line 1529
    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->setSelectMode(I)V

    .line 1531
    :cond_d8
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_f5

    .line 1533
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1534
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewNoSDCard:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1535
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1555
    :goto_f1
    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->setUpdateState(Z)V

    goto :goto_b0

    .line 1539
    :cond_f5
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->isSdcard()Z

    move-result v0

    if-nez v0, :cond_124

    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->isLocalStorage()Z

    move-result v0

    if-eqz v0, :cond_124

    .line 1541
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewNoSDCard:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1542
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1544
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/file/FileBaseActivity;->getRootPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11c

    .line 1545
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_btnSelect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1553
    :cond_11c
    :goto_11c
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_f1

    .line 1549
    :cond_124
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewNoSDCard:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1550
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_viewEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11c

    .line 1567
    :cond_12f
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileAdapter:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileListAdapter;->removeSelector()V

    goto :goto_c4
.end method
