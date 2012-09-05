.class Lcom/samsung/wimax/DM/DM$4;
.super Ljava/lang/Object;
.source "DM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/DM/DM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/DM/DM;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/DM/DM;)V
    .registers 2
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v1, v1, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    iget-object v1, v1, Lcom/samsung/wimax/DM/WiMAXNative;->qDMMsg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 482
    :try_start_c
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v1, v1, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    iget-object v1, v1, Lcom/samsung/wimax/DM/WiMAXNative;->qDMMsg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;

    iput-object v1, v2, Lcom/samsung/wimax/DM/DM;->msgDMPkt:Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;

    .line 483
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v1, v1, Lcom/samsung/wimax/DM/DM;->msgDMPkt:Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;

    iget v1, v1, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->code:I

    sparse-switch v1, :sswitch_data_b8

    .line 526
    const-string v1, "WiMAX_DM_APP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN INFO RECEIVED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v3, v3, Lcom/samsung/wimax/DM/DM;->msgDMPkt:Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;

    iget v3, v3, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_43
    :goto_43
    return-void

    .line 487
    :sswitch_44
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v2, v2, Lcom/samsung/wimax/DM/DM;->msgDMPkt:Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/DM/DM;->ProcessDMData(Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;)V

    .line 488
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    const/4 v2, 0x1

    #setter for: Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z
    invoke-static {v1, v2}, Lcom/samsung/wimax/DM/DM;->access$1002(Lcom/samsung/wimax/DM/DM;Z)Z
    :try_end_53
    .catchall {:try_start_c .. :try_end_53} :catchall_59
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_53} :catch_54

    goto :goto_43

    .line 530
    :catch_54
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/Exception;
    :try_start_55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_43

    .line 533
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_59
    move-exception v1

    throw v1

    .line 494
    :sswitch_5b
    :try_start_5b
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "CMD_HO_LATENCY received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v2, v2, Lcom/samsung/wimax/DM/DM;->msgDMPkt:Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/DM/DM;->ProcessDMData(Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;)V

    .line 496
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "CMD_HO_LATENCY breaked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 502
    :sswitch_73
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "CMD_START_CNF received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v2, v2, Lcom/samsung/wimax/DM/DM;->msgDMPkt:Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/DM/DM;->ProcessDMData(Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;)V

    goto :goto_43

    .line 508
    :sswitch_84
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "CMD_STOP_CNF received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    invoke-virtual {v1}, Lcom/samsung/wimax/DM/DM;->ProcessClrDMData()V

    .line 510
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z
    invoke-static {v1, v2}, Lcom/samsung/wimax/DM/DM;->access$1002(Lcom/samsung/wimax/DM/DM;Z)Z

    goto :goto_43

    .line 515
    :sswitch_97
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "CMD_NBR_CELL_INFO received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$4;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v2, v2, Lcom/samsung/wimax/DM/DM;->msgDMPkt:Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/DM/DM;->ProcessNbrInfo(Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;)V

    goto :goto_43

    .line 520
    :sswitch_a8
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "CMD_NBR_CELL_INFO_ON_CNF received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 523
    :sswitch_b0
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "CMD_NBR_CELL_INFO_OFF_CNF received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_5b .. :try_end_b7} :catchall_59
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_b7} :catch_54

    goto :goto_43

    .line 483
    :sswitch_data_b8
    .sparse-switch
        0x3 -> :sswitch_73
        0x5 -> :sswitch_84
        0xc -> :sswitch_44
        0x19 -> :sswitch_5b
        0x26 -> :sswitch_97
        0x28 -> :sswitch_a8
        0x2a -> :sswitch_b0
    .end sparse-switch
.end method
