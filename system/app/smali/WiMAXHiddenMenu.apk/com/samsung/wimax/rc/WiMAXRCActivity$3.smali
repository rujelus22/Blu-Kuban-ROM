.class Lcom/samsung/wimax/rc/WiMAXRCActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "WiMAXRCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/rc/WiMAXRCActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/rc/WiMAXRCActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 117
    const-string v1, "WiMAXRCActivity"

    const-string v2, "Received broadcast NET_4G_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    const-string v2, "4g_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->mWimaxStatus:I
    invoke-static {v1, v2}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$402(Lcom/samsung/wimax/rc/WiMAXRCActivity;I)I

    .line 119
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->mWimaxStatus:I
    invoke-static {v1}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$400(Lcom/samsung/wimax/rc/WiMAXRCActivity;)I

    move-result v1

    if-ne v1, v5, :cond_3c

    .line 120
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->start:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$500(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->stop:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$600(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    :cond_3b
    :goto_3b
    return-void

    .line 123
    :cond_3c
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    invoke-virtual {v1}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "To Start & Stop, please disable WiMAX "

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 124
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->start:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$500(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->stop:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$600(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3b
.end method
