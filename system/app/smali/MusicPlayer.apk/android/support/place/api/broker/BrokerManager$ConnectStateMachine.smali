.class Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;
.super Ljava/lang/Object;
.source "BrokerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/api/broker/BrokerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectStateMachine"
.end annotation


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
    .parameter "x0"

    .prologue
    .line 590
    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->update()V

    return-void
.end method

.method static synthetic access$1102(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    iput-boolean p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 590
    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->tryConnect()V

    return-void
.end method

.method static synthetic access$1502(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    iput p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    return p1
.end method

.method static synthetic access$902(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    iput-boolean p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mHasListeners:Z

    return p1
.end method

.method private tryConnect()V
    .registers 9

    .prologue
    .line 680
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mTryConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnection:Landroid/support/place/connector/BrokerConnection;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$1300(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/connector/BrokerConnection;

    move-result-object v4

    iget-object v5, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v4, v5}, Landroid/support/place/connector/BrokerConnection;->connect(Landroid/support/place/connector/BrokerConnection$Listener;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 683
    const/4 v4, 0x3

    iput v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 684
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v4}, Landroid/support/place/api/broker/BrokerManager;->startListeningForConnectors()V

    .line 703
    :cond_1d
    :goto_1d
    return-void

    .line 685
    :cond_1e
    iget v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectRetryCount:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_34

    .line 686
    iget v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectRetryCount:I

    .line 687
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mTryConnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    .line 689
    :cond_34
    const-string v4, "aah-BrokerManager"

    const-string v5, "Failed to connect to broker"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v4, 0x1

    iput v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 694
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 695
    :try_start_45
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 696
    .local v3, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_65

    .line 697
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 698
    .local v1, lCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_57
    if-ge v0, v1, :cond_1d

    .line 699
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 700
    .local v2, listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    invoke-virtual {v2}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onFailToConnect()V

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 696
    .end local v0           #i:I
    .end local v1           #lCount:I
    .end local v2           #listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    .end local v3           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :catchall_65
    move-exception v4

    :try_start_66
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v4
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
    iget-boolean v3, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mHasListeners:Z

    if-eqz v3, :cond_1c

    iget-boolean v3, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z

    if-eqz v3, :cond_1c

    move v0, v1

    .line 650
    .local v0, shouldBeConnected:Z
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

    .end local v0           #shouldBeConnected:Z
    :cond_1c
    move v0, v2

    .line 648
    goto :goto_e

    .line 656
    .restart local v0       #shouldBeConnected:Z
    :cond_1e
    iget v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    if-ne v2, v4, :cond_2e

    .line 657
    if-nez v0, :cond_1b

    .line 658
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mTryConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

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
    iget-boolean v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z

    if-eqz v2, :cond_44

    .line 664
    iput v6, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 665
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mDisconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b

    .line 667
    :cond_44
    iput v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    .line 668
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #calls: Landroid/support/place/api/broker/BrokerManager;->disconnect()V
    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->access$1200(Landroid/support/place/api/broker/BrokerManager;)V

    goto :goto_1b

    .line 671
    :cond_4c
    iget v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    if-ne v1, v6, :cond_1b

    .line 672
    if-eqz v0, :cond_1b

    .line 673
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mDisconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 674
    iput v5, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I

    goto :goto_1b
.end method


# virtual methods
.method public sendMessage(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 644
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mConnectHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 645
    return-void
.end method
