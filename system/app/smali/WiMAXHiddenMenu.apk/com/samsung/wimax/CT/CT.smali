.class public Lcom/samsung/wimax/CT/CT;
.super Landroid/app/Activity;
.source "CT.java"

# interfaces
.implements Lcom/samsung/wimax/CT/CTMsgDefine;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HIM_MNG_RET_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CT MSG"


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private doUpdateGUI:Ljava/lang/Runnable;

.field mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field mTask:Ljava/lang/Runnable;

.field mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field public m_bOpenDevice:Z

.field public m_bOpenMain:Z

.field public m_bPoweroff:Z

.field public m_bPoweron:Z

.field public strBW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    .line 35
    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    .line 36
    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenMain:Z

    .line 43
    new-instance v0, Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-direct {v0}, Lcom/samsung/wimax/CT/WiMAXNative;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/CT/CT;->mHandler:Landroid/os/Handler;

    .line 540
    new-instance v0, Lcom/samsung/wimax/CT/CT$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/CT/CT$1;-><init>(Lcom/samsung/wimax/CT/CT;)V

    iput-object v0, p0, Lcom/samsung/wimax/CT/CT;->mTask:Ljava/lang/Runnable;

    .line 556
    new-instance v0, Lcom/samsung/wimax/CT/CT$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/CT/CT$2;-><init>(Lcom/samsung/wimax/CT/CT;)V

    iput-object v0, p0, Lcom/samsung/wimax/CT/CT;->doUpdateGUI:Ljava/lang/Runnable;

    return-void
.end method

.method private CheckWimaxOn()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 577
    const-string v2, "CT MSG"

    const-string v3, "CheckWimaxOn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 581
    iget-object v2, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 582
    const-string v2, "CT MSG"

    const-string v3, "WiMAX modem is ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v2, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 588
    :cond_23
    const-wide/16 v2, 0xc8

    :try_start_25
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_3d

    .line 593
    :goto_28
    iget-object v2, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    if-ne v2, v4, :cond_23

    .line 601
    :goto_30
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 602
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 603
    return-void

    .line 589
    .end local v0           #button:Landroid/widget/Button;
    :catch_3d
    move-exception v1

    .line 591
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_28

    .line 598
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_42
    const-string v2, "CT MSG"

    const-string v3, "WiMAX modem is OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private OpenDevice()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 606
    const/4 v3, -0x1

    .line 608
    .local v3, ret:I
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 610
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 611
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 614
    :cond_16
    const-wide/16 v5, 0xc8

    :try_start_18
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_7e

    .line 619
    :goto_1b
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v5

    if-ne v5, v7, :cond_16

    .line 625
    :cond_23
    const-string v5, "CT MSG"

    const-string v6, "Try to WiMAX power on."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v5}, Lcom/samsung/wimax/CT/WiMAXNative;->WiMAXPowerOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    .line 628
    iget-boolean v5, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    if-eqz v5, :cond_95

    .line 629
    const-string v5, "CT MSG"

    const-string v6, "Power on : success!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-wide/16 v5, 0xdac

    :try_start_3f
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_83

    .line 638
    :goto_42
    if-eq v3, v7, :cond_58

    .line 639
    const/4 v2, 0x0

    .local v2, i:I
    :goto_45
    const/16 v5, 0x3c

    if-ge v2, v5, :cond_58

    .line 641
    const-string v5, "CT MSG"

    const-string v6, "Device Open >>> start !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v5}, Lcom/samsung/wimax/CT/WiMAXNative;->wmxopen()I

    move-result v3

    .line 644
    if-ne v3, v7, :cond_88

    .line 660
    .end local v2           #i:I
    :cond_58
    :goto_58
    if-eq v3, v7, :cond_a6

    .line 661
    const-string v5, "OpenDevice fail!!!"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 662
    const-string v5, "CT MSG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OpenDevice fail!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iput-boolean v8, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    .line 732
    :goto_7d
    return-void

    .line 615
    :catch_7e
    move-exception v1

    .line 617
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1b

    .line 632
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :catch_83
    move-exception v1

    .line 634
    .restart local v1       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_42

    .line 648
    .end local v1           #e1:Ljava/lang/InterruptedException;
    .restart local v2       #i:I
    :cond_88
    const-wide/16 v5, 0xc8

    :try_start_8a
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_90

    .line 639
    :goto_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 649
    :catch_90
    move-exception v1

    .line 651
    .restart local v1       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8d

    .line 656
    .end local v1           #e1:Ljava/lang/InterruptedException;
    .end local v2           #i:I
    :cond_95
    const-string v5, "CT MSG"

    const-string v6, "Power on : fail"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v5, "Power On >>> fail !!!!!"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_58

    .line 665
    :cond_a6
    iput-boolean v7, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    .line 666
    iput-boolean v7, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenMain:Z

    .line 667
    const-string v5, "OpenDevice Success!!!"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 668
    const-string v5, "CT MSG"

    const-string v6, "OpenDevice Success!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const v5, 0x7f080047

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 671
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 673
    const v5, 0x7f080048

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 674
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 676
    const v5, 0x7f080005

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 678
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 680
    const v5, 0x7f08000d

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 681
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 683
    const v5, 0x7f080011

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 684
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 686
    const v5, 0x7f080015

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 687
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 689
    const v5, 0x7f080019

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 690
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 692
    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 693
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 695
    const v5, 0x7f080021

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 696
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 698
    const v5, 0x7f080025

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 699
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 701
    const v5, 0x7f080029

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 702
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 704
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 705
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 707
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 708
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 710
    const v5, 0x7f080031

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 711
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 713
    const v5, 0x7f080035

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 714
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 716
    const v5, 0x7f080039

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 717
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 719
    const v5, 0x7f08003d

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 720
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 722
    const v5, 0x7f080041

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 723
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 725
    const v5, 0x7f080045

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 726
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 728
    new-instance v4, Ljava/lang/Thread;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/wimax/CT/CT;->mTask:Ljava/lang/Runnable;

    const-string v7, "RecvCTMsg"

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 729
    .local v4, thr:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 730
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto/16 :goto_7d
.end method

.method private ProcessAck(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    .registers 4
    .parameter "msgPkt"

    .prologue
    .line 933
    const-string v0, "CT MSG"

    const-string v1, "<<<< ProcessAck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-void
.end method

.method private ProcessData(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    .registers 13
    .parameter "msgPkt"

    .prologue
    const v10, 0x7f040003

    const v9, 0x7f040004

    const v8, 0x7f030002

    const v7, 0x1090008

    .line 735
    const-string v4, "CT MSG"

    const-string v5, "<<<< ProcessData"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->gId:I

    packed-switch v4, :pswitch_data_478

    .line 927
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown CT gId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->gId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :goto_32
    :pswitch_32
    return-void

    .line 740
    :pswitch_33
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_72

    .line 741
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_AUTH_POLICY_SPT] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const v4, 0x7f040005

    invoke-static {p0, v4, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 743
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 744
    const v4, 0x7f080030

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 745
    .local v3, sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 747
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 748
    .local v2, position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_32

    .line 749
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_72
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_a1

    .line 750
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_IDLE_TIMER] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const v4, 0x7f08003c

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 752
    .local v1, eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 753
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_a1
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_df

    .line 754
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_PWRCTRL_ON] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 756
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 757
    const v4, 0x7f080040

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 758
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 760
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 761
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 762
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_df
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_10f

    .line 774
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_TX_POWER] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 779
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 780
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_10f
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_14d

    .line 781
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_ARQ_SPT] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 783
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 784
    const v4, 0x7f080034

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 785
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 787
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 788
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 789
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_14d
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_18e

    .line 790
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_SLEEP_IDLE_TRANS] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const v4, 0x7f040007

    invoke-static {p0, v4, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 792
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 793
    const v4, 0x7f080038

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 794
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 796
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 797
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 798
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_18e
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1cc

    .line 799
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_MIMO_SPT] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 801
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 802
    const v4, 0x7f080028

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 803
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 805
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 806
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 807
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_1cc
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x61

    if-ne v4, v5, :cond_20d

    .line 808
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_NUM] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const v4, 0x7f040006

    invoke-static {p0, v4, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 812
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 813
    const v4, 0x7f080008

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 814
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 816
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 817
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 818
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_20d
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x62

    if-ne v4, v5, :cond_23d

    .line 819
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_FREQ_0] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const v4, 0x7f08000c

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 831
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 832
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_23d
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x63

    if-ne v4, v5, :cond_27b

    .line 833
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_BW_0] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-static {p0, v10, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 835
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 836
    const v4, 0x7f080010

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 837
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 839
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 840
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 841
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_27b
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_2ab

    .line 842
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_FREQ_1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const v4, 0x7f080014

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 854
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 855
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_2ab
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x66

    if-ne v4, v5, :cond_2e9

    .line 856
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_BW_1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-static {p0, v10, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 858
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 859
    const v4, 0x7f080018

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 860
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 862
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 863
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 864
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_2e9
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x68

    if-ne v4, v5, :cond_319

    .line 865
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_FREQ_2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 877
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 878
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_319
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x69

    if-ne v4, v5, :cond_357

    .line 879
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_BW_2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-static {p0, v10, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 881
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 882
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 883
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 885
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 886
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 887
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_357
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x74

    if-ne v4, v5, :cond_395

    .line 888
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_WIDE_SCAN_ON_OFF] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 890
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 891
    const v4, 0x7f080024

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 892
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 894
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 895
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 897
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_395
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_GID_MAC_CFG] gId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 902
    :pswitch_3bd
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    if-nez v4, :cond_3f9

    .line 903
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_RF_CONFIG_DIVERSITY_ON] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 905
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 906
    const v4, 0x7f08002c

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 907
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 909
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 910
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 912
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_3f9
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_GID_RF_CFG] gId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 917
    :pswitch_421
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_450

    .line 918
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_SYS_INFO_MAD_ADDR] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const v4, 0x7f080004

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 920
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 922
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_450
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_GID_SYS_INFO] gId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 736
    :pswitch_data_478
    .packed-switch 0x0
        :pswitch_32
        :pswitch_33
        :pswitch_3bd
        :pswitch_421
    .end packed-switch
.end method

.method private ReadData()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 937
    const-string v0, "CT MSG"

    const-string v1, "<<<< ReadData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v1, 0x3

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 942
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x61

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 945
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x62

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 946
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x63

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 947
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x65

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 948
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x66

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 949
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 950
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x69

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 953
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x74

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 956
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x3b

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 959
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 962
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v1, 0x7

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 965
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x1d

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 968
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x1e

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 971
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0xa

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 974
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0xc

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 977
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0xe

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 978
    return-void
.end method

.method private SendNVRamUpdate(I)V
    .registers 3
    .parameter "cmd"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v0, p1}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 982
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/wimax/CT/CT;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->doUpdateGUI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/wimax/CT/CT;Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/wimax/CT/CT;->ProcessData(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wimax/CT/CT;Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/wimax/CT/CT;->ProcessAck(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "v"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_3b0

    .line 479
    :goto_a
    :sswitch_a
    return-void

    .line 262
    :sswitch_b
    const-string v7, "CT MSG"

    const-string v8, "Open Device !!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_12
    iget-boolean v7, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-ne v7, v11, :cond_1c

    .line 265
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto :goto_a

    .line 269
    :catch_1a
    move-exception v7

    goto :goto_a

    .line 267
    :cond_1c
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->OpenDevice()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_1a

    goto :goto_a

    .line 274
    :sswitch_20
    iget-boolean v7, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-ne v7, v11, :cond_3a

    .line 275
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v7, v11}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 276
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    .line 278
    const-wide/16 v7, 0x7d0

    :try_start_2e
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_35

    .line 283
    :goto_31
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto :goto_a

    .line 279
    :catch_35
    move-exception v0

    .line 281
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_31

    .line 285
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_3a
    const-string v7, "Device is not opened!!"

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 290
    :sswitch_44
    iget-boolean v7, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-ne v7, v11, :cond_5d

    .line 291
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 292
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    .line 294
    const-wide/16 v7, 0x7d0

    :try_start_54
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_a

    .line 295
    :catch_58
    move-exception v0

    .line 297
    .restart local v0       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .line 300
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_5d
    const-string v7, "Device is not opened!!"

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 325
    :sswitch_67
    const v7, 0x7f08000c

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 326
    .local v1, eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, strFA:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected FA 0 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x62

    invoke-virtual {v7, v12, v11, v8, v4}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 330
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 334
    .end local v1           #eTxt:Landroid/widget/EditText;
    .end local v4           #strFA:Ljava/lang/String;
    :sswitch_9c
    const v7, 0x7f080010

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 335
    .local v2, sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    .line 337
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected FA 0 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x63

    iget-object v9, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v7, v12, v11, v8, v9}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 339
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 346
    .end local v2           #sp:Landroid/widget/Spinner;
    :sswitch_d5
    const v7, 0x7f080014

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 347
    .restart local v1       #eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    .restart local v4       #strFA:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected FA 1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x65

    invoke-virtual {v7, v12, v11, v8, v4}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 351
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 355
    .end local v1           #eTxt:Landroid/widget/EditText;
    .end local v4           #strFA:Ljava/lang/String;
    :sswitch_10a
    const v7, 0x7f080018

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 356
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    .line 358
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected FA 0 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x66

    iget-object v9, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v7, v12, v11, v8, v9}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 360
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 367
    .end local v2           #sp:Landroid/widget/Spinner;
    :sswitch_143
    const v7, 0x7f08001c

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 368
    .restart local v1       #eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    .restart local v4       #strFA:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected FA 2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x68

    invoke-virtual {v7, v12, v11, v8, v4}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 372
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 376
    .end local v1           #eTxt:Landroid/widget/EditText;
    .end local v4           #strFA:Ljava/lang/String;
    :sswitch_178
    const v7, 0x7f080020

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 377
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    .line 379
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected FA 0 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x69

    iget-object v9, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v7, v12, v11, v8, v9}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 381
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 385
    .end local v2           #sp:Landroid/widget/Spinner;
    :sswitch_1b1
    const v7, 0x7f080024

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 386
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 388
    .local v3, strData:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Best_FA_Option : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x74

    invoke-virtual {v7, v12, v11, v8, v3}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 390
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 394
    .end local v2           #sp:Landroid/widget/Spinner;
    .end local v3           #strData:Ljava/lang/String;
    :sswitch_1e4
    const v7, 0x7f080028

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 395
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 397
    .restart local v3       #strData:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIMO ON/OFF : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x3b

    invoke-virtual {v7, v12, v11, v8, v3}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 399
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 403
    .end local v2           #sp:Landroid/widget/Spinner;
    .end local v3           #strData:Ljava/lang/String;
    :sswitch_217
    const v7, 0x7f08002c

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 404
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    .restart local v3       #strData:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Diversity Antenna ON/OFF : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v7, v12, v12, v10, v3}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 408
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 414
    .end local v2           #sp:Landroid/widget/Spinner;
    .end local v3           #strData:Ljava/lang/String;
    :sswitch_248
    const v7, 0x7f080008

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 415
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 417
    .restart local v3       #strData:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAX Num of used FA : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x61

    invoke-virtual {v7, v12, v11, v8, v3}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 419
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 423
    .end local v2           #sp:Landroid/widget/Spinner;
    .end local v3           #strData:Ljava/lang/String;
    :sswitch_27b
    const v7, 0x7f080030

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 424
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 426
    .restart local v3       #strData:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auth Policy support ON/OFF : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v8, 0x7

    invoke-virtual {v7, v12, v11, v8, v3}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 428
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 432
    .end local v2           #sp:Landroid/widget/Spinner;
    .end local v3           #strData:Ljava/lang/String;
    :sswitch_2ad
    const v7, 0x7f080034

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 433
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 435
    .restart local v3       #strData:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ARQ support ON/OFF : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x1d

    invoke-virtual {v7, v12, v11, v8, v3}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 437
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 441
    .end local v2           #sp:Landroid/widget/Spinner;
    .end local v3           #strData:Ljava/lang/String;
    :sswitch_2e0
    const v7, 0x7f080038

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 442
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 444
    .restart local v3       #strData:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Idle_Mode ON/OFF : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0x1e

    invoke-virtual {v7, v12, v11, v8, v3}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 446
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 450
    .end local v2           #sp:Landroid/widget/Spinner;
    .end local v3           #strData:Ljava/lang/String;
    :sswitch_313
    const v7, 0x7f08003c

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 451
    .restart local v1       #eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, strIdleTimer:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IdleTimer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0xa

    invoke-virtual {v7, v12, v11, v8, v5}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 455
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 459
    .end local v1           #eTxt:Landroid/widget/EditText;
    .end local v5           #strIdleTimer:Ljava/lang/String;
    :sswitch_348
    const v7, 0x7f080040

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 460
    .restart local v2       #sp:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 462
    .restart local v3       #strData:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Power Control ON/OFF : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0xc

    invoke-virtual {v7, v12, v11, v8, v3}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 464
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 468
    .end local v2           #sp:Landroid/widget/Spinner;
    .end local v3           #strData:Ljava/lang/String;
    :sswitch_37b
    const v7, 0x7f080044

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 469
    .restart local v1       #eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, strTxPower:Ljava/lang/String;
    const-string v7, "CT MSG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TX Power : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v7, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v8, 0xe

    invoke-virtual {v7, v12, v11, v8, v6}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 475
    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_a

    .line 201
    :sswitch_data_3b0
    .sparse-switch
        0x7f080001 -> :sswitch_b
        0x7f080005 -> :sswitch_a
        0x7f080009 -> :sswitch_248
        0x7f08000d -> :sswitch_67
        0x7f080011 -> :sswitch_9c
        0x7f080015 -> :sswitch_d5
        0x7f080019 -> :sswitch_10a
        0x7f08001d -> :sswitch_143
        0x7f080021 -> :sswitch_178
        0x7f080025 -> :sswitch_1b1
        0x7f080029 -> :sswitch_1e4
        0x7f08002d -> :sswitch_217
        0x7f080031 -> :sswitch_27b
        0x7f080035 -> :sswitch_2ad
        0x7f080039 -> :sswitch_2e0
        0x7f08003d -> :sswitch_313
        0x7f080041 -> :sswitch_348
        0x7f080045 -> :sswitch_37b
        0x7f080047 -> :sswitch_20
        0x7f080048 -> :sswitch_44
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 49
    move-object v2, p0

    .line 50
    .local v2, cxt:Landroid/content/Context;
    iput-object p0, p0, Lcom/samsung/wimax/CT/CT;->mContext:Landroid/content/Context;

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/samsung/wimax/CT/CT;->cm:Landroid/net/ConnectivityManager;

    .line 53
    const-string v3, "CT MSG"

    const-string v4, "onCreate!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->setContentView(I)V

    .line 64
    const v3, 0x7f080005

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    .local v1, button1:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v3, 0x7f08000d

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 68
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 71
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f080015

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 74
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v3, 0x7f080019

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 77
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 80
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 83
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v3, 0x7f080025

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 86
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v3, 0x7f080029

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 89
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 92
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v3, 0x7f080009

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 95
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v3, 0x7f080031

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 98
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 101
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v3, 0x7f080039

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 104
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v3, 0x7f08003d

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 107
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v3, 0x7f080041

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 110
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v3, 0x7f080045

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 113
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v3, 0x7f080001

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 116
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v3, 0x7f080047

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 119
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v3, 0x7f080048

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 122
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 483
    const-string v1, "CT MSG"

    const-string v2, "menu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0}, Lcom/samsung/wimax/CT/CT;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 485
    .local v0, inflater:Landroid/view/MenuInflater;
    iget-boolean v1, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenMain:Z

    if-eqz v1, :cond_14

    .line 487
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 489
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    if-eqz v0, :cond_1e

    .line 177
    const-string v0, "CT MSG"

    const-string v1, "==> Try to power off."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v0}, Lcom/samsung/wimax/CT/WiMAXNative;->WiMAXPowerOff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    .line 189
    iget-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    if-eqz v0, :cond_22

    .line 190
    const-string v0, "CT MSG"

    const-string v1, "Power off : success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1e
    :goto_1e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 197
    return-void

    .line 192
    :cond_22
    const-string v0, "CT MSG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power off : fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v0, "Power Off >>> fail !!!!!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 494
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    move v1, v2

    .line 537
    :goto_a
    return v1

    .line 497
    :pswitch_b
    :try_start_b
    iget-boolean v2, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-ne v2, v1, :cond_15

    .line 498
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto :goto_a

    .line 502
    :catch_13
    move-exception v2

    goto :goto_a

    .line 500
    :cond_15
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->OpenDevice()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_13

    goto :goto_a

    .line 507
    :pswitch_19
    iget-boolean v3, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-ne v3, v1, :cond_33

    .line 508
    iget-object v3, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v3, v1}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 509
    invoke-direct {p0, v2}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    .line 511
    const-wide/16 v2, 0x7d0

    :try_start_27
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2e

    .line 516
    :goto_2a
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto :goto_a

    .line 512
    :catch_2e
    move-exception v0

    .line 514
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2a

    .line 518
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_33
    const-string v3, "Device is not opened!!"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 523
    :pswitch_3d
    iget-boolean v3, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-ne v3, v1, :cond_56

    .line 524
    iget-object v3, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 525
    invoke-direct {p0, v2}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    .line 527
    const-wide/16 v2, 0x7d0

    :try_start_4d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_a

    .line 528
    :catch_51
    move-exception v0

    .line 530
    .restart local v0       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .line 533
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_56
    const-string v3, "Device is not opened!!"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 494
    :pswitch_data_60
    .packed-switch 0x7f080129
        :pswitch_b
        :pswitch_19
        :pswitch_3d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 142
    const-string v0, "CT MSG"

    const-string v1, "onPause!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    if-eqz v0, :cond_28

    .line 144
    const-string v0, "CT MSG"

    const-string v1, "==> Try to power off."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v0}, Lcom/samsung/wimax/CT/WiMAXNative;->WiMAXPowerOff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    .line 160
    iget-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    if-eqz v0, :cond_2f

    .line 161
    const-string v0, "CT MSG"

    const-string v1, "Power off : success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-boolean v3, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    .line 168
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/samsung/wimax/CT/CT;->finish()V

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    return-void

    .line 164
    :cond_2f
    const-string v0, "CT MSG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power off : fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v0, "Power Off >>> fail !!!!!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_28
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->CheckWimaxOn()V

    .line 138
    return-void
.end method
