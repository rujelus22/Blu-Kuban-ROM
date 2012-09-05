.class Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$8;
.super Landroid/content/BroadcastReceiver;
.source "ConnectActivityTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 691
    const/4 v0, 0x1

    const-string v1, "==== USB Connected ===="

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->access$700(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->getPlugType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_33

    .line 697
    invoke-static {}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->access$800()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-static {}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->access$800()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->startActivity(Landroid/content/Intent;)V

    .line 700
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$8;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->showDialog(I)V

    .line 702
    :cond_3a
    return-void
.end method
