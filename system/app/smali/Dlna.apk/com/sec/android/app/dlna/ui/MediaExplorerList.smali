.class public Lcom/sec/android/app/dlna/ui/MediaExplorerList;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "MediaExplorerList.java"


# instance fields
.field public final AUDIO:I

.field private final BROWSE_ITEM_DOWN:I

.field private final CHANGE_DEVICE:I

.field private final CLASS_NAME:Ljava/lang/String;

.field private final CLEAR_LIST:I

.field private final CONTAINER_DETAILS:I

.field private final CREATE_GUI_HANDLER:I

.field private final CREATE_MEDIA_EXPLORE:I

.field private final DETAILINFO:I

.field private final DETAILS:I

.field private final DMSLIST_UPLOAD:I

.field private final DOWNLOAD_MENU:I

.field private FirstBrowse:Z

.field public final IMAGE:I

.field private final MAX_BROWSE_NUMBER:I

.field private final NEXT_PAGE_BROWSE:I

.field private final PREV_PAGE_BROWSE:I

.field private final PROGRESS:I

.field private final REFRESH_LIST:I

.field private final SETNOCONTENTS:I

.field private final SETTINGS:I

.field private final SHOWTOAST_DOWNLOADED:I

.field private final SHOWTOAST_DOWNLOAD_FAILED:I

.field private final SHOWTOAST_UPLOADED:I

.field private final SHOWTOAST_UPLOAD_FAILED:I

.field private final SHOW_TOAST_LIMIT:I

.field private final START_ANIMATION:I

.field private final START_MEDIA_EXPLORER:I

.field private final STOP_ANIMATION:I

.field private final TAG:Ljava/lang/String;

.field private final UNCHECKITEMS:I

.field private final UPLOAD_MENU:I

.field public final VIDEO:I

.field private final WHEELPROGRESS:I

.field private contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

.field private contentsList:Lcom/sec/android/app/dlna/model/Playlist;

.field private contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

.field private contentsTotalLeng:I

.field currentDMSlist:[Ljava/lang/CharSequence;

.field private detailInfo:Ljava/lang/String;

.field private fileNotFoundToast:Landroid/widget/Toast;

.field private guiHandler:Landroid/os/Handler;

.field private imageID:I

.field private isContextMenuUpload:Z

.field private isFailed:Z

.field private isRunningThumbnailThread:Z

.field private isWheelProgress:Z

.field private mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

.field private mAllDirectory:Z

.field private mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

.field private mBrowsedItemCnt:I

.field private mCurFolder:Lcom/samsung/api/ContentItem;

.field private mCurPage:I

.field private mFolderName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mItemToUpload:Lcom/sec/android/app/dlna/model/PlaylistItem;

.field private mPageItemCnt:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressHolder:Landroid/view/View;

.field private mThumbnailCreateThread:Ljava/lang/Thread;

.field private mTotalItemCnt:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mode:Ljava/lang/String;

.field private position2:Ljava/lang/String;

.field private progress:I

.field private progressDialog:Landroid/app/AlertDialog;

.field private progressDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private progressHandler:Landroid/os/Handler;

.field private receivedContentsLeng:I

.field selectedDMSID:I

.field private showCustomToast:Z

.field private textID:I

.field private type_item:Lcom/samsung/api/ContentItem;

.field private workerHandler:Landroid/os/Handler;

.field private workerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0x69

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 108
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->TAG:Ljava/lang/String;

    .line 109
    const-string v0, "MediaExplorerList."

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->CLASS_NAME:Ljava/lang/String;

    .line 117
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAllDirectory:Z

    .line 121
    iput v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->CONTAINER_DETAILS:I

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 125
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->position2:Ljava/lang/String;

    .line 127
    iput v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->VIDEO:I

    .line 128
    iput v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->AUDIO:I

    .line 129
    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->IMAGE:I

    .line 131
    iput v5, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->UPLOAD_MENU:I

    .line 133
    const/16 v0, 0x6b

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->DOWNLOAD_MENU:I

    .line 135
    const/16 v0, 0x6c

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->DETAILS:I

    .line 137
    const/16 v0, 0x6d

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->SETTINGS:I

    .line 139
    const/16 v0, 0x6e

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->CHANGE_DEVICE:I

    .line 141
    const/16 v0, 0x6f

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->NEXT_PAGE_BROWSE:I

    .line 143
    const/16 v0, 0x70

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->PREV_PAGE_BROWSE:I

    .line 145
    const/16 v0, 0xc9

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->BROWSE_ITEM_DOWN:I

    .line 147
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->REFRESH_LIST:I

    .line 149
    const/16 v0, 0x65

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->CLEAR_LIST:I

    .line 151
    const/16 v0, 0x66

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->UNCHECKITEMS:I

    .line 153
    const/16 v0, 0x68

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->SHOWTOAST_DOWNLOADED:I

    .line 155
    iput v5, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->SHOWTOAST_UPLOADED:I

    .line 157
    const/16 v0, 0x6a

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->SETNOCONTENTS:I

    .line 159
    const/16 v0, 0x6b

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->SHOWTOAST_UPLOAD_FAILED:I

    .line 161
    const/16 v0, 0x6c

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->SHOWTOAST_DOWNLOAD_FAILED:I

    .line 163
    const/16 v0, 0x6d

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->START_ANIMATION:I

    .line 165
    const/16 v0, 0x6e

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->STOP_ANIMATION:I

    .line 167
    const/16 v0, 0x6f

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->SHOW_TOAST_LIMIT:I

    .line 169
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    .line 171
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;

    .line 173
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;

    .line 179
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->FirstBrowse:Z

    .line 195
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->CREATE_MEDIA_EXPLORE:I

    .line 196
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->CREATE_GUI_HANDLER:I

    .line 197
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->START_MEDIA_EXPLORER:I

    .line 199
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mode:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->type_item:Lcom/samsung/api/ContentItem;

    .line 203
    iput v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mBrowsedItemCnt:I

    .line 205
    iput v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I

    .line 207
    iput v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I

    .line 209
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mFolderName:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 213
    iput v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I

    .line 215
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurFolder:Lcom/samsung/api/ContentItem;

    .line 217
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->MAX_BROWSE_NUMBER:I

    .line 219
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isRunningThumbnailThread:Z

    .line 226
    new-instance v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$1;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mHandler:Landroid/os/Handler;

    .line 1346
    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->DMSLIST_UPLOAD:I

    .line 1348
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->PROGRESS:I

    .line 1350
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->WHEELPROGRESS:I

    .line 1352
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->DETAILINFO:I

    .line 1356
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->detailInfo:Ljava/lang/String;

    .line 1358
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isWheelProgress:Z

    .line 1577
    iput v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progress:I

    .line 1579
    iput v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsTotalLeng:I

    .line 1581
    iput v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->receivedContentsLeng:I

    .line 1583
    new-instance v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressHandler:Landroid/os/Handler;

    .line 1885
    new-instance v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$17;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private ChangePage()V
    .registers 7

    .prologue
    .line 1058
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    if-eqz v4, :cond_7

    .line 1059
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 1062
    :cond_7
    const/4 v3, 0x0

    .line 1063
    .local v3, wait_time:I
    :goto_8
    iget-boolean v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isRunningThumbnailThread:Z

    if-eqz v4, :cond_14

    .line 1065
    const-wide/16 v4, 0x64

    :try_start_e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_56

    .line 1069
    :goto_11
    const/4 v4, 0x4

    if-le v3, v4, :cond_5b

    .line 1074
    :cond_14
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1077
    :try_start_1b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v1

    .line 1078
    .local v1, historyStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;>;"
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_30
    .catch Ljava/util/EmptyStackException; {:try_start_1b .. :try_end_30} :catch_5e

    .line 1083
    .end local v1           #historyStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;>;"
    :goto_30
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->clearThumbnailHash()V

    .line 1085
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 1086
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 1087
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;

    const/16 v5, 0xc9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1088
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurFolder:Lcom/samsung/api/ContentItem;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1089
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 1090
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1091
    return-void

    .line 1066
    .end local v2           #msg:Landroid/os/Message;
    :catch_56
    move-exception v0

    .line 1067
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11

    .line 1071
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1079
    :catch_5e
    move-exception v0

    .line 1080
    .local v0, e:Ljava/util/EmptyStackException;
    invoke-virtual {v0}, Ljava/util/EmptyStackException;->printStackTrace()V

    goto :goto_30
.end method

.method private CreateThumbnailThread()V
    .registers 3

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1770
    :goto_6
    return-void

    .line 1691
    :cond_7
    const-string v0, "DLNA"

    const-string v1, "MediaExplorerList.CreateThumbnailThread in"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getThumbnailHash()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->setThumbnailArray(Ljava/util/HashMap;)V

    .line 1698
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 1766
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1767
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1769
    const-string v0, "DLNA"

    const-string v1, "MediaExplorerList.CreateThumbnailThread out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->makeWorkThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->makeGuiHandler()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->fillList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mBrowsedItemCnt:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mBrowsedItemCnt:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->CreateThumbnailThread()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/HandlerThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->FirstBrowse:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->FirstBrowse:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->position2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/samsung/api/ContentItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->type_item:Lcom/samsung/api/ContentItem;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Lcom/samsung/api/ContentItem;)Lcom/samsung/api/ContentItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->type_item:Lcom/samsung/api/ContentItem;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->makeInitExplorer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->checkallDirectory()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAllDirectory:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/MultiSelectListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showDownloadProgressDialog(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showCustomToast:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showCustomToast:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->fileNotFoundToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showUploadProgressDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setSelectedDMS_Upload(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsTotalLeng:I

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsTotalLeng:I

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isWheelProgress:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progress:I

    return v0
.end method

.method static synthetic access$3512(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progress:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->receivedContentsLeng:I

    return v0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->receivedContentsLeng:I

    return p1
.end method

.method static synthetic access$3702(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isRunningThumbnailThread:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getThumbFromURI(Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->clearList()V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Lcom/samsung/api/ContentItem;)Lcom/samsung/api/ContentItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurFolder:Lcom/samsung/api/ContentItem;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mFolderName:Ljava/lang/String;

    return-object p1
.end method

.method private checkallDirectory()V
    .registers 5

    .prologue
    .line 1327
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAllDirectory:Z

    .line 1328
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;

    if-nez v2, :cond_8

    .line 1338
    :cond_7
    :goto_7
    return-void

    .line 1331
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 1332
    .local v1, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    .line 1333
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAllDirectory:Z

    goto :goto_7
.end method

.method private clearList()V
    .registers 3

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1324
    :cond_b
    return-void
.end method

.method private downloadContentsToLocal(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dlna/model/PlaylistItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, playlistItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    const/4 v3, 0x0

    .line 1558
    iput v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progress:I

    .line 1559
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsTotalLeng:I

    .line 1560
    iput v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->receivedContentsLeng:I

    .line 1561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    .local v1, selectedItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/ContentItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2a

    .line 1563
    const/4 v0, 0x0

    .local v0, position:I
    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 1564
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1568
    .end local v0           #position:I
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1569
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1571
    :cond_37
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1573
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->cancelDownload(Z)Z

    .line 1574
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->downloadContents(Ljava/util/ArrayList;)V

    .line 1575
    return-void
.end method

.method private fillList(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1314
    .local p1, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_13

    .line 1315
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1316
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1317
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1319
    .end local v0           #msg:Landroid/os/Message;
    :cond_13
    return-void
.end method

.method private folderUp()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x400

    const/4 v5, 0x0

    .line 1255
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_d0

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 1258
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->clearList()V

    .line 1259
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v1

    .line 1261
    if-eqz v1, :cond_32

    :try_start_29
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1262
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_4e

    .line 1267
    :cond_32
    :goto_32
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1268
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1269
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1270
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    .line 1311
    :goto_4d
    return-void

    .line 1264
    :catch_4e
    move-exception v0

    .line 1265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    .line 1272
    :cond_53
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-ne v0, v3, :cond_6c

    .line 1274
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setResult(I)V

    .line 1275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1276
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1277
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    goto :goto_4d

    .line 1280
    :cond_6c
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setHeaderName()V

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1283
    if-eqz v1, :cond_c9

    .line 1284
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c2

    .line 1285
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1294
    :goto_8f
    const-string v0, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending msg3 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1296
    if-eqz v1, :cond_bf

    .line 1297
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->fillList(Ljava/util/List;)V

    .line 1299
    :cond_bf
    iput v5, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I

    goto :goto_4d

    .line 1287
    :cond_c2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_8f

    .line 1290
    :cond_c9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_8f

    .line 1306
    :cond_d0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1307
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1308
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4d
.end method

.method private getThumbFromURI(Lcom/samsung/api/ContentItem;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1773
    .line 1775
    if-eqz p2, :cond_b4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b4

    .line 1781
    :try_start_9
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1784
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1786
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v1, :cond_23

    .line 1787
    const-string v1, "Android_DMC"

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 1789
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1790
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_18b
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_2c} :catch_c9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2c} :catch_f2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_2c} :catch_118
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_155

    move-result-object v6

    .line 1791
    :try_start_2d
    new-instance v5, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v5, v6}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_214
    .catch Ljava/net/MalformedURLException; {:try_start_2d .. :try_end_32} :catch_28d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_271
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2d .. :try_end_32} :catch_255
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_239

    .line 1792
    :try_start_32
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_21b
    .catch Ljava/net/MalformedURLException; {:try_start_32 .. :try_end_35} :catch_294
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_277
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_35} :catch_25b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_23f

    move-result-object v2

    .line 1793
    :try_start_36
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_221
    .catch Ljava/net/MalformedURLException; {:try_start_36 .. :try_end_3b} :catch_29b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_27c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_3b} :catch_260
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_244

    .line 1794
    :try_start_3b
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1796
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1797
    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1801
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1802
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 1804
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_227
    .catch Ljava/net/MalformedURLException; {:try_start_3b .. :try_end_50} :catch_2a2
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_50} :catch_281
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_50} :catch_265
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_50} :catch_249

    move-result-object v4

    .line 1805
    :try_start_51
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_22c
    .catch Ljava/net/MalformedURLException; {:try_start_51 .. :try_end_56} :catch_2aa
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_286
    .catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_56} :catch_26a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_24e

    .line 1807
    :try_start_56
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1808
    div-int/lit8 v3, v3, 0x63

    add-int/lit8 v3, v3, 0x1

    .line 1809
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1810
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1811
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1812
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1814
    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1815
    if-eqz v1, :cond_2b7

    .line 1821
    sget v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDensityDpi:I

    const/16 v7, 0xf0

    if-ne v3, v7, :cond_8a

    .line 1822
    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_b5

    .line 1823
    const/16 v3, 0x6b

    const/16 v7, 0x50

    const/4 v8, 0x1

    invoke-static {v1, v3, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1827
    :cond_8a
    :goto_8a
    sget v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDensityDpi:I

    const/16 v7, 0x140

    if-ne v3, v7, :cond_2b7

    .line 1828
    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_bf

    .line 1829
    const/16 v3, 0xab

    const/16 v7, 0x68

    const/4 v8, 0x1

    invoke-static {v1, v3, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_9f
    .catchall {:try_start_56 .. :try_end_9f} :catchall_230
    .catch Ljava/net/MalformedURLException; {:try_start_56 .. :try_end_9f} :catch_2b1
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_9f} :catch_28a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_56 .. :try_end_9f} :catch_26e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_9f} :catch_252

    move-result-object v0

    .line 1857
    :goto_a0
    if-eqz v6, :cond_a5

    .line 1858
    :try_start_a2
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_1ff

    .line 1863
    :cond_a5
    :goto_a5
    if-eqz v5, :cond_aa

    .line 1864
    :try_start_a7
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_205

    .line 1869
    :cond_aa
    :goto_aa
    if-eqz v4, :cond_af

    .line 1870
    :try_start_ac
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_20b

    .line 1875
    :cond_af
    :goto_af
    if-eqz v2, :cond_b4

    .line 1876
    :try_start_b1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_211

    .line 1882
    :cond_b4
    :goto_b4
    return-object v0

    .line 1825
    :cond_b5
    const/16 v3, 0x50

    const/16 v7, 0x50

    const/4 v8, 0x1

    :try_start_ba
    invoke-static {v1, v3, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_8a

    .line 1831
    :cond_bf
    const/16 v3, 0x68

    const/16 v7, 0x68

    const/4 v8, 0x1

    invoke-static {v1, v3, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_c7
    .catchall {:try_start_ba .. :try_end_c7} :catchall_230
    .catch Ljava/net/MalformedURLException; {:try_start_ba .. :try_end_c7} :catch_2b1
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c7} :catch_28a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ba .. :try_end_c7} :catch_26e
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c7} :catch_252

    move-result-object v0

    goto :goto_a0

    .line 1840
    :catch_c9
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    .line 1842
    :goto_ce
    :try_start_ce
    const-string v6, "DLNA"

    const-string v7, "MalformedURLException "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_233

    .line 1857
    if-eqz v5, :cond_dd

    .line 1858
    :try_start_da
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_1ba

    .line 1863
    :cond_dd
    :goto_dd
    if-eqz v4, :cond_e2

    .line 1864
    :try_start_df
    invoke-virtual {v4}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_1c0

    .line 1869
    :cond_e2
    :goto_e2
    if-eqz v3, :cond_e7

    .line 1870
    :try_start_e4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_1c6

    .line 1875
    :cond_e7
    :goto_e7
    if-eqz v2, :cond_b4

    .line 1876
    :try_start_e9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ed

    goto :goto_b4

    .line 1877
    :catch_ed
    move-exception v1

    .line 1878
    :goto_ee
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b4

    .line 1844
    :catch_f2
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    .line 1846
    :goto_f7
    :try_start_f7
    const-string v3, "DLNA"

    const-string v7, "IOException "

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_101
    .catchall {:try_start_f7 .. :try_end_101} :catchall_230

    .line 1857
    if-eqz v6, :cond_106

    .line 1858
    :try_start_103
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_1cc

    .line 1863
    :cond_106
    :goto_106
    if-eqz v5, :cond_10b

    .line 1864
    :try_start_108
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_1d2

    .line 1869
    :cond_10b
    :goto_10b
    if-eqz v4, :cond_110

    .line 1870
    :try_start_10d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_1d8

    .line 1875
    :cond_110
    :goto_110
    if-eqz v2, :cond_b4

    .line 1876
    :try_start_112
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116

    goto :goto_b4

    .line 1877
    :catch_116
    move-exception v1

    goto :goto_ee

    .line 1848
    :catch_118
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    .line 1850
    :goto_11d
    :try_start_11d
    const-string v1, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError : Total memory is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catchall {:try_start_11d .. :try_end_13d} :catchall_230

    .line 1857
    if-eqz v6, :cond_142

    .line 1858
    :try_start_13f
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_1de

    .line 1863
    :cond_142
    :goto_142
    if-eqz v5, :cond_147

    .line 1864
    :try_start_144
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_1e4

    .line 1869
    :cond_147
    :goto_147
    if-eqz v4, :cond_14c

    .line 1870
    :try_start_149
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_1ea

    .line 1875
    :cond_14c
    :goto_14c
    if-eqz v2, :cond_b4

    .line 1876
    :try_start_14e
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_153

    goto/16 :goto_b4

    .line 1877
    :catch_153
    move-exception v1

    goto :goto_ee

    .line 1852
    :catch_155
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    .line 1854
    :goto_15a
    :try_start_15a
    const-string v3, "DLNA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HttpGet 4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_172
    .catchall {:try_start_15a .. :try_end_172} :catchall_230

    .line 1857
    if-eqz v6, :cond_177

    .line 1858
    :try_start_174
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_1f0

    .line 1863
    :cond_177
    :goto_177
    if-eqz v5, :cond_17c

    .line 1864
    :try_start_179
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_1f5

    .line 1869
    :cond_17c
    :goto_17c
    if-eqz v4, :cond_181

    .line 1870
    :try_start_17e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_1fa

    .line 1875
    :cond_181
    :goto_181
    if-eqz v2, :cond_b4

    .line 1876
    :try_start_183
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_188

    goto/16 :goto_b4

    .line 1877
    :catch_188
    move-exception v1

    goto/16 :goto_ee

    .line 1856
    :catchall_18b
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v0, v1

    .line 1857
    :goto_191
    if-eqz v6, :cond_196

    .line 1858
    :try_start_193
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_196} :catch_1a6

    .line 1863
    :cond_196
    :goto_196
    if-eqz v5, :cond_19b

    .line 1864
    :try_start_198
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_1ab

    .line 1869
    :cond_19b
    :goto_19b
    if-eqz v4, :cond_1a0

    .line 1870
    :try_start_19d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_1b0

    .line 1875
    :cond_1a0
    :goto_1a0
    if-eqz v2, :cond_1a5

    .line 1876
    :try_start_1a2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a5} :catch_1b5

    .line 1856
    :cond_1a5
    :goto_1a5
    throw v0

    .line 1859
    :catch_1a6
    move-exception v1

    .line 1860
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_196

    .line 1865
    :catch_1ab
    move-exception v1

    .line 1866
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19b

    .line 1871
    :catch_1b0
    move-exception v1

    .line 1872
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a0

    .line 1877
    :catch_1b5
    move-exception v1

    .line 1878
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a5

    .line 1859
    :catch_1ba
    move-exception v1

    .line 1860
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_dd

    .line 1865
    :catch_1c0
    move-exception v1

    .line 1866
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e2

    .line 1871
    :catch_1c6
    move-exception v1

    .line 1872
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e7

    .line 1859
    :catch_1cc
    move-exception v1

    .line 1860
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_106

    .line 1865
    :catch_1d2
    move-exception v1

    .line 1866
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10b

    .line 1871
    :catch_1d8
    move-exception v1

    .line 1872
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_110

    .line 1859
    :catch_1de
    move-exception v1

    .line 1860
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_142

    .line 1865
    :catch_1e4
    move-exception v1

    .line 1866
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_147

    .line 1871
    :catch_1ea
    move-exception v1

    .line 1872
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14c

    .line 1859
    :catch_1f0
    move-exception v1

    .line 1860
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_177

    .line 1865
    :catch_1f5
    move-exception v1

    .line 1866
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17c

    .line 1871
    :catch_1fa
    move-exception v1

    .line 1872
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_181

    .line 1859
    :catch_1ff
    move-exception v1

    .line 1860
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a5

    .line 1865
    :catch_205
    move-exception v1

    .line 1866
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_aa

    .line 1871
    :catch_20b
    move-exception v1

    .line 1872
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_af

    .line 1877
    :catch_211
    move-exception v1

    goto/16 :goto_ee

    .line 1856
    :catchall_214
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    move-object v0, v1

    goto/16 :goto_191

    :catchall_21b
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    goto/16 :goto_191

    :catchall_221
    move-exception v1

    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_191

    :catchall_227
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_191

    :catchall_22c
    move-exception v0

    move-object v2, v3

    goto/16 :goto_191

    :catchall_230
    move-exception v0

    goto/16 :goto_191

    :catchall_233
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_191

    .line 1852
    :catch_239
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_15a

    :catch_23f
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    goto/16 :goto_15a

    :catch_244
    move-exception v1

    move-object v4, v2

    move-object v2, v0

    goto/16 :goto_15a

    :catch_249
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_15a

    :catch_24e
    move-exception v1

    move-object v2, v3

    goto/16 :goto_15a

    :catch_252
    move-exception v1

    goto/16 :goto_15a

    .line 1848
    :catch_255
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_11d

    :catch_25b
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    goto/16 :goto_11d

    :catch_260
    move-exception v1

    move-object v4, v2

    move-object v2, v0

    goto/16 :goto_11d

    :catch_265
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_11d

    :catch_26a
    move-exception v1

    move-object v2, v3

    goto/16 :goto_11d

    :catch_26e
    move-exception v1

    goto/16 :goto_11d

    .line 1844
    :catch_271
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_f7

    :catch_277
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    goto/16 :goto_f7

    :catch_27c
    move-exception v1

    move-object v4, v2

    move-object v2, v0

    goto/16 :goto_f7

    :catch_281
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_f7

    :catch_286
    move-exception v1

    move-object v2, v3

    goto/16 :goto_f7

    :catch_28a
    move-exception v1

    goto/16 :goto_f7

    .line 1840
    :catch_28d
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v6

    goto/16 :goto_ce

    :catch_294
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_ce

    :catch_29b
    move-exception v1

    move-object v3, v2

    move-object v4, v5

    move-object v2, v0

    move-object v5, v6

    goto/16 :goto_ce

    :catch_2a2
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_ce

    :catch_2aa
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_ce

    :catch_2b1
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_ce

    :cond_2b7
    move-object v0, v1

    goto/16 :goto_a0
.end method

.method private makeGuiHandler()V
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 458
    new-instance v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$3;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    .line 566
    :cond_b
    return-void
.end method

.method private makeInitExplorer()V
    .registers 3

    .prologue
    .line 249
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->setProgressHandler(Landroid/os/Handler;)V

    .line 250
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->setProgressHandler(Landroid/os/Handler;)V

    .line 251
    return-void
.end method

.method private makeWorkThread()V
    .registers 4

    .prologue
    const/16 v2, 0xc9

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_78

    .line 259
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaExplorerList Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 261
    new-instance v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setHeaderName()V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 439
    :try_start_33
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isChangedLocale:Z

    if-eqz v0, :cond_78

    .line 441
    :cond_4d
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isChangedLocale:Z

    if-eqz v0, :cond_64

    .line 442
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 443
    :cond_64
    const-string v0, "DLNA"

    const-string v1, "obtainMessage(BROWSE_ITEM_DOWN)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_78
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_78} :catch_79

    .line 454
    :cond_78
    :goto_78
    return-void

    .line 447
    :catch_79
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_78

    .line 451
    :cond_7e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    goto :goto_78
.end method

.method private setHeaderName()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1237
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-ne v0, v3, :cond_1b

    .line 1238
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setTitle(Ljava/lang/CharSequence;)V

    .line 1251
    :goto_1a
    return-void

    .line 1241
    :cond_1b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;

    .line 1242
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getParent()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_45

    .line 1244
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1247
    :cond_45
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getParent()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method private setSelectedDMS_Upload(I)V
    .registers 2
    .parameter "whichButton"

    .prologue
    .line 1490
    iput p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->selectedDMSID:I

    .line 1491
    return-void
.end method

.method private showDownloadProgressDialog(Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dlna/model/PlaylistItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1496
    .local p1, playlistItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z

    .line 1497
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->setDownloadingContentName(Ljava/lang/String;)V

    .line 1498
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showDialog(I)V

    .line 1499
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->downloadContentsToLocal(Ljava/util/ArrayList;)V

    .line 1500
    return-void
.end method

.method private showUploadProgressDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1503
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z

    .line 1504
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showDialog(I)V

    .line 1505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    iget-boolean v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isContextMenuUpload:Z

    if-eqz v3, :cond_2d

    .line 1507
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isContextMenuUpload:Z

    .line 1508
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mItemToUpload:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    :cond_17
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1517
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1519
    :cond_24
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1521
    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->uploadContentsToAnotherServer(Ljava/util/ArrayList;)V

    .line 1522
    return-void

    .line 1510
    :cond_2d
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 1511
    .local v1, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    .line 1512
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33
.end method

.method private uploadContentsToAnotherServer(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dlna/model/PlaylistItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1525
    const-string v0, "DLNA"

    const-string v1, "uploadContentsToAnotherServer called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iput v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progress:I

    .line 1527
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsTotalLeng:I

    .line 1528
    iput v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->receivedContentsLeng:I

    .line 1529
    const/4 v1, 0x0

    move v2, v3

    .line 1532
    :goto_11
    :try_start_11
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_40

    .line 1533
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mode:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1534
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mode:Ljava/lang/String;

    .line 1532
    :goto_3b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_11

    .line 1535
    :cond_40
    const-string v0, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetUdn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_11 .. :try_end_58} :catch_82
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_58} :catch_96

    .line 1544
    :goto_58
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgress:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1545
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1546
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_87

    move v2, v3

    .line 1547
    :goto_6b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_87

    .line 1548
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6b

    .line 1539
    :catch_82
    move-exception v0

    .line 1540
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_58

    .line 1552
    :cond_87
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->cancelUpload(Z)Z

    .line 1553
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->postContents(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1555
    return-void

    .line 1541
    :catch_96
    move-exception v0

    goto :goto_58

    :cond_98
    move-object v0, v1

    goto :goto_3b
.end method


# virtual methods
.method public checkNoContents(Z)V
    .registers 7
    .parameter "contentExists"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 595
    iget v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->imageID:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 596
    .local v1, emptyview:Landroid/widget/ImageView;
    iget v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->textID:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 598
    .local v0, emptytext:Landroid/widget/TextView;
    if-eqz p1, :cond_1c

    .line 599
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    :goto_1b
    return-void

    .line 602
    :cond_1c
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1b
.end method

.method public initView()V
    .registers 12

    .prologue
    const v10, 0x7f070012

    const/16 v9, 0x19a

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 614
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->position2:Ljava/lang/String;

    if-nez v4, :cond_52

    .line 615
    iput v10, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->imageID:I

    .line 616
    const v4, 0x7f070013

    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->textID:I

    .line 631
    :goto_13
    iget v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->imageID:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 632
    .local v3, emptyview:Landroid/widget/ImageView;
    iget v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->textID:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 634
    .local v2, emptytext:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 635
    .local v0, P1:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 636
    .local v1, P2:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_c4

    .line 637
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v4, v7, :cond_aa

    .line 638
    const/16 v4, 0xb9

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 639
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 659
    :cond_4b
    :goto_4b
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    return-void

    .line 617
    .end local v0           #P1:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #P2:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #emptytext:Landroid/widget/TextView;
    .end local v3           #emptyview:Landroid/widget/ImageView;
    :cond_52
    const v4, 0x7f090006

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->position2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 618
    const v4, 0x7f070027

    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->imageID:I

    .line 619
    const v4, 0x7f07002a

    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->textID:I

    goto :goto_13

    .line 620
    :cond_6c
    const v4, 0x7f090073

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->position2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 621
    const v4, 0x7f070029

    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->imageID:I

    .line 622
    const v4, 0x7f07002c

    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->textID:I

    goto :goto_13

    .line 623
    :cond_86
    const v4, 0x7f090041

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->position2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 624
    const v4, 0x7f070028

    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->imageID:I

    .line 625
    const v4, 0x7f07002b

    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->textID:I

    goto/16 :goto_13

    .line 627
    :cond_a1
    iput v10, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->imageID:I

    .line 628
    const v4, 0x7f070013

    iput v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->textID:I

    goto/16 :goto_13

    .line 640
    .restart local v0       #P1:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #P2:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2       #emptytext:Landroid/widget/TextView;
    .restart local v3       #emptyview:Landroid/widget/ImageView;
    :cond_aa
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v4, v8, :cond_bb

    .line 641
    const/16 v4, 0xcd

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 642
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_4b

    .line 644
    :cond_bb
    const/16 v4, 0x50

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 645
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_4b

    .line 647
    :cond_c4
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_4b

    .line 648
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v4, v7, :cond_e0

    .line 649
    invoke-virtual {v0, v6, v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 650
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4b

    .line 651
    :cond_e0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v4, v8, :cond_f0

    .line 652
    invoke-virtual {v0, v6, v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 653
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4b

    .line 655
    :cond_f0
    const/16 v4, 0xf0

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 656
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4b
.end method

.method public notifyActivityEvent(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 1894
    packed-switch p1, :pswitch_data_18

    .line 1903
    :goto_3
    :pswitch_3
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->notifyActivityEvent(I)V

    .line 1904
    return-void

    .line 1896
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->finish()V

    goto :goto_3

    .line 1899
    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->cancelDownload(Z)Z

    .line 1900
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->finish()V

    goto :goto_3

    .line 1894
    nop

    :pswitch_data_18
    .packed-switch 0x2f2
        :pswitch_b
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 1478
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    if-ne p2, v1, :cond_c

    .line 1481
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setResult(I)V

    .line 1482
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->finish()V

    .line 1484
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1485
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 1098
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->isMultiSelectMode()Z

    move-result v1

    if-ne v0, v1, :cond_17

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setMultiSelectMode(Z)V

    .line 1129
    :goto_16
    return-void

    .line 1104
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 1108
    :cond_1e
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->folderUp()V

    goto :goto_16
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 608
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 609
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->initView()V

    .line 610
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/high16 v5, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 1165
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 1166
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_124

    .line 1231
    :goto_11
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1170
    :sswitch_16
    const-string v0, "DLNA"

    const-string v1, "Details"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 1172
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1173
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 1174
    new-instance v1, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;

    invoke-direct {v1, v0}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;-><init>(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 1175
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "detail"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 1182
    :sswitch_47
    const-string v0, "DLNA"

    const-string v1, "download is called....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 1184
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1185
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 1186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v2

    if-eq v2, v3, :cond_90

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    :cond_90
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 1194
    invoke-direct {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showDownloadProgressDialog(Ljava/util/ArrayList;)V

    goto/16 :goto_11

    .line 1204
    :cond_a9
    const v0, 0x7f09001e

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_11

    .line 1210
    :sswitch_b5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isContextMenuUpload:Z

    .line 1212
    const-string v0, "DLNA"

    const-string v1, "upload is called....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 1214
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1215
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mItemToUpload:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mItemToUpload:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v0

    if-eq v0, v3, :cond_101

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mItemToUpload:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_118

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mItemToUpload:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_118

    .line 1219
    :cond_101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MODE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 1224
    :cond_118
    const v0, 0x7f09006a

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_11

    .line 1167
    :sswitch_data_124
    .sparse-switch
        0x1 -> :sswitch_16
        0x69 -> :sswitch_b5
        0x6b -> :sswitch_47
        0x6c -> :sswitch_16
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f09000a

    const/4 v4, 0x0

    .line 666
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 667
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setTitle(Ljava/lang/CharSequence;)V

    .line 668
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setContentView(I)V

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 674
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPowerManager:Landroid/os/PowerManager;

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 677
    const v0, 0x7f090039

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->fileNotFoundToast:Landroid/widget/Toast;

    .line 680
    new-instance v0, Lcom/sec/android/app/dlna/model/Playlist;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/model/Playlist;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;

    .line 681
    new-instance v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    const v1, 0x7f030011

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 683
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    .line 684
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_df

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    const v1, 0x7f090068

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setButtonText(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :goto_8d
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setOnLeftClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$5;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setOnRightClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->registerForContextMenu(Landroid/view/View;)V

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setAdapter(Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;)V

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setMultiSelectMode(Z)V

    .line 755
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->position2:Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    new-instance v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$6;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 896
    return-void

    .line 689
    :cond_df
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    const v1, 0x7f09001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setButtonText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1132
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1133
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1134
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1135
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 1137
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 1162
    :goto_17
    return-void

    .line 1143
    :pswitch_18
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1147
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getSelectedDevice()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1148
    const/16 v0, 0x69

    const v1, 0x7f090068

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1151
    :goto_31
    const/16 v0, 0x6c

    const/4 v1, 0x2

    const v2, 0x7f09001b

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_17

    .line 1150
    :cond_3b
    const/16 v0, 0x6b

    const v1, 0x7f09001d

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_31

    .line 1137
    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f09003f

    const/4 v5, 0x1

    const v4, 0x7f09000a

    const/4 v3, 0x0

    .line 1365
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgressHolder:Landroid/view/View;

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgressHolder:Landroid/view/View;

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgress:Landroid/widget/ProgressBar;

    .line 1368
    packed-switch p1, :pswitch_data_158

    .line 1463
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_2a
    return-object v0

    .line 1370
    :pswitch_2b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->currentDMSlist:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/sec/android/app/dlna/ui/MediaExplorerList$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$9;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$8;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$7;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2a

    .line 1390
    :pswitch_5d
    const-string v0, "DLNA"

    const-string v1, "Progress dialog created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isWheelProgress:Z

    .line 1392
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1394
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090068

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1397
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1398
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgressHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1399
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/MediaExplorerList$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$10;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1409
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$11;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1417
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialog:Landroid/app/AlertDialog;

    .line 1418
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2a

    .line 1421
    :pswitch_b7
    iput-boolean v5, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isWheelProgress:Z

    .line 1422
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1423
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getDownloadingContentName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_137

    .line 1424
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getDownloadingContentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1429
    :goto_fb
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgressHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1432
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/MediaExplorerList$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$12;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1442
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$13;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialog:Landroid/app/AlertDialog;

    .line 1451
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2a

    .line 1427
    :cond_137
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_fb

    .line 1454
    :pswitch_13f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1455
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->detailInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/MediaExplorerList$14;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$14;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1461
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2a

    .line 1368
    :pswitch_data_158
    .packed-switch 0x2
        :pswitch_2b
        :pswitch_5d
        :pswitch_b7
        :pswitch_13f
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 937
    const/16 v0, 0x69

    const v1, 0x7f090068

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020043

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 939
    const/16 v0, 0x6b

    const/4 v1, 0x1

    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 941
    const/16 v0, 0x6d

    const/4 v1, 0x2

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 943
    const/16 v0, 0x6e

    const/4 v1, 0x3

    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 945
    const/16 v0, 0x70

    const/4 v1, 0x4

    const v2, 0x7f090050

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 947
    const/16 v0, 0x6f

    const/4 v1, 0x5

    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 950
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 912
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onDestroy()V

    .line 915
    const-string v0, "DLNA"

    const-string v1, "MediaExplorer destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 920
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_23

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 922
    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;

    .line 925
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_29

    .line 926
    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 929
    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_32

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 932
    :cond_32
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->clearThumbnailHash()V

    .line 933
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 934
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1005
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_b6

    .line 1052
    :pswitch_9
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1054
    :cond_d
    :goto_d
    return v0

    .line 1007
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    if-eqz v1, :cond_21

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setMultiSelectMode(Z)V

    .line 1009
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    goto :goto_d

    .line 1011
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09006a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 1016
    :pswitch_34
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    if-eqz v1, :cond_47

    .line 1017
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/MultiSelectListView;->setMultiSelectMode(Z)V

    .line 1018
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    goto :goto_d

    .line 1020
    :cond_47
    const v1, 0x7f09001e

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 1026
    :pswitch_52
    :try_start_52
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_62} :catch_63

    goto :goto_d

    .line 1028
    :catch_63
    move-exception v1

    .line 1029
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check the Exception on softKey fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1033
    :pswitch_7d
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->finish()V

    goto :goto_d

    .line 1036
    :pswitch_81
    const-string v1, "DLNA"

    const-string v2, "NEXT_PAGE_BROWSE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 1039
    iget v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I

    .line 1040
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->ChangePage()V

    goto/16 :goto_d

    .line 1044
    :pswitch_9b
    const-string v1, "DLNA"

    const-string v2, "PREV_PAGE_BROWSE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 1047
    iget v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I

    .line 1048
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->ChangePage()V

    goto/16 :goto_d

    .line 1005
    nop

    :pswitch_data_b6
    .packed-switch 0x69
        :pswitch_e
        :pswitch_9
        :pswitch_34
        :pswitch_9
        :pswitch_52
        :pswitch_7d
        :pswitch_81
        :pswitch_9b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 904
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPause()V

    .line 905
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1467
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1468
    packed-switch p1, :pswitch_data_10

    .line 1474
    :goto_6
    return-void

    :pswitch_7
    move-object v0, p2

    .line 1470
    check-cast v0, Landroid/app/AlertDialog;

    .line 1471
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->detailInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1468
    :pswitch_data_10
    .packed-switch 0x5
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 954
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 956
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mAllDirectory:Z

    if-eqz v1, :cond_39

    .line 957
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 958
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 959
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 960
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 961
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 962
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1001
    :goto_38
    return v0

    .line 964
    :cond_39
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_95

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 966
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 967
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 972
    :goto_5f
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 973
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 975
    iget v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_cf

    .line 977
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 978
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 979
    iget v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I

    if-nez v1, :cond_a4

    .line 981
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 982
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_38

    .line 969
    :cond_95
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 970
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5f

    .line 984
    :cond_a4
    iget v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I

    iget v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I

    mul-int/lit16 v2, v2, 0x1f4

    sub-int/2addr v1, v2

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_bf

    .line 986
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 987
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_38

    .line 991
    :cond_bf
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 992
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_38

    .line 997
    :cond_cf
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 998
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_38
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 569
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V

    .line 570
    const-string v0, "DLNA"

    const-string v1, "MediaExplorerList View is Resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 572
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    if-nez v0, :cond_20

    .line 573
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->finish()V

    .line 592
    :goto_1f
    return-void

    .line 577
    :cond_20
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->GetUploadServerUdn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mode:Ljava/lang/String;

    .line 578
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->ClearUploadServerUdn()V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mode:Ljava/lang/String;

    if-eqz v0, :cond_61

    .line 581
    const-string v0, "DLNA"

    const-string v1, "MediaExplorerList View is UPLOAD_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->GetTapMode()Z

    move-result v0

    if-ne v0, v2, :cond_61

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 585
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showUploadProgressDialog()V

    .line 588
    :cond_61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showCustomToast:Z

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setLeftEnabled(Z)V

    goto :goto_1f
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 899
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onStart()V

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 901
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 908
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onStop()V

    .line 909
    return-void
.end method
