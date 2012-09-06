.class Lcom/samsung/client/DMApp$3;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/samsung/client/DMApp;)V
    .registers 2
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 549
    :try_start_3
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_266

    .line 686
    :cond_22
    :goto_22
    :pswitch_22
    return-void

    .line 554
    :pswitch_23
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->sessStatus:I
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$700(Lcom/samsung/client/DMApp;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3e

    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->sessStatus:I
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$700(Lcom/samsung/client/DMApp;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3e

    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->sessStatus:I
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$700(Lcom/samsung/client/DMApp;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_22

    .line 555
    :cond_3e
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    if-eqz v1, :cond_64

    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_8b

    move-result v1

    if-eq v1, v5, :cond_64

    .line 557
    :try_start_4a
    const-string v1, "DMApp"

    const-string v2, "shutdownDMSession()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->instId:I
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$1400(Lcom/samsung/client/DMApp;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 560
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/client/DMApp;->instId:I
    invoke-static {v1, v2}, Lcom/samsung/client/DMApp;->access$1402(Lcom/samsung/client/DMApp;I)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_64} :catch_96

    .line 566
    :cond_64
    :goto_64
    :try_start_64
    sget-boolean v1, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-nez v1, :cond_c6

    .line 567
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v1

    if-ne v1, v4, :cond_a1

    .line 568
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->hfaProgress()V
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2500(Lcom/samsung/client/DMApp;)V

    .line 594
    :cond_73
    :goto_73
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_76} :catch_8b

    move-result v1

    if-nez v1, :cond_87

    .line 596
    :try_start_79
    const-string v1, "DMApp"

    const-string v2, "Session progress CLEAN UP FUMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/client/ISyncmlService;->fumoAbort()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_87} :catch_11b

    .line 602
    :cond_87
    :goto_87
    const/4 v1, 0x0

    :try_start_88
    sput-boolean v1, Lcom/samsung/client/DMApp;->mNIAProgress:Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8a} :catch_8b

    goto :goto_22

    .line 683
    :catch_8b
    move-exception v0

    .line 684
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 561
    .end local v0           #e:Ljava/lang/Exception;
    :catch_96
    move-exception v0

    .line 562
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_97
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 569
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a1
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v1

    if-ne v1, v5, :cond_ad

    .line 570
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->fumoProgress()V
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2600(Lcom/samsung/client/DMApp;)V

    goto :goto_73

    .line 571
    :cond_ad
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v1

    if-ne v1, v6, :cond_b9

    .line 572
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->prlProgress()V
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2700(Lcom/samsung/client/DMApp;)V

    goto :goto_73

    .line 573
    :cond_b9
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_73

    .line 574
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->dcProgress()V
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2800(Lcom/samsung/client/DMApp;)V

    goto :goto_73

    .line 577
    :cond_c6
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v1

    if-ne v1, v5, :cond_fa

    .line 578
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->nifumoProgress()V
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2900(Lcom/samsung/client/DMApp;)V

    .line 587
    :goto_d1
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " userCancel ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    iget-boolean v3, v3, Lcom/samsung/client/DMApp;->userCancel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    iget-boolean v1, v1, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v1, :cond_73

    .line 590
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->handleNIAretry()V
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$3200(Lcom/samsung/client/DMApp;)V

    goto/16 :goto_73

    .line 579
    :cond_fa
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v1

    if-ne v1, v6, :cond_106

    .line 580
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->niprlProgress()V
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$3000(Lcom/samsung/client/DMApp;)V

    goto :goto_d1

    .line 581
    :cond_106
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_113

    .line 582
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->nidcProgress()V
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$3100(Lcom/samsung/client/DMApp;)V

    goto :goto_d1

    .line 584
    :cond_113
    const-string v1, "DMApp"

    const-string v2, "Unspecified NI session type"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 598
    :catch_11b
    move-exception v0

    .line 599
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_87

    .line 607
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_127
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->prlUpdated:I
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$3300(Lcom/samsung/client/DMApp;)I

    move-result v1

    if-ne v1, v4, :cond_14d

    .line 608
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/prlupdate/PRLUpdate;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/prlupdate/PRLUpdate;->mUpdateAvailable:Z

    .line 613
    :goto_13a
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    const/4 v2, -0x1

    #setter for: Lcom/samsung/client/DMApp;->prlUpdated:I
    invoke-static {v1, v2}, Lcom/samsung/client/DMApp;->access$3302(Lcom/samsung/client/DMApp;I)I

    .line 614
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/prlupdate/PRLUpdate;

    invoke-virtual {v1}, Lcom/samsung/prlupdate/PRLUpdate;->gotoSuccess()V

    goto/16 :goto_22

    .line 610
    :cond_14d
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/prlupdate/PRLUpdate;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/prlupdate/PRLUpdate;->mUpdateAvailable:Z

    goto :goto_13a

    .line 619
    :pswitch_159
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->deviceConfigured:I
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$3400(Lcom/samsung/client/DMApp;)I

    move-result v1

    if-ne v1, v4, :cond_17f

    .line 620
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mUpdated:Z

    .line 625
    :goto_16c
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    const/4 v2, -0x1

    #setter for: Lcom/samsung/client/DMApp;->deviceConfigured:I
    invoke-static {v1, v2}, Lcom/samsung/client/DMApp;->access$3402(Lcom/samsung/client/DMApp;I)I

    .line 626
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-virtual {v1}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->gotoSuccess()V

    goto/16 :goto_22

    .line 622
    :cond_17f
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mUpdated:Z

    goto :goto_16c

    .line 630
    :pswitch_18b
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DL_PROG_MSG currentActivity :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isUpdateCompleted :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isUpdateCompleted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1f0

    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isUpdateCompleted()Z

    move-result v1

    if-nez v1, :cond_1f0

    .line 635
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    const/4 v2, 0x1

    #setter for: Lcom/samsung/client/DMApp;->fumoUserStart:Z
    invoke-static {v1, v2}, Lcom/samsung/client/DMApp;->access$1702(Lcom/samsung/client/DMApp;Z)Z
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_1cf} :catch_8b

    .line 638
    :try_start_1cf
    const-string v1, "DMApp"

    const-string v2, "CLEAN UP FUMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/client/ISyncmlService;->fumoAbort()V
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1dd} :catch_1e5

    .line 643
    :goto_1dd
    :try_start_1dd
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_22

    .line 640
    :catch_1e5
    move-exception v0

    .line 641
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1dd

    .line 648
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1f0
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v1, :cond_22

    .line 649
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/fumo/FirmwareUpdate;

    iget-object v2, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->total:I
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$1000(Lcom/samsung/client/DMApp;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->current:I
    invoke-static {v3}, Lcom/samsung/client/DMApp;->access$1100(Lcom/samsung/client/DMApp;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/fumo/FirmwareUpdate;->dlprogress(II)V

    goto/16 :goto_22

    .line 655
    :pswitch_213
    iget-object v2, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->gotoUpdate(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 659
    :pswitch_21e
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    iget-object v2, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->fumoRunStatus:I
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$1500(Lcom/samsung/client/DMApp;)I

    move-result v2

    #calls: Lcom/samsung/client/DMApp;->handleFumoRunStatus(I)V
    invoke-static {v1, v2}, Lcom/samsung/client/DMApp;->access$3500(Lcom/samsung/client/DMApp;I)V

    goto/16 :goto_22

    .line 663
    :pswitch_22b
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->handleATCommands()V
    invoke-static {v1}, Lcom/samsung/client/DMApp;->access$3600(Lcom/samsung/client/DMApp;)V

    goto/16 :goto_22

    .line 667
    :pswitch_232
    iget-object v2, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/client/TslcmnSan$TslSanMsg;

    #calls: Lcom/samsung/client/DMApp;->startNIASession(Lcom/samsung/client/TslcmnSan$TslSanMsg;)V
    invoke-static {v2, v1}, Lcom/samsung/client/DMApp;->access$3700(Lcom/samsung/client/DMApp;Lcom/samsung/client/TslcmnSan$TslSanMsg;)V

    goto/16 :goto_22

    .line 670
    :pswitch_23d
    const-string v1, "DMApp"

    const-string v2, "....POST_START_HFA_MSG ....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->postHfaStartSession()Z
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_249} :catch_8b

    goto/16 :goto_22

    .line 676
    :pswitch_24b
    :try_start_24b
    const-string v1, "DMApp"

    const-string v2, "CLEAN UP FUMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v1, p0, Lcom/samsung/client/DMApp$3;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->cancelDld()V
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_257} :catch_259

    goto/16 :goto_22

    .line 678
    :catch_259
    move-exception v0

    .line 679
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_25a
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_263} :catch_8b

    goto/16 :goto_22

    .line 551
    nop

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_23
        :pswitch_127
        :pswitch_159
        :pswitch_22
        :pswitch_18b
        :pswitch_21e
        :pswitch_22b
        :pswitch_23d
        :pswitch_232
        :pswitch_24b
        :pswitch_213
    .end packed-switch
.end method
