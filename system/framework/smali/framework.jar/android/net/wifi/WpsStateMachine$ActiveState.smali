.class Landroid/net/wifi/WpsStateMachine$ActiveState;
.super Lcom/android/internal/util/State;
.source "WpsStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WpsStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WpsStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 136
    const-string v0, "WpsStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WpsStateMachine$ActiveState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .parameter "message"

    .prologue
    const v6, 0x20079

    .line 141
    const/4 v0, 0x1

    .line 142
    .local v0, retValue:Z
    const-string v3, "WpsStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WpsStateMachine$ActiveState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_b6

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_2e
    :sswitch_2e
    return v0

    .line 145
    :sswitch_2f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 146
    .local v1, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v2, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 147
    .local v2, supState:Landroid/net/wifi/SupplicantState;
    sget-object v3, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_c8

    .line 171
    const-string v3, "WpsStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring supplicant state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 155
    :pswitch_5d
    const-string v3, "WpsStateMachine"

    const-string v4, "WPS set up successful"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 157
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 158
    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/wifi/WifiConfigStore;->updateIpAndProxyFromWpsConfig(ILandroid/net/wifi/WpsInfo;)V

    .line 160
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Landroid/net/wifi/WpsStateMachine;->access$500(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 161
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WpsStateMachine;->access$600(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2e

    .line 165
    :pswitch_8a
    const-string v3, "WpsStateMachine"

    const-string v4, "WPS set up failed, enabling other networks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 167
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Landroid/net/wifi/WpsStateMachine;->access$500(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 168
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WpsStateMachine;->access$700(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2e

    .line 184
    .end local v1           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    .end local v2           #supState:Landroid/net/wifi/SupplicantState;
    :sswitch_a9
    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WpsStateMachine$ActiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    #getter for: Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WpsStateMachine;->access$800(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2e

    .line 143
    :sswitch_data_b6
    .sparse-switch
        0x20059 -> :sswitch_2e
        0x2007b -> :sswitch_a9
        0x24006 -> :sswitch_2f
        0x24033 -> :sswitch_2e
    .end sparse-switch

    .line 147
    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_8a
    .end packed-switch
.end method
