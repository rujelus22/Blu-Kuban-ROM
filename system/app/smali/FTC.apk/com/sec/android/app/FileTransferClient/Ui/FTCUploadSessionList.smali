.class public Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;
.super Landroid/app/ListActivity;
.source "FTCUploadSessionList.java"


# instance fields
.field dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
            ">;"
        }
    .end annotation
.end field

.field private mBind:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

.field private mHandler:Landroid/os/Handler;

.field private mRegisterReceiver:Z

.field private mService:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

.field private mShowUploadPopup:Z

.field private mShowWaitPopup:Z

.field m_adapter:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBind:Z

    .line 42
    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    .line 44
    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mRegisterReceiver:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mService:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    .line 448
    new-instance v0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mHandler:Landroid/os/Handler;

    .line 511
    new-instance v0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$6;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCallback:Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;

    .line 519
    new-instance v0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$7;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mConnection:Landroid/content/ServiceConnection;

    .line 553
    new-instance v0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$8;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->cancelUpload()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Lcom/sec/android/app/FileTransferClient/Data/SessionData;)Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Ljava/util/ArrayList;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->updateList(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCallback:Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mService:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;)Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mService:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    return-object p1
.end method

.method static synthetic access$802(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBind:Z

    return p1
.end method

.method private cancelUpload()V
    .registers 6

    .prologue
    .line 406
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_UPLOAD_CANCELED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, i:Landroid/content/Intent;
    const-string v2, "SDATA"

    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 414
    .end local v1           #i:Landroid/content/Intent;
    :goto_11
    return-void

    .line 410
    :catch_12
    move-exception v0

    .line 412
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCUploadSessionList :Exception on cancel upload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private declared-synchronized updateList(Ljava/util/ArrayList;I)V
    .registers 11
    .parameter
    .parameter "eventType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, sdpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/SessionData;>;"
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->m_adapter:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->clear()V

    .line 164
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, findMySession:Z
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    if-eqz v5, :cond_3e

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 172
    .local v3, sd:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 174
    const/4 v1, 0x1

    .line 180
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sd:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    :cond_3e
    if-eqz v1, :cond_b7

    .line 182
    const/16 v5, 0x964

    if-ne p2, v5, :cond_87

    .line 184
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 185
    .local v4, workingSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    if-eqz v5, :cond_85

    .line 187
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    if-eqz v5, :cond_85

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_85

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 189
    const/4 v1, 0x1

    .line 190
    const-string v5, "[FT]-Client"

    const-string v6, "FTCUploadSessionList :remove wait popup -> show upload popup"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 v5, 0x138a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 192
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    .line 193
    iput-object v4, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 194
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    .line 195
    const/16 v5, 0x1389

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->showDialog(I)V
    :try_end_85
    .catchall {:try_start_1 .. :try_end_85} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_85} :catch_9a

    .line 222
    .end local v1           #findMySession:Z
    .end local v4           #workingSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    :cond_85
    :goto_85
    monitor-exit p0

    return-void

    .line 201
    .restart local v1       #findMySession:Z
    :cond_87
    :try_start_87
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    if-eqz v5, :cond_85

    .line 203
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    iput-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 204
    const/16 v5, 0x1389

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->showDialog(I)V
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_99} :catch_9a

    goto :goto_85

    .line 218
    .end local v1           #findMySession:Z
    :catch_9a
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    :try_start_9b
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCUploadSessionList :Exception on updateList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_9b .. :try_end_b3} :catchall_b4

    goto :goto_85

    .line 163
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_b4
    move-exception v5

    monitor-exit p0

    throw v5

    .line 210
    .restart local v1       #findMySession:Z
    :cond_b7
    const/4 v5, 0x0

    :try_start_b8
    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    .line 211
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    .line 212
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 213
    const-string v5, "[FT]-Client"

    const-string v6, "FTCUploadSessionList :remove popup -findMySession is false"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v5, 0x138a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 215
    const/16 v5, 0x1389

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V
    :try_end_d1
    .catchall {:try_start_b8 .. :try_end_d1} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_d1} :catch_9a

    goto :goto_85
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f030006

    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->setContentView(I)V

    .line 58
    const v1, 0x7f060036

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->setTitle(I)V

    .line 59
    new-instance v1, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->m_adapter:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;

    .line 60
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->m_adapter:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mRegisterReceiver:Z

    if-nez v1, :cond_30

    .line 63
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.FTC_SERVICE_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mRegisterReceiver:Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_30} :catch_31

    .line 72
    :cond_30
    :goto_30
    return-void

    .line 67
    :catch_31
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCUploadSessionList :Exception on create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 15
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 290
    packed-switch p1, :pswitch_data_18e

    .line 399
    :goto_4
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 296
    :pswitch_9
    :try_start_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    .line 298
    const v5, 0x7f060001

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 302
    const-string v4, ""

    .line 310
    .local v4, msg:Ljava/lang/String;
    const v5, 0x7f060047

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 312
    const v5, 0x7f060007

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$1;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 326
    new-instance v5, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$2;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_42} :catch_43

    goto :goto_8

    .line 340
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    .end local v4           #msg:Ljava/lang/String;
    :catch_43
    move-exception v2

    .line 342
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCUploadSessionList :Exception on create dialog- Waiting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 348
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_5d
    :try_start_5d
    const-string v5, "[FT]-Client"

    const-string v6, "FTCUploadSessionList :ProgressDialogForFT use"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v1, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;

    invoke-direct {v1, p0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;-><init>(Landroid/content/Context;)V

    .line 350
    .local v1, dialog2:Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    .line 351
    const v5, 0x7f060001

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setTitle(Ljava/lang/CharSequence;)V

    .line 352
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setIcon(I)V

    .line 353
    const/4 v4, 0x0

    .line 355
    .restart local v4       #msg:Ljava/lang/String;
    const-string v3, ""

    .line 356
    .local v3, fileCnt:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalCount()I

    move-result v5

    if-le v5, v7, :cond_b4

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSendCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    :cond_b4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f060035

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v9}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTitle()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f060042

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v9}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTarget()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f060015

    invoke-virtual {p0, v6}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f060011

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v9}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalByte()J

    move-result-wide v9

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 362
    invoke-virtual {v1, v4}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setMessage(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getProgressPercent()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setProgress(I)V

    .line 364
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCUploadSessionList :Total Sent Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v7}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalByte()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setMax(I)V

    .line 366
    const v5, 0x7f060007

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$3;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 380
    new-instance v5, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$4;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_170} :catch_173

    move-object v0, v1

    .line 392
    goto/16 :goto_8

    .line 394
    .end local v1           #dialog2:Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;
    .end local v3           #fileCnt:Ljava/lang/String;
    .end local v4           #msg:Ljava/lang/String;
    :catch_173
    move-exception v2

    .line 396
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCUploadSessionList :Exception on create dialog- progress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 290
    :pswitch_data_18e
    .packed-switch 0x1389
        :pswitch_5d
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 122
    const/16 v0, 0x13f7

    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 123
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 596
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 597
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->m_adapter:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->clear()V

    .line 598
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 600
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mRegisterReceiver:Z

    if-eqz v1, :cond_19

    .line 602
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 603
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mRegisterReceiver:Z

    .line 605
    :cond_19
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_DESTROY_UPLOAD_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->sendBroadcast(Landroid/content/Intent;)V

    .line 606
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 607
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBind:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_5e

    if-eqz v1, :cond_40

    .line 611
    :try_start_2a
    const-string v1, "[FT]-Client"

    const-string v2, "FTCUploadSessionList :remove unregisterCallback :on destory "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mService:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCallback:Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;->unregisterCallback(Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;)V

    .line 613
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBind:Z
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3b} :catch_44
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3b} :catch_5e

    .line 619
    :goto_3b
    :try_start_3b
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_5e

    .line 626
    :cond_40
    :goto_40
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 627
    return-void

    .line 615
    :catch_44
    move-exception v0

    .line 617
    .local v0, e:Landroid/os/RemoteException;
    :try_start_45
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCUploadSessionList :RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5d} :catch_5e

    goto :goto_3b

    .line 622
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_5e
    move-exception v0

    .line 624
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCUploadSessionList :Exception on destroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/16 v2, 0x837

    .line 228
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 231
    const/16 v1, 0x138a

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 232
    const/16 v1, 0x1389

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v1}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionState()I

    move-result v1

    if-ge v1, v2, :cond_2a

    .line 236
    const/16 v1, 0x138a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->showDialog(I)V

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    .line 249
    :cond_29
    :goto_29
    return-void

    .line 239
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v1}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionState()I

    move-result v1

    if-ne v1, v2, :cond_29

    .line 241
    const/16 v1, 0x1389

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->showDialog(I)V

    .line 242
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_3b

    goto :goto_29

    .line 245
    :catch_3b
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCUploadSessionList :Exception on List item click:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    .line 156
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_b
    return v2

    .line 135
    :pswitch_c
    :try_start_c
    const-string v2, "[FT]-Client"

    const-string v3, "FTCUploadSessionList :CLEAR_LIST"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_UPLOAD_CANCELED_ALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    if-eqz v2, :cond_29

    .line 140
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    .line 141
    const/16 v2, 0x138a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 143
    :cond_29
    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    if-eqz v2, :cond_35

    .line 145
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    .line 146
    const/16 v2, 0x1389

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 148
    :cond_35
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeListActivity()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_3a

    .line 154
    .end local v1           #i:Landroid/content/Intent;
    :goto_38
    const/4 v2, 0x1

    goto :goto_b

    .line 150
    :catch_3a
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCUploadSessionList :Exception on option item select:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 130
    :pswitch_data_54
    .packed-switch 0x13f7
        :pswitch_c
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 14
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 421
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    if-nez v3, :cond_c

    .line 423
    const-string v3, "[FT]-Client"

    const-string v4, "FTCUploadSessionList :OnPrepareDialog  mCurrentSession is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_a8

    .line 446
    :goto_b
    return-void

    .line 426
    :cond_c
    packed-switch p1, :pswitch_data_c4

    .line 445
    :goto_f
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_b

    .line 429
    :pswitch_13
    const/4 v2, 0x0

    .line 430
    .local v2, msg:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_15
    iput-boolean v3, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060035

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v7}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060042

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v7}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTarget()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060015

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I)Ljava/lang/String;

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

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v7}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalByte()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setMessage(Ljava/lang/CharSequence;)V

    .line 436
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;

    move-object v3, v0

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setMax(I)V

    .line 437
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;

    move-object v3, v0

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v4}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getProgressPercent()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->setProgress(I)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_a6} :catch_a8

    goto/16 :goto_f

    .line 441
    .end local v2           #msg:Ljava/lang/String;
    :catch_a8
    move-exception v1

    .line 443
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCUploadSessionList :OnPrepareDialog  exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 426
    nop

    :pswitch_data_c4
    .packed-switch 0x1389
        :pswitch_13
    .end packed-switch
.end method

.method public onResume()V
    .registers 13

    .prologue
    const/16 v11, 0x837

    const/4 v10, 0x1

    .line 77
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 80
    :try_start_6
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 81
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    .line 82
    .local v4, sdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/SessionData;>;"
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->m_adapter:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->clear()V

    .line 83
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 85
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 87
    .local v5, session:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    move-object v3, v5

    .line 88
    .local v3, obj:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_1a

    .line 112
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #obj:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .end local v4           #sdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/SessionData;>;"
    .end local v5           #session:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    :catch_2d
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCUploadSessionList :Exception on resume:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    :goto_46
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCUploadSessionList :called on resume dataListSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 90
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v4       #sdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/SessionData;>;"
    :cond_65
    const v7, 0x7f060036

    const/4 v6, 0x1

    :try_start_69
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTarget()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v10, :cond_a3

    .line 93
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->dataList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    iput-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 94
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionState()I

    move-result v6

    if-ge v6, v11, :cond_c2

    .line 96
    const/16 v6, 0x138a

    invoke-virtual {p0, v6}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->showDialog(I)V

    .line 97
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z

    .line 105
    :cond_a3
    :goto_a3
    iget-boolean v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBind:Z

    if-nez v6, :cond_b7

    .line 107
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.app.FileTransferClient.BIND_SERVICE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mConnection:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 108
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mBind:Z

    .line 110
    :cond_b7
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.app.FileTransferClient.FTC_SHOW_UPLOAD_LIST"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_46

    .line 99
    :cond_c2
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionState()I

    move-result v6

    if-ne v6, v11, :cond_a3

    .line 101
    const/16 v6, 0x1389

    invoke-virtual {p0, v6}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->showDialog(I)V

    .line 102
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_d2} :catch_2d

    goto :goto_a3
.end method

.method protected removeListActivity()V
    .registers 3

    .prologue
    .line 579
    const-string v0, "[FT]-Client"

    const-string v1, "FTCUploadSessionList :removeListActivity "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->finish()V

    .line 581
    return-void
.end method
