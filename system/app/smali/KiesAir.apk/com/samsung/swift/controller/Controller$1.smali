.class Lcom/samsung/swift/controller/Controller$1;
.super Landroid/content/BroadcastReceiver;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/controller/Controller;


# direct methods
.method constructor <init>(Lcom/samsung/swift/controller/Controller;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/service/SwiftService;->STOP_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 213
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onWebServerStopped()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .line 340
    .local v3, newstate:Lcom/samsung/swift/controller/State;
    :goto_16
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    iget-object v8, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v8}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/samsung/swift/controller/State;->transition(Lcom/samsung/swift/controller/State;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v8

    #setter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7, v8}, Lcom/samsung/swift/controller/Controller;->access$002(Lcom/samsung/swift/controller/Controller;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    .line 347
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :goto_25
    return-void

    .line 215
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/service/SwiftService;->START_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 217
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onWebServerStarted()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto :goto_16

    .line 219
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_3d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 223
    :cond_61
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onNetworkChange()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto :goto_16

    .line 225
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_6c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/applet/AppletActivity;->BUTTONCLICK_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 227
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/swift/controller/State;->onUserClickButton(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto :goto_16

    .line 229
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/applet/AppletActivity;->RESTARTNETWORK_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 231
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/swift/controller/State;->onUserClickRestartNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 233
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_a3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/controller/Controller;->POSTCONSTRUCT_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 235
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onPostConstruct()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 237
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_bb
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_CHOSEN_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 239
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/swift/controller/State;->onUserClickNetwork(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 241
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_dd
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/applet/AppletActivity;->STOPNETWORK_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 243
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/swift/controller/State;->onUserClickStopNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 245
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_f9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/applet/AppletActivity;->LEAVENETWORK_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    .line 247
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/swift/controller/State;->onUserClickLeaveNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 249
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/applet/AppletActivity;->RESUMED_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15e

    .line 251
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .line 253
    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    instance-of v7, v7, Lcom/samsung/swift/controller/WaitingNetworkOnlyState;

    if-eqz v7, :cond_143

    .line 256
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v8}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/swift/controller/State;->onResume(Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    goto/16 :goto_16

    .line 260
    :cond_143
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->shutdownServerIfNetworkAbsent()Lcom/samsung/swift/controller/State;

    .line 261
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->guardedUpdateAppletDisplay()V
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_155} :catch_157

    goto/16 :goto_25

    .line 342
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :catch_157
    move-exception v0

    .line 345
    .local v0, e:Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 265
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15e
    :try_start_15e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/applet/AppletActivity;->START_NETWORK_ONLY_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17a

    .line 267
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/swift/controller/State;->onStartNetworkOnly(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 269
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_17a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_ONLY_SELECTED_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19c

    .line 271
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/swift/controller/State;->onUserSelectNetworkOnly(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 273
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_19c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/applet/AppletActivity;->DISMISS_START_NETWORK_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b8

    .line 275
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/swift/controller/State;->onUserDismissStartNetwork(Lcom/samsung/swift/applet/AppletActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 277
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_1b8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/install/InstallActivity;->RESUMED_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1cf

    .line 279
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->guardedUpdateInstallerDisplay()V

    goto/16 :goto_25

    .line 282
    :cond_1cf
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/install/InstallActivity;->SETWORLDREASABLE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f2

    .line 284
    const-string v7, "worldReadable"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 285
    .local v6, worldReadable:Z
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/install/InstallActivity;->instance()Lcom/samsung/swift/install/InstallActivity;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/samsung/swift/controller/State;->onInstallerSetWorldReadable(Lcom/samsung/swift/install/InstallActivity;Z)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_25

    .line 288
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    .end local v6           #worldReadable:Z
    :cond_1f2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/controller/Controller;->access$100()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20c

    .line 290
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onServiceReady()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 292
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_20c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/service/Installer;->STATE_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_238

    .line 294
    const-string v7, "state"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 295
    .local v2, installState:I
    const-string v7, "file"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, file:Ljava/lang/String;
    const-string v7, "progress"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    .line 297
    .local v4, progress:S
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7, v2, v1, v4}, Lcom/samsung/swift/controller/State;->onInstallerState(ILjava/lang/String;S)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .line 298
    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 299
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #installState:I
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    .end local v4           #progress:S
    :cond_238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/install/InstallActivity;->EXPLICIT_INSTALL_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_254

    .line 301
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-static {}, Lcom/samsung/swift/install/InstallActivity;->instance()Lcom/samsung/swift/install/InstallActivity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/swift/controller/State;->onUserClickExplicitInstall(Lcom/samsung/swift/install/InstallActivity;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 303
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/security/SecurityManager;->CHALLANGE_BEGIN_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26c

    .line 305
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onSecurityManagerChallangeBegin()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 307
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_26c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/security/SecurityManager;->CHALLANGE_END_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_284

    .line 309
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onSecurityManagerChallangeEnd()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 311
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/security/SecurityPreferencesActivity;->FOCUS_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29b

    .line 313
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->guardedUpdatePreferencesDisplay()V

    goto/16 :goto_25

    .line 316
    :cond_29b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/security/SecurityPreferencesActivity;->TIMEOUT_CHANGE_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b3

    .line 318
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onTimeoutChange()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 320
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_2b3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/swift/security/SecurityManager;->ACCESS_EVENT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d5

    .line 322
    const-string v7, "response"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/swift/security/SecurityManager$Response;->valueOf(Ljava/lang/String;)Lcom/samsung/swift/security/SecurityManager$Response;

    move-result-object v5

    .line 323
    .local v5, response:Lcom/samsung/swift/security/SecurityManager$Response;
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/swift/controller/State;->onAccess(Lcom/samsung/swift/security/SecurityManager$Response;)Lcom/samsung/swift/controller/State;

    move-result-object v3

    .line 324
    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 325
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    .end local v5           #response:Lcom/samsung/swift/security/SecurityManager$Response;
    :cond_2d5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f4

    .line 327
    const-string v7, "CHECK - MOUNT"

    const-string v8, "we have MOUNT event"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onSdcardMounted()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 330
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_2f4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_313

    .line 332
    const-string v7, "CHECK - SHARED"

    const-string v8, "we have SHARED event"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v7, p0, Lcom/samsung/swift/controller/Controller$1;->this$0:Lcom/samsung/swift/controller/Controller;

    #getter for: Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    invoke-static {v7}, Lcom/samsung/swift/controller/Controller;->access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/swift/controller/State;->onSdcardUnmounted()Lcom/samsung/swift/controller/State;

    move-result-object v3

    .restart local v3       #newstate:Lcom/samsung/swift/controller/State;
    goto/16 :goto_16

    .line 338
    .end local v3           #newstate:Lcom/samsung/swift/controller/State;
    :cond_313
    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got unsupported intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_32c
    .catch Landroid/os/RemoteException; {:try_start_15e .. :try_end_32c} :catch_157
.end method
