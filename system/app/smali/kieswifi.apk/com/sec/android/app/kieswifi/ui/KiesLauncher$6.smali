.class Lcom/sec/android/app/kieswifi/ui/KiesLauncher$6;
.super Landroid/content/BroadcastReceiver;
.source "KiesLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/KiesLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$6;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, action:Ljava/lang/String;
    const-string v1, "mCheckUSBConnected"

    invoke-static {v3, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 212
    const-string v1, "android.intent.action.USB_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1e

    .line 214
    const-string v1, "usb connected"

    invoke-static {v3, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$6;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    const/16 v2, 0x44d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->showDialog(I)V

    .line 217
    :cond_1e
    const-string v1, "android.intent.action.USB_NOT_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_30

    .line 219
    const-string v1, "usb unconnected"

    invoke-static {v3, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$6;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->enableNetwork(Landroid/content/Context;)V

    .line 222
    :cond_30
    return-void
.end method
