.class Lcom/android/settings/wimax/WimaxSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wimax/WimaxSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z
    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] Received action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_25
    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 104
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v1, "WimaxState"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/WimaxState;

    #setter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v2, v1}, Lcom/android/settings/wimax/WimaxSettings;->access$102(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/fourG/wimax/WimaxState;)Landroid/net/fourG/wimax/WimaxState;

    .line 105
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v2, "WimaxStateDetail"

    const/16 v3, 0x8

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I
    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->access$202(Lcom/android/settings/wimax/WimaxSettings;I)I

    .line 106
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v3

    #calls: Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/wimax/WimaxSettings;->access$300(Lcom/android/settings/wimax/WimaxSettings;Landroid/net/fourG/wimax/WimaxState;I)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z
    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string v1, "WimaxSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] Received wimaxstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extraStateDetail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I
    invoke-static {v3}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_8e
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_a3

    .line 109
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_nCurrentStateDetail:I
    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->updateIdleWimaxSignal(I)V

    .line 121
    :cond_a3
    :goto_a3
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-virtual {v1}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 122
    return-void

    .line 112
    :cond_ad
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 113
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z
    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v1

    if-eqz v1, :cond_c4

    const-string v1, "WimaxSettings"

    const-string v2, "[onReceive] Received broadcast WIMAX_STATUS_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_c4
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v2, "4g_state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I
    invoke-static {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->access$402(Lcom/android/settings/wimax/WimaxSettings;I)I

    .line 115
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_nWimaxStatus:I
    invoke-static {v2}, Lcom/android/settings/wimax/WimaxSettings;->access$400(Lcom/android/settings/wimax/WimaxSettings;)I

    move-result v2

    const-string v3, "4G_previous_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/settings/wimax/WimaxSettings;->handleWimaxStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/wimax/WimaxSettings;->access$500(Lcom/android/settings/wimax/WimaxSettings;II)V

    goto :goto_a3

    .line 117
    :cond_e1
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 118
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->m_bLog:Z
    invoke-static {v1}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Z

    move-result v1

    if-eqz v1, :cond_f8

    const-string v1, "WimaxSettings"

    const-string v2, "Received  broadcast Wimax4GManager.SIGNAL_LEVEL_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_f8
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxSettings$1;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v2, "newSignalLevel"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wimax/WimaxSettings;->updateWimaxSignalLevel(I)V

    goto :goto_a3
.end method
