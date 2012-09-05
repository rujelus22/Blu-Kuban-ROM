.class public Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;
.super Landroid/app/ListActivity;
.source "FTSListForDownloading.java"


# instance fields
.field private bRegisterReceiver:Z

.field private mBind:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

.field private mHandler:Landroid/os/Handler;

.field mSdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/SessionData;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

.field private mShowUploadPopup:Z

.field private mShowWaitPopup:Z

.field m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBind:Z

    .line 43
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    .line 44
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mService:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    .line 50
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->bRegisterReceiver:Z

    .line 422
    new-instance v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mHandler:Landroid/os/Handler;

    .line 475
    new-instance v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$6;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCallback:Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;

    .line 483
    new-instance v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$7;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mConnection:Landroid/content/ServiceConnection;

    .line 517
    new-instance v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$8;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->cancelDownload()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->updateList()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCallback:Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mService:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;)Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mService:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBind:Z

    return p1
.end method

.method private cancelDownload()V
    .registers 6

    .prologue
    .line 381
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_DOWNLOAD_CANCELED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, i:Landroid/content/Intent;
    const-string v2, "SESSIONID"

    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v3, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 389
    .end local v1           #i:Landroid/content/Intent;
    :goto_13
    return-void

    .line 385
    :catch_14
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[FT]-Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTSListForDownloading :Exception on cancel download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private declared-synchronized updateList()V
    .registers 10

    .prologue
    const/16 v8, 0x44f

    .line 171
    monitor-enter p0

    const/4 v1, 0x0

    .line 174
    .local v1, findMySession:Z
    :try_start_4
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->clear()V

    .line 175
    sget-object v5, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 177
    .local v4, session:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    move-object v3, v4

    .line 178
    .local v3, obj:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    if-eqz v3, :cond_f

    .line 180
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->add(Ljava/lang/Object;)V

    .line 181
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    if-nez v5, :cond_2b

    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    if-eqz v5, :cond_f

    .line 183
    :cond_2b
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSListForDownloading :check ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v7, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionID:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v6, v6, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 186
    const/4 v1, 0x1

    .line 187
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    if-eqz v5, :cond_c1

    .line 189
    const-string v5, "[FT]-Server"

    const-string v6, "FTSListForDownloading :Update upload popup"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 191
    iget v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    if-ne v5, v8, :cond_b7

    .line 193
    const/16 v5, 0x1389

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 194
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->remove(Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_4 .. :try_end_7b} :catchall_be
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7b} :catch_7c

    goto :goto_f

    .line 221
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #obj:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #session:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :catch_7c
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    :try_start_7d
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSListForDownloading :Exception on updatelist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_be

    .line 225
    .end local v0           #e:Ljava/lang/Exception;
    :cond_95
    if-nez v1, :cond_aa

    .line 229
    const/4 v5, 0x0

    :try_start_98
    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    .line 230
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    .line 231
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 232
    const/16 v5, 0x138a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 233
    const/16 v5, 0x1389

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V
    :try_end_aa
    .catchall {:try_start_98 .. :try_end_aa} :catchall_be
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_aa} :catch_101

    .line 240
    :cond_aa
    :goto_aa
    :try_start_aa
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b5

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeListActivity()V
    :try_end_b5
    .catchall {:try_start_aa .. :try_end_b5} :catchall_be

    .line 244
    :cond_b5
    monitor-exit p0

    return-void

    .line 198
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #obj:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v4       #session:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :cond_b7
    const/16 v5, 0x1389

    :try_start_b9
    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->showDialog(I)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_be
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_7c

    goto/16 :goto_f

    .line 171
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #obj:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #session:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :catchall_be
    move-exception v5

    monitor-exit p0

    throw v5

    .line 201
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #obj:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v4       #session:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :cond_c1
    :try_start_c1
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    if-eqz v5, :cond_e6

    iget v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    const/16 v6, 0x44e

    if-ne v5, v6, :cond_e6

    .line 203
    const-string v5, "[FT]-Server"

    const-string v6, "FTSListForDownloading :remove wait popup -> show upload popup"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v5, 0x138a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 205
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    .line 206
    iput-object v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 207
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    .line 208
    const/16 v5, 0x1389

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->showDialog(I)V

    goto/16 :goto_f

    .line 210
    :cond_e6
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    if-eqz v5, :cond_f

    iget v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    if-ne v5, v8, :cond_f

    .line 212
    const-string v5, "[FT]-Server"

    const-string v6, "FTSListForDownloading :remove wait popup -> finish Download: file too small"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v5, 0x138a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 214
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->remove(Ljava/lang/Object;)V
    :try_end_ff
    .catchall {:try_start_c1 .. :try_end_ff} :catchall_be
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_ff} :catch_7c

    goto/16 :goto_f

    .line 235
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #obj:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #session:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :catch_101
    move-exception v0

    .line 237
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_102
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSListForDownloading :Exception on updatelist- remove popup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_102 .. :try_end_11a} :catchall_be

    goto :goto_aa
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f030007

    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->setContentView(I)V

    .line 59
    const v1, 0x7f060029

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->setTitle(I)V

    .line 60
    new-instance v1, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    .line 67
    :goto_1d
    return-void

    .line 63
    :catch_1e
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading :Exception on create"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 284
    packed-switch p1, :pswitch_data_1a4

    .line 374
    :goto_4
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 289
    :pswitch_9
    :try_start_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    .line 291
    const/high16 v4, 0x7f06

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    const v4, 0x7f060047

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 293
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 294
    const v4, 0x7f060007

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$1;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 304
    new-instance v4, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$2;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3f} :catch_40

    goto :goto_8

    .line 314
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :catch_40
    move-exception v2

    .line 316
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSListForDownloading :Exception on create dialog- wait"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 322
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_5a
    const/4 v0, 0x0

    .line 323
    .local v0, dialog:Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
    const/4 v4, 0x1

    :try_start_5c
    iput-boolean v4, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    .line 324
    new-instance v1, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;

    invoke-direct {v1, p0}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_63} :catch_185

    .line 326
    .end local v0           #dialog:Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
    .local v1, dialog:Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
    const/high16 v4, 0x7f06

    :try_start_65
    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setIcon(I)V

    .line 328
    const/4 v3, 0x0

    .line 329
    .local v3, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget v4, v4, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    if-ne v4, v5, :cond_152

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f060028

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v8, v8, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadingFileName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    :goto_9b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f060018

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v8, v8, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSender:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f060015

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f060011

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-wide v8, v8, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalByte:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v1, v3}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setMessage(Ljava/lang/CharSequence;)V

    .line 341
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSListForDownloading :download progress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->getProgressPercent()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    invoke-virtual {v4}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->getProgressPercent()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setProgress(I)V

    .line 343
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSListForDownloading :Total Sent Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-wide v6, v6, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalByte:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setMax(I)V

    .line 347
    const v4, 0x7f060007

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$3;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 358
    new-instance v4, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$4;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v0, v1

    .line 367
    goto/16 :goto_8

    .line 336
    :cond_152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f060028

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v8, v8, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadingFileName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget v8, v8, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_182} :catch_1a0

    move-result-object v3

    goto/16 :goto_9b

    .line 369
    .end local v1           #dialog:Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
    .end local v3           #msg:Ljava/lang/String;
    .restart local v0       #dialog:Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
    :catch_185
    move-exception v2

    .line 371
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_186
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSListForDownloading :Exception on create dialog- progress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 369
    .end local v0           #dialog:Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #dialog:Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
    :catch_1a0
    move-exception v2

    move-object v0, v1

    .end local v1           #dialog:Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
    .restart local v0       #dialog:Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;
    goto :goto_186

    .line 284
    nop

    :pswitch_data_1a4
    .packed-switch 0x1389
        :pswitch_5a
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 132
    const/16 v0, 0x145b

    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 133
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 540
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 541
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->clear()V

    .line 542
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 543
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_DESTROY_DOWNLOAD_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->sendBroadcast(Landroid/content/Intent;)V

    .line 544
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBind:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_5b

    if-eqz v1, :cond_31

    .line 548
    :try_start_1b
    const-string v1, "[FT]-Server"

    const-string v2, "FTSListForDownloading :remove unregisterCallback :on destory "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mService:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCallback:Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;->unregisterCallback(Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;)V

    .line 550
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBind:Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2c} :catch_41
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_5b

    .line 556
    :goto_2c
    :try_start_2c
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_5b

    .line 566
    :cond_31
    :goto_31
    :try_start_31
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->bRegisterReceiver:Z

    if-eqz v1, :cond_3d

    .line 568
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 569
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->bRegisterReceiver:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_75

    .line 576
    :cond_3d
    :goto_3d
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 577
    return-void

    .line 552
    :catch_41
    move-exception v0

    .line 554
    .local v0, e:Landroid/os/RemoteException;
    :try_start_42
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading :Exception on bindservice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5a} :catch_5b

    goto :goto_2c

    .line 560
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_5b
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading :Exception on destroy- bind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 572
    .end local v0           #e:Ljava/lang/Exception;
    :catch_75
    move-exception v0

    .line 574
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading :Exception on destroy- unregister"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 249
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading : onListItemClick : position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 253
    const/16 v1, 0x138a

    :try_start_1d
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 254
    const/16 v1, 0x1389

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_40

    .line 263
    :goto_25
    :try_start_25
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iput-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget v1, v1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    const/16 v2, 0x44d

    if-ne v1, v2, :cond_5a

    .line 266
    const/16 v1, 0x138a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->showDialog(I)V

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3f} :catch_6b

    .line 279
    :cond_3f
    :goto_3f
    return-void

    .line 257
    :catch_40
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading :Exception on listItemClick- remove popup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 269
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5a
    :try_start_5a
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget v1, v1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    const/16 v2, 0x44e

    if-ne v1, v2, :cond_3f

    .line 271
    const/16 v1, 0x1389

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->showDialog(I)V

    .line 272
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6a} :catch_6b

    goto :goto_3f

    .line 275
    :catch_6b
    move-exception v0

    .line 277
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading :Exception on listItemClick - show popup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 142
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3a

    move-result v2

    packed-switch v2, :pswitch_data_54

    .line 166
    :goto_7
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_b
    return v2

    .line 145
    :pswitch_c
    :try_start_c
    const-string v2, "[FT]-Server"

    const-string v3, "FTSListForDownloading :CLEAR_LIST"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_DOWNLOAD_CANCEL_ALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    if-eqz v2, :cond_29

    .line 150
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    .line 151
    const/16 v2, 0x138a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 153
    :cond_29
    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    if-eqz v2, :cond_35

    .line 155
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    .line 156
    const/16 v2, 0x1389

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 158
    :cond_35
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeListActivity()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_3a

    .line 159
    const/4 v2, 0x1

    goto :goto_b

    .line 162
    .end local v1           #i:Landroid/content/Intent;
    :catch_3a
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[FT]-Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTSListForDownloading :Exception on option item select"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 142
    :pswitch_data_54
    .packed-switch 0x145b
        :pswitch_c
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 14
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 396
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    if-nez v3, :cond_c

    .line 398
    const-string v3, "[FT]-Server"

    const-string v4, "FTSListForDownloading :OnPrepareDialog  mCurrentSession is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c0

    .line 420
    :goto_b
    return-void

    .line 401
    :cond_c
    packed-switch p1, :pswitch_data_dc

    .line 419
    :goto_f
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_b

    .line 404
    :pswitch_13
    const/4 v2, 0x0

    .line 405
    .local v2, msg:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_15
    iput-boolean v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060028

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v7, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadingFileName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060018

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v7, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSender:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060015

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060011

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-wide v7, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalByte:J

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setMessage(Ljava/lang/CharSequence;)V

    .line 409
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;

    move-object v3, v0

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setMax(I)V

    .line 410
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSListForDownloading :download progress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->getProgressPercent()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;

    move-object v3, v0

    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    invoke-virtual {v4}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->getProgressPercent()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/FileTransferServer/Ui/ProgressDialogForFT;->setProgress(I)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_be} :catch_c0

    goto/16 :goto_f

    .line 415
    .end local v2           #msg:Ljava/lang/String;
    :catch_c0
    move-exception v1

    .line 417
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSListForDownloading :OnPrepareDialog  exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 401
    nop

    :pswitch_data_dc
    .packed-switch 0x1389
        :pswitch_13
    .end packed-switch
.end method

.method public onResume()V
    .registers 13

    .prologue
    const/16 v11, 0x44e

    const/4 v10, 0x1

    .line 72
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 77
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->clear()V

    .line 79
    sget-object v5, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 81
    .local v4, session:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    move-object v3, v4

    .line 82
    .local v3, obj:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->m_adapter:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->add(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    goto :goto_11

    .line 123
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #obj:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #session:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :catch_24
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSListForDownloading :Exception on resume"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0           #e:Ljava/lang/Exception;
    :goto_3d
    return-void

    .line 86
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3e
    :try_start_3e
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4a

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 88
    :cond_4a
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.FileShareServer.REMOVE_DOWN_NOTI"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeListActivity()V

    goto :goto_3d

    .line 93
    .end local v1           #i:Landroid/content/Intent;
    :cond_58
    const v6, 0x7f060029

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v5, v5, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSender:Ljava/lang/String;

    aput-object v5, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v10, :cond_94

    .line 98
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mSdList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iput-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 99
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget v5, v5, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    if-ge v5, v11, :cond_c7

    .line 101
    const/16 v5, 0x138a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->showDialog(I)V

    .line 102
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowWaitPopup:Z

    .line 111
    :cond_94
    :goto_94
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBind:Z

    if-nez v5, :cond_a8

    .line 113
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.FileTransferServer.BIND_SERVICE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 114
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBind:Z

    .line 116
    :cond_a8
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->bRegisterReceiver:Z

    if-nez v5, :cond_bb

    .line 118
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.FTS_SERVICE_FINISH"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->bRegisterReceiver:Z

    .line 121
    :cond_bb
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.FileTransferServer.FTS_SHOW_DOWNLOAD_LIST"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3d

    .line 104
    :cond_c7
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget v5, v5, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    if-ne v5, v11, :cond_94

    .line 106
    const/16 v5, 0x1389

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->showDialog(I)V

    .line 107
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_d5} :catch_24

    goto :goto_94
.end method

.method protected removeListActivity()V
    .registers 3

    .prologue
    .line 531
    const-string v0, "[FT]-Server"

    const-string v1, "FTSListForDownloading :removeListActivity "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->finish()V

    .line 533
    return-void
.end method
