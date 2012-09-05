.class Lcom/sec/android/app/kieswifi/ui/ConnectActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 647
    const/4 v0, 0x1

    const-string v1, "==== USB Connected ===="

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->access$600(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->getPlugType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_33

    .line 653
    invoke-static {}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->access$700()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-static {}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->access$700()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 656
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->showDialog(I)V

    .line 658
    :cond_3a
    return-void
.end method
