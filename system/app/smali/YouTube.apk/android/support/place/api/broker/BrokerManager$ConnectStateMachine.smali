.class Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONNECT_MAX_RETRY_COUNT:I = 0xa

.field private static final CONNECT_RETRY_DELAY_MS:I = 0xfa

.field private static final DISCONNECT_DELAY_MS:I = 0x4e20

.field public static final MSG_LISTENERS_CHANGED:I = 0x3e8

.field public static final MSG_PACKAGE_INSTALLED:I = 0x3e9

.field public static final MSG_PACKAGE_UNINSTALLED:I = 0x3ea

.field public static final MSG_UPDATE_PACKAGE_STATUS:I = 0x3eb

.field private static final STATE_CONNECTED:I = 0x3

.field private static final STATE_DISCONNECTED:I = 0x1

.field private static final STATE_TRYING_TO_CONNECT:I = 0x2

.field private static final STATE_WAITING_TO_DISCONNECT:I = 0x4


# instance fields
.field private mConnectHandler:Landroid/os/Handler;

.field private mConnectRetryCount:I

.field private mDisconnectRunnable:Ljava/lang/Runnable;

.field private mHasListeners:Z

.field private mPackageInstalled:Z

.field private mState:I

.field private mTryConnectRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/place/api/broker/BrokerManager;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/BrokerManager;)V
    .registers 3
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    new-instance v0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;

    invoke-direct {v0, p0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;-><init>(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    .line 705
    new-instance v0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$2;

    invoke-direct {v0, p0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$2;-><init>(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mTryConnectRunnable:Ljava/lang/Runnable;

    .line 712
    new-instance v0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$3;

    invoke-direct {v0, p0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$3;-><init>(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mDisconnectRunnable:Ljava/lang/Runnable;

    .line 612
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mHasListeners:Z

    .line 614
    #getter for: Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/support/place/api/broker/BrokerManager;->access$700(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/BrokerConnection;->isBrokerInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z

    .line 615
    return-void
.end method

.method static synthetic access$1000(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V
    .registers 1
    .parameter

    .prologue
    .line 590
    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->update()V

    return-void
.end method

.method static synthetic access$1102(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 590
    iput-boolean p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V
    .registers 1
    .parameter

    .prologue
    .line 590
    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->tryConnect()V

    return-void
.end method

.method static synthetic access$1502(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 590
    iput p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    return p1
.end method

.method static synthetic access$902(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 590
    iput-boolean p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mHasListeners:Z

    return p1
.end method

.method private sendOnFailToConnect()V
    .registers 1

    .prologue
    .line 721
    return-void
.end method

.method private tryConnect()V
    .registers 5

    .prologue
    .line 680
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mTryConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnection:Landroid/support/place/connector/BrokerConnection;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$1300(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/connector/BrokerConnection;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/BrokerConnection;->connect(Landroid/support/place/connector/BrokerConnection$Listener;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 683
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 684
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->startListeningForConnectors()V

    .line 703
    :cond_1d
    :goto_1d
    return-void

    .line 685
    :cond_1e
    iget v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_34

    .line 686
    iget v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectRetryCount:I

    .line 687
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mTryConnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    .line 689
    :cond_34
    const-string v0, "aah-BrokerManager"

    const-string v1, "Failed to connect to broker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 694
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 695
    :try_start_45
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 696
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_67

    .line 697
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 698
    const/4 v1, 0x0

    move v2, v1

    :goto_58
    if-ge v2, v3, :cond_1d

    .line 699
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 700
    invoke-virtual {v1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onFailToConnect()V

    .line 698
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_58

    .line 696
    :catchall_67
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private update()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 648
    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mHasListeners:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z

    if-eqz v0, :cond_1c

    move v0, v1

    .line 650
    :goto_e
    iget v3, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    if-ne v3, v1, :cond_1e

    .line 651
    if-eqz v0, :cond_1b

    .line 652
    iput v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 653
    iput v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectRetryCount:I

    .line 654
    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->tryConnect()V

    .line 677
    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    move v0, v2

    .line 648
    goto :goto_e

    .line 656
    :cond_1e
    iget v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    if-ne v2, v4, :cond_2e

    .line 657
    if-nez v0, :cond_1b

    .line 658
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mTryConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 659
    iput v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    goto :goto_1b

    .line 661
    :cond_2e
    iget v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    if-ne v2, v5, :cond_4c

    .line 662
    if-nez v0, :cond_1b

    .line 663
    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z

    if-eqz v0, :cond_44

    .line 664
    iput v6, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 665
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mDisconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b

    .line 667
    :cond_44
    iput v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 668
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #calls: Landroid/support/place/api/broker/BrokerManager;->disconnect()V
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$1200(Landroid/support/place/api/broker/BrokerManager;)V

    goto :goto_1b

    .line 671
    :cond_4c
    iget v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    if-ne v1, v6, :cond_1b

    .line 672
    if-eqz v0, :cond_1b

    .line 673
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mDisconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 674
    iput v5, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    goto :goto_1b
.end method


# virtual methods
.method public sendMessage(I)V
    .registers 3
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 645
    return-void
.end method
