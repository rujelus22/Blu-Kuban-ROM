.class Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;
.super Landroid/os/Handler;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashIconHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .registers 2
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/NetworkController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 866
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_86

    .line 917
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "FlashIconHandler  Rcvd Unknown msg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_d
    :goto_d
    return-void

    .line 871
    :pswitch_e
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$500()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 875
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v4, 0x7f02009d

    iput v4, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 876
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 877
    .local v0, cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_23

    .line 880
    .end local v0           #cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    :cond_35
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mFlashIconHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 881
    .local v2, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mFlashIconHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 894
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Landroid/os/Message;
    :pswitch_4c
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$500()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 899
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput v4, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 900
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 901
    .restart local v0       #cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_5e

    .line 905
    .end local v0           #cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    :cond_70
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mFlashIconHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 906
    .restart local v2       #m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$FlashIconHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mFlashIconHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x2bc

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 866
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_e
        :pswitch_4c
    .end packed-switch
.end method
