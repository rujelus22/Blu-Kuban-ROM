.class public Lcom/sec/android/socialhub/service/SocialHubService;
.super Landroid/app/Service;
.source "SocialHubService.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;
.implements Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;
.implements Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;
.implements Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;


# static fields
.field public static mServiceSharedPreference:Landroid/content/SharedPreferences;


# instance fields
.field private mBadgeObserver:Landroid/database/ContentObserver;

.field private final mBinder:Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyFlagIM:Z

.field private mDirtyFlagMsg:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMessageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/socialhub/service/message/RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mMessagingObserver:Landroid/database/ContentObserver;

.field private mNotificationController:Lcom/sec/android/socialhub/notification/HubNotificationController;

.field private mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

.field private mReqID:Ljava/lang/Integer;

.field private mRequestBroadMap:Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;

.field private mSPeditor:Landroid/content/SharedPreferences$Editor;

.field private mSevenIMObserver:Landroid/database/ContentObserver;

.field private mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

.field private mTaskMgr:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 78
    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 79
    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mTaskMgr:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;

    .line 81
    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mNotificationController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    .line 84
    iput-boolean v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mDirtyFlagMsg:Z

    .line 85
    iput-boolean v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mDirtyFlagIM:Z

    .line 90
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/service/SocialHubService$1;-><init>(Lcom/sec/android/socialhub/service/SocialHubService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 103
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/service/SocialHubService$2;-><init>(Lcom/sec/android/socialhub/service/SocialHubService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessagingObserver:Landroid/database/ContentObserver;

    .line 139
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/service/SocialHubService$3;-><init>(Lcom/sec/android/socialhub/service/SocialHubService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSevenIMObserver:Landroid/database/ContentObserver;

    .line 328
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubService$5;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/SocialHubService$5;-><init>(Lcom/sec/android/socialhub/service/SocialHubService;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mBinder:Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;

    .line 570
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubService$6;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/SocialHubService$6;-><init>(Lcom/sec/android/socialhub/service/SocialHubService;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/service/SocialHubService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/service/SocialHubService;->setDirtFlag(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/service/SocialHubService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->sendDbSyncMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doSyncAllAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/socialhub/service/SocialHubService;)Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mTaskMgr:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doLocalDBSyncAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doRemoteSyncAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doUpdateMessageAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/socialhub/service/SocialHubService;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/service/SocialHubService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/service/SocialHubService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mDirtyFlagMsg:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/service/SocialHubService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mDirtyFlagIM:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/service/SocialHubService;)Lcom/sec/android/socialhub/notification/HubNotificationController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mNotificationController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doRemoveAccountAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doRemoveMessageAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    return-void
.end method

.method private doHandleExternalUpdate(Landroid/content/Intent;)V
    .registers 22
    .parameter "intent"

    .prologue
    .line 696
    const-string v2, "intentType"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 697
    .local v18, type:I
    const-string v2, "action"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 702
    .local v8, action:I
    const-string v2, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 704
    .local v13, id_array:[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v10, array_id:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v9, v13

    .local v9, arr$:[Ljava/lang/String;
    array-length v14, v9

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_22
    if-ge v11, v14, :cond_2c

    aget-object v12, v9, v11

    .line 708
    .local v12, id:Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    .line 711
    .end local v12           #id:Ljava/lang/String;
    :cond_2c
    const-string v2, "SocialHubService"

    const-string v3, "doHandleExternalUpdate()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Lcom/sec/android/socialhub/service/type/BroadCastType$ActionType;->getType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id_cnt - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    sparse-switch v18, :sswitch_data_1cc

    .line 860
    :goto_67
    :pswitch_67
    return-void

    .line 718
    :sswitch_68
    packed-switch v8, :pswitch_data_1d6

    :pswitch_6b
    goto :goto_67

    .line 798
    :pswitch_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mRequestBroadMap:Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;

    invoke-virtual {v2, v10, v8}, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->getEmailUpdateMsgMessage(Ljava/util/ArrayList;I)Lcom/sec/android/socialhub/service/message/RequestMessage;

    move-result-object v19

    .line 800
    .local v19, update_message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    if-eqz v19, :cond_11b

    .line 802
    move-object/from16 v0, v19

    iget v3, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    const/16 v4, 0x18

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/socialhub/service/SocialHubService;->onCommandCallback(IIZILjava/lang/String;)V

    goto :goto_67

    .line 722
    .end local v19           #update_message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :pswitch_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mRequestBroadMap:Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;

    invoke-virtual {v2, v10}, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->getEmailDeleteAccountMessage(Ljava/util/ArrayList;)Lcom/sec/android/socialhub/service/message/RequestMessage;

    move-result-object v17

    .line 724
    .local v17, request_account:Lcom/sec/android/socialhub/service/message/RequestMessage;
    if-eqz v17, :cond_a8

    .line 726
    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    const/16 v4, 0x11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/socialhub/service/SocialHubService;->onCommandCallback(IIZILjava/lang/String;)V

    .line 754
    :goto_9d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->EMAIL_ACCOUNT_UPDATE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_67

    .line 735
    :cond_a8
    new-instance v15, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    invoke-direct {v15}, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;-><init>()V

    .line 737
    .local v15, message:Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    monitor-enter v3

    .line 739
    :try_start_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v15, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 740
    monitor-exit v3
    :try_end_cf
    .catchall {:try_start_b2 .. :try_end_cf} :catchall_115

    .line 742
    const/4 v2, 0x0

    aget-object v2, v13, v2

    iput-object v2, v15, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    .line 743
    iput-object v13, v15, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;->accountArray:[Ljava/lang/String;

    .line 744
    const/16 v2, 0x190

    move/from16 v0, v18

    if-ne v0, v2, :cond_118

    const-string v2, "2_Email"

    :goto_de
    iput-object v2, v15, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 745
    new-instance v2, Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 747
    const-string v2, "SocialHubService"

    const-string v3, "doHandleExternalUpdate()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is removed by Email."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 740
    :catchall_115
    move-exception v2

    :try_start_116
    monitor-exit v3
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    throw v2

    .line 744
    :cond_118
    const-string v2, "3_SevenEmail"

    goto :goto_de

    .line 806
    .end local v15           #message:Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;
    .end local v17           #request_account:Lcom/sec/android/socialhub/service/message/RequestMessage;
    .restart local v19       #update_message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :cond_11b
    new-instance v16, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    invoke-direct/range {v16 .. v16}, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;-><init>()V

    .line 808
    .local v16, message_insert:Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    monitor-enter v3

    .line 810
    :try_start_125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 811
    monitor-exit v3
    :try_end_144
    .catchall {:try_start_125 .. :try_end_144} :catchall_1b1

    .line 813
    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    .line 814
    const-string v2, "2_Email"

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 815
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    .line 816
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->isSelf:Z

    .line 817
    move-object/from16 v0, v16

    iput v8, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->updateAction:I

    .line 818
    const-string v2, "is_favorite"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_favorite:Z

    .line 819
    const-string v2, "status_followupflag"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->status_followupflag:I

    .line 820
    const-string v2, "status_lastverb"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->status_lastverb:I

    .line 821
    const-string v2, "is_read"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_read:Z

    .line 822
    const-string v2, "status"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->success:Z

    .line 824
    new-instance v2, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_67

    .line 811
    :catchall_1b1
    move-exception v2

    :try_start_1b2
    monitor-exit v3
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b1

    throw v2

    .line 834
    .end local v16           #message_insert:Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;
    .end local v19           #update_message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :pswitch_1b4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->EMAIL_ACCOUNT_UPDATE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_67

    .line 844
    :pswitch_1c0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->EMAIL_ACCOUNT_UPDATE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_67

    .line 713
    :sswitch_data_1cc
    .sparse-switch
        0x190 -> :sswitch_68
        0x19a -> :sswitch_68
    .end sparse-switch

    .line 718
    :pswitch_data_1d6
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_6c
        :pswitch_67
        :pswitch_1b4
        :pswitch_1c0
        :pswitch_85
        :pswitch_67
        :pswitch_6c
        :pswitch_6b
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch
.end method

.method private doHandleIMAccountRemoved(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mRequestBroadMap:Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->getIMDeleteAccountMessage()Lcom/sec/android/socialhub/service/message/RequestMessage;

    move-result-object v6

    .line 670
    .local v6, message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    if-eqz v6, :cond_13

    .line 672
    iget v1, v6, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/SocialHubService;->onCommandCallback(IIZILjava/lang/String;)V

    .line 674
    :cond_13
    return-void
.end method

.method private doHandleIMChatClosed(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mRequestBroadMap:Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->getIMDeleteMsgMessage()Lcom/sec/android/socialhub/service/message/RequestMessage;

    move-result-object v6

    .line 680
    .local v6, message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    if-eqz v6, :cond_13

    .line 682
    iget v1, v6, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/SocialHubService;->onCommandCallback(IIZILjava/lang/String;)V

    .line 684
    :cond_13
    return-void
.end method

.method private doHandleIMUpdate(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 865
    return-void
.end method

.method private doHandleSnsSyncComplete(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 691
    const-string v0, "5_SNS"

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubService;->sendDbSyncMessage(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method private doLocalDBSyncAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 652
    new-instance v0, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 653
    return-void
.end method

.method private doRemoteSyncAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 657
    new-instance v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 658
    return-void
.end method

.method private doRemoveAccountAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 637
    new-instance v0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 638
    return-void
.end method

.method private doRemoveMessageAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 642
    new-instance v0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 643
    return-void
.end method

.method private doSyncAllAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 647
    new-instance v0, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 648
    return-void
.end method

.method private doUpdateMessageAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 662
    new-instance v0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 663
    return-void
.end method

.method private registerObserver()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/badge/BadgeManager;->BADGE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->IM_CHAT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSevenIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->IM_PRESENCE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSevenIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->IM_CONTACTS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSevenIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->getMessageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessagingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 254
    return-void
.end method

.method private declared-synchronized sendDbSyncMessage(Ljava/lang/String;)V
    .registers 7
    .parameter "app_type"

    .prologue
    .line 869
    monitor-enter p0

    :try_start_1
    new-instance v1, Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;-><init>()V

    .line 871
    .local v1, message:Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3d

    .line 873
    :try_start_9
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 874
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_3a

    .line 875
    :try_start_20
    iput-object p1, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 876
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    .line 877
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->isSelf:Z

    .line 879
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 880
    .local v0, handleMessage:Landroid/os/Message;
    const/16 v2, 0x17

    iput v2, v0, Landroid/os/Message;->what:I

    .line 881
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 883
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_3d

    .line 884
    monitor-exit p0

    return-void

    .line 874
    .end local v0           #handleMessage:Landroid/os/Message;
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 869
    .end local v1           #message:Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;
    :catchall_3d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setDirtFlag(IZ)V
    .registers 7
    .parameter "type"
    .parameter "flag"

    .prologue
    .line 156
    const-string v0, "SocialHubService"

    const-string v1, "setDirtFlag()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flag - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    packed-switch p1, :pswitch_data_2e

    .line 167
    :goto_27
    :pswitch_27
    return-void

    .line 160
    :pswitch_28
    iput-boolean p2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mDirtyFlagMsg:Z

    goto :goto_27

    .line 164
    :pswitch_2b
    iput-boolean p2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mDirtyFlagIM:Z

    goto :goto_27

    .line 157
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method

.method private syncAllDatabases()V
    .registers 6

    .prologue
    .line 265
    new-instance v1, Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;-><init>()V

    .line 266
    .local v1, message:Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;
    const-string v2, "0_All"

    iput-object v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 268
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    monitor-enter v3

    .line 270
    :try_start_c
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 271
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_34

    .line 273
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 274
    .local v0, handleMessage:Landroid/os/Message;
    const/16 v2, 0x15

    iput v2, v0, Landroid/os/Message;->what:I

    .line 275
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 276
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    return-void

    .line 271
    .end local v0           #handleMessage:Landroid/os/Message;
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private unregisterObserver()V
    .registers 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSevenIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessagingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    return-void
.end method


# virtual methods
.method public addRemoveAccountFromReceiver(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mRequestBroadMap:Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->addRemoveAccountFromReceiver(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    .line 306
    return-void
.end method

.method public addUpdateMssageFromReceiver(Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mRequestBroadMap:Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->addUpdateMssageFromReceiver(Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;)V

    .line 316
    return-void
.end method

.method public getSnsHandler()Lcom/sec/android/socialhub/service/SocialHubSnsHandler;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    return-object v0
.end method

.method public declared-synchronized invokeBroadCast(IIZILjava/lang/String;)V
    .registers 15
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 550
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 552
    .local v6, N:I
    const-string v0, "SocialHubService"

    const-string v1, "invokeBroadCast()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "N = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_3c

    .line 554
    const/4 v8, 0x0

    .local v8, index:I
    :goto_22
    if-ge v8, v6, :cond_3f

    .line 558
    :try_start_24
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;->onMessageReponse(IIZILjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_34} :catch_37

    .line 554
    :goto_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 560
    :catch_37
    move-exception v7

    .line 562
    .local v7, e:Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_34

    .line 550
    .end local v6           #N:I
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v8           #index:I
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 566
    .restart local v6       #N:I
    .restart local v8       #index:I
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 567
    monitor-exit p0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .parameter

    .prologue
    .line 294
    const-string v0, "SocialHubService"

    const-string v1, "onBind()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-class v0, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "com.sec.android.socialhub.REMOTE_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 298
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mBinder:Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;

    .line 300
    :goto_4c
    return-object v0

    :cond_4d
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method public onCommandCallback(IIZILjava/lang/String;)V
    .registers 14
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 946
    const-string v2, "SocialHubService"

    const-string v3, "onCommandCallback()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reqType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bSuccess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    packed-switch p2, :pswitch_data_108

    .line 1051
    :goto_47
    :pswitch_47
    return-void

    .line 959
    :pswitch_48
    if-ne p3, v6, :cond_63

    .line 961
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    .line 962
    .local v1, msg:Lcom/sec/android/socialhub/service/message/RequestMessage;
    new-instance v2, Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    new-array v3, v6, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_47

    .line 966
    .end local v1           #msg:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :cond_63
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/socialhub/service/SocialHubService;->invokeBroadCast(IIZILjava/lang/String;)V

    .line 967
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 975
    :pswitch_70
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/socialhub/service/SocialHubService;->invokeBroadCast(IIZILjava/lang/String;)V

    .line 976
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 983
    :pswitch_7d
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/socialhub/service/SocialHubService;->invokeBroadCast(IIZILjava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 991
    :pswitch_8a
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/socialhub/service/SocialHubService;->invokeBroadCast(IIZILjava/lang/String;)V

    .line 992
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 999
    :pswitch_97
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/socialhub/service/SocialHubService;->invokeBroadCast(IIZILjava/lang/String;)V

    .line 1000
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1003
    .local v0, end_sync_msg:Landroid/os/Message;
    const/16 v2, 0x22

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1004
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1005
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_47

    .line 1016
    .end local v0           #end_sync_msg:Landroid/os/Message;
    :pswitch_b4
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/socialhub/service/SocialHubService;->invokeBroadCast(IIZILjava/lang/String;)V

    .line 1017
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 1022
    :pswitch_c1
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/socialhub/service/SocialHubService;->invokeBroadCast(IIZILjava/lang/String;)V

    .line 1023
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_47

    .line 1029
    :pswitch_cf
    if-ne p3, v6, :cond_eb

    .line 1031
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    .line 1032
    .restart local v1       #msg:Lcom/sec/android/socialhub/service/message/RequestMessage;
    new-instance v2, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    new-array v3, v6, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_47

    .line 1036
    .end local v1           #msg:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :cond_eb
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/socialhub/service/SocialHubService;->invokeBroadCast(IIZILjava/lang/String;)V

    .line 1037
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_47

    .line 1043
    :pswitch_f9
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/socialhub/service/SocialHubService;->invokeBroadCast(IIZILjava/lang/String;)V

    .line 1044
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_47

    .line 954
    nop

    :pswitch_data_108
    .packed-switch 0x11
        :pswitch_48
        :pswitch_70
        :pswitch_7d
        :pswitch_8a
        :pswitch_47
        :pswitch_b4
        :pswitch_97
        :pswitch_cf
        :pswitch_f9
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_c1
    .end packed-switch
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 172
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.socialhub.CREATE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 176
    invoke-static {}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getCount()I

    move-result v0

    .line 178
    .local v0, sns_count:I
    const-string v1, "SocialHubService"

    const-string v2, "onCreate()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sns_count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;

    .line 182
    new-instance v1, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;-><init>()V

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mTaskMgr:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;

    .line 184
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;

    .line 186
    new-instance v1, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;-><init>()V

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    .line 187
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    invoke-virtual {v1, p0}, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;->setOnBroadCastListener(Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;)V

    .line 189
    new-instance v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 190
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bindService()V

    .line 192
    new-instance v1, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mRequestBroadMap:Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;

    .line 194
    new-instance v1, Lcom/sec/android/socialhub/notification/HubNotificationController;

    invoke-direct {v1}, Lcom/sec/android/socialhub/notification/HubNotificationController;-><init>()V

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mNotificationController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    .line 196
    invoke-static {p0}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->initializeCache()V

    .line 198
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->registerObserver()V

    .line 199
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/service/SocialHubService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, p0}, Lcom/sec/android/socialhub/service/SocialHubService;->updateBadge(Landroid/content/Context;)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/socialhub/service/SocialHubService$4;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/service/SocialHubService$4;-><init>(Lcom/sec/android/socialhub/service/SocialHubService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    const-string v1, "SocialHubService"

    const-string v2, "onCreate()"

    const-string v3, "Service is created"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "com.sec.android.socialhub"

    invoke-virtual {p0, v1, v5}, Lcom/sec/android/socialhub/service/SocialHubService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/sec/android/socialhub/service/SocialHubService;->mServiceSharedPreference:Landroid/content/SharedPreferences;

    .line 214
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/service/SocialHubService;->setSharedPreferenceSyncValue(Z)Z

    .line 215
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->unregisterObserver()V

    .line 229
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->unbindService()V

    .line 231
    invoke-static {p0}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->destroyCache()V

    .line 232
    const-string v0, "SocialHubService"

    const-string v1, "onDestroy()"

    const-string v2, "Service is destoryed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 235
    return-void
.end method

.method public onReceive(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 894
    if-nez p1, :cond_c

    .line 896
    const-string v2, "SocialHubService"

    const-string v3, "onReceive()"

    const-string v4, "intent is null"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :goto_b
    return-void

    .line 900
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, action:Ljava/lang/String;
    :try_start_10
    const-string v2, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 906
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doHandleExternalUpdate(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_31

    .line 939
    :cond_1b
    :goto_1b
    const-string v2, "SocialHubService"

    const-string v3, "onReceive()"

    if-eqz v0, :cond_76

    .end local v0           #action:Ljava/lang/String;
    :goto_21
    invoke-static {v2, v3, v0}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 908
    .restart local v0       #action:Ljava/lang/String;
    :cond_25
    :try_start_25
    const-string v2, "com.sec.android.im.UnreadMessageInfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 910
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doHandleIMUpdate(Landroid/content/Intent;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_31

    goto :goto_1b

    .line 933
    :catch_31
    move-exception v1

    .line 935
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 912
    .end local v1           #e:Ljava/lang/Exception;
    :cond_36
    :try_start_36
    const-string v2, "com.sec.android.im.action.remove_account"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 914
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doHandleIMAccountRemoved(Landroid/content/Intent;)V

    goto :goto_1b

    .line 916
    :cond_42
    const-string v2, "com.sec.android.im.action.chat_closed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 918
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doHandleIMChatClosed(Landroid/content/Intent;)V

    goto :goto_1b

    .line 920
    :cond_4e
    const-string v2, "com.sec.android.app.sns.action.UPDATE_MESSAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 922
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->doHandleSnsSyncComplete(Landroid/content/Intent;)V

    goto :goto_1b

    .line 924
    :cond_5a
    const-string v2, "com.sec.android.socialhub.action.MSG_SYNC_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 926
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/socialhub/service/SocialHubService;->setDirtFlag(IZ)V

    goto :goto_1b

    .line 928
    :cond_68
    const-string v2, "com.sec.android.socialhub.action.IM_SYNC_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 930
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/socialhub/service/SocialHubService;->setDirtFlag(IZ)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_75} :catch_31

    goto :goto_1b

    .line 939
    :cond_76
    const-string v0, ""

    goto :goto_21
.end method

.method public onServiceConnected()V
    .registers 1

    .prologue
    .line 1055
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->syncAllDatabases()V

    .line 1056
    return-void
.end method

.method public onServiceDisconnected()V
    .registers 1

    .prologue
    .line 1061
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 240
    if-eqz p1, :cond_d

    .line 242
    const-string v0, "SocialHubService"

    const-string v1, "onStartCommand()"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public setSharedPreferenceSyncValue(Z)Z
    .registers 6
    .parameter "value"

    .prologue
    .line 219
    const-string v0, "SocialHubService"

    const-string v1, "setSharedPreferenceSyncValue()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/sec/android/socialhub/service/SocialHubService;->mServiceSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSPeditor:Landroid/content/SharedPreferences$Editor;

    .line 221
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSPeditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "syncFlag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mSPeditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateBadge(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 281
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 282
    invoke-static {}, Lcom/sec/android/socialhub/badge/BadgeManager;->getInstance()Lcom/sec/android/socialhub/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateBadge(Landroid/content/Context;)V

    .line 283
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/badge/BadgeManager;->BADGE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubService;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 284
    monitor-exit p0

    return-void

    .line 281
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
