.class Lcom/sec/android/app/popupuireceiver/popupNITZ$3;
.super Landroid/content/BroadcastReceiver;
.source "popupNITZ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/popupuireceiver/popupNITZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;


# direct methods
.method constructor <init>(Lcom/sec/android/app/popupuireceiver/popupNITZ;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$3;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    const-string v0, "PopupuiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popupNITZ.java: Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$3;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v0, v0, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_37

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$3;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v1, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$3;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    iget-object v1, v1, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$3;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    .line 139
    const-string v0, "PopupuiReceiver"

    const-string v1, "popupNITZ.java: onReceive() unReigister NITZQUITReceiver2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "forexit.action.NITZPOPUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 144
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 146
    const-string v0, "PopupuiReceiver"

    const-string v1, "popupNITZ.java: remove QUIT_NITZ_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_4d
    iget-object v0, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ$3;->this$0:Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-virtual {v0}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->finish()V

    .line 150
    return-void
.end method
