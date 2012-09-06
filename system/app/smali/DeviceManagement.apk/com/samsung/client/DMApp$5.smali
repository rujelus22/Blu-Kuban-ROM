.class Lcom/samsung/client/DMApp$5;
.super Landroid/os/CountDownTimer;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method constructor <init>(Lcom/samsung/client/DMApp;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/samsung/client/DMApp$5;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 1707
    const-string v0, "DMApp"

    const-string v1, "delayedBgNiaSession: onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :try_start_7
    sget-boolean v0, Lcom/samsung/client/DMApp;->mAirModeState:Z

    if-eqz v0, :cond_16

    .line 1710
    sget-object v0, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_15

    .line 1711
    sget-object v0, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1737
    :cond_15
    :goto_15
    return-void

    .line 1716
    :cond_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1717
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1719
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4b

    .line 1720
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2400()Lcom/samsung/client/DMApp;

    move-result-object v1

    const-class v2, Lcom/samsung/prlupdate/PRLUpdate;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1721
    const-string v1, "niaprl"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1733
    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/samsung/client/DMApp$5;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3f} :catch_40

    goto :goto_15

    .line 1734
    :catch_40
    move-exception v0

    .line 1735
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 1722
    :cond_4b
    :try_start_4b
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6a

    .line 1723
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2400()Lcom/samsung/client/DMApp;

    move-result-object v1

    const-class v2, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1725
    iget-object v1, p0, Lcom/samsung/client/DMApp$5;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->downloadInProgress:Z
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$1200(Lcom/samsung/client/DMApp;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1726
    const-string v1, "firmware_download_started"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_36

    .line 1729
    :cond_6a
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2400()Lcom/samsung/client/DMApp;

    move-result-object v1

    const-class v2, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1730
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_78} :catch_40

    goto :goto_36
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 1702
    const-string v0, "DMApp"

    const-string v1, "delayedBgNiaSession: onTick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    return-void
.end method
