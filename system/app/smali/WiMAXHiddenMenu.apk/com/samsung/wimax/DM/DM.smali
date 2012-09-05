.class public Lcom/samsung/wimax/DM/DM;
.super Landroid/app/Activity;
.source "DM.java"

# interfaces
.implements Lcom/samsung/wimax/DM/DMMsgDefine;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CINR_UNITS:Ljava/lang/String; = " dB"

.field public static final FIVE_HZ:Ljava/lang/String; = "5Mhz"

.field public static final FREQUENCY_UNITS:Ljava/lang/String; = " Hz"

.field private static final HIM_MNG_RET_SUCCESS:I = 0x0

.field public static final RSSI_UNITS:Ljava/lang/String; = " dBm"

.field private static final TAG:Ljava/lang/String; = "WiMAX_DM_APP"

.field public static final TEMP_UNIT:Ljava/lang/String; = " C"

.field public static final TEN_HZ:Ljava/lang/String; = "10Mhz"

.field private static final TEST:Ljava/lang/String; = "##### TEST #####"

.field public static final TIME_UNITS:Ljava/lang/String; = " ms"

.field public static mBandW:Ljava/lang/String;

.field public static neTotalTimes:I


# instance fields
.field private doDMUpdateGUI:Ljava/lang/Runnable;

.field private isIdleDMStop:Z

.field private isIdleMode:Z

.field private isIdleNBRStop:Z

.field private isWimaxOn:Z

.field private isWimaxTethered:Z

.field mDMTask:Ljava/lang/Runnable;

.field protected mHandler:Landroid/os/Handler;

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mTestIntentFilter:Landroid/content/IntentFilter;

.field mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWstateReceiver:Landroid/content/BroadcastReceiver;

.field private m_bDMStarted:Z

.field private m_bNBRStarted:Z

.field private m_bOpenDevice:Z

.field private m_bReceiver:Z

.field msgDMPkt:Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string v0, "10Mhz"

    sput-object v0, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/samsung/wimax/DM/DM;->neTotalTimes:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    .line 42
    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z

    .line 43
    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->m_bNBRStarted:Z

    .line 44
    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->m_bReceiver:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->isWimaxOn:Z

    .line 47
    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->isWimaxTethered:Z

    .line 48
    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->isIdleMode:Z

    .line 49
    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->isIdleDMStop:Z

    .line 50
    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->isIdleNBRStop:Z

    .line 51
    new-instance v0, Lcom/samsung/wimax/DM/WiMAXNative;

    invoke-direct {v0}, Lcom/samsung/wimax/DM/WiMAXNative;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/DM/DM;->mIntentFilter:Landroid/content/IntentFilter;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/DM/DM;->mTestIntentFilter:Landroid/content/IntentFilter;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/DM/DM;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/samsung/wimax/DM/DM$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/DM/DM$1;-><init>(Lcom/samsung/wimax/DM/DM;)V

    iput-object v0, p0, Lcom/samsung/wimax/DM/DM;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/samsung/wimax/DM/DM$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/DM/DM$2;-><init>(Lcom/samsung/wimax/DM/DM;)V

    iput-object v0, p0, Lcom/samsung/wimax/DM/DM;->mWstateReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    new-instance v0, Lcom/samsung/wimax/DM/DM$3;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/DM/DM$3;-><init>(Lcom/samsung/wimax/DM/DM;)V

    iput-object v0, p0, Lcom/samsung/wimax/DM/DM;->mDMTask:Ljava/lang/Runnable;

    .line 478
    new-instance v0, Lcom/samsung/wimax/DM/DM$4;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/DM/DM$4;-><init>(Lcom/samsung/wimax/DM/DM;)V

    iput-object v0, p0, Lcom/samsung/wimax/DM/DM;->doDMUpdateGUI:Ljava/lang/Runnable;

    return-void
.end method

.method private CloseDevice()V
    .registers 8

    .prologue
    const/16 v6, 0x1388

    .line 690
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StopDM()V

    .line 691
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StopNBR()V

    .line 694
    const-wide/16 v3, 0x12c

    :try_start_a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_4e

    .line 703
    :goto_d
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mDMTask:Ljava/lang/Runnable;

    const-string v5, "RecvDMMsg"

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 705
    .local v2, thr:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 707
    const-string v3, "WiMAX_DM_APP"

    const-string v4, "[DM] driver closing Started!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v3, p0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    invoke-virtual {v3}, Lcom/samsung/wimax/DM/WiMAXNative;->wmxDMclose()I

    move-result v1

    .line 711
    .local v1, ret:I
    if-eqz v1, :cond_53

    .line 713
    const-string v3, "[DM] Device Driver is Failed"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 714
    const-string v3, "WiMAX_DM_APP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DM] CloseDevice fail!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    .line 723
    :goto_4d
    return-void

    .line 695
    .end local v1           #ret:I
    .end local v2           #thr:Ljava/lang/Thread;
    :catch_4e
    move-exception v0

    .line 697
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d

    .line 719
    .end local v0           #e1:Ljava/lang/InterruptedException;
    .restart local v1       #ret:I
    .restart local v2       #thr:Ljava/lang/Thread;
    :cond_53
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    .line 720
    const-string v3, "[DM] Driver Close OK"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 721
    const-string v3, "WiMAX_DM_APP"

    const-string v4, "[DM] CloseDevice Success!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method private OpenDevice()V
    .registers 6

    .prologue
    .line 545
    iget-object v2, p0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    invoke-virtual {v2}, Lcom/samsung/wimax/DM/WiMAXNative;->wmxDMopen()I

    move-result v0

    .line 547
    .local v0, ret:I
    if-eqz v0, :cond_40

    .line 549
    const-string v2, "Modem OFF or Opening driver Failed"

    const/16 v3, 0x1388

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 550
    const-string v2, "WiMAX_DM_APP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenDevice fail !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    .line 559
    :goto_2e
    iget-boolean v2, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    if-eqz v2, :cond_3f

    .line 562
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/wimax/DM/DM;->mDMTask:Ljava/lang/Runnable;

    const-string v4, "RecvDMMsg"

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 563
    .local v1, thr:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 570
    .end local v1           #thr:Ljava/lang/Thread;
    :cond_3f
    return-void

    .line 555
    :cond_40
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    goto :goto_2e
.end method

.method private ReadDMData()V
    .registers 4

    .prologue
    .line 826
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    const/16 v1, 0xc

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/wimax/DM/WiMAXNative;->ManageDMTxPkt(ILjava/lang/String;)Z

    .line 827
    return-void
.end method

.method private WiMax_StartDM()V
    .registers 3

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    if-nez v0, :cond_c

    .line 764
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "OpenDevice fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :goto_b
    return-void

    .line 769
    :cond_c
    const-string v0, "DM starting..."

    const/16 v1, 0x1388

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 770
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "Send DM start cmd......!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z

    .line 780
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/DM/WiMAXNative;->SendDMCmd(I)V

    goto :goto_b
.end method

.method private WiMax_StartNBRList()V
    .registers 6

    .prologue
    const/16 v4, 0x1388

    .line 728
    iget-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    if-nez v1, :cond_4e

    .line 730
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    .line 731
    .local v0, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    const-string v1, "WiMAX_DM_APP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiMax_StartNBRList ******** wimaxState......!!!   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_2c

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_3d

    .line 733
    :cond_2c
    const-string v1, "DM should be started before NBR list Req.."

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 734
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "DM should be started before NBR list Req....!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v0           #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :goto_3c
    return-void

    .line 736
    .restart local v0       #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :cond_3d
    const-string v1, "Device Driver is not opened yet"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 737
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "OpenDevice fail !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 742
    .end local v0           #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :cond_4e
    iget-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z

    if-eqz v1, :cond_6d

    .line 744
    const-string v1, "NBR will be started..."

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 745
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "Send NBR LIST REQ cmd......!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->m_bNBRStarted:Z

    .line 747
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/DM/WiMAXNative;->SendDMCmd(I)V

    goto :goto_3c

    .line 751
    :cond_6d
    const-string v1, "DM should be started before NBR list Req.."

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 752
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "DM should be started before NBR list Req....!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private WiMax_StopDM()V
    .registers 3

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z

    if-eqz v0, :cond_15

    .line 790
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "Send DM stop command..!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/DM/WiMAXNative;->SendDMCmd(I)V

    .line 792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z

    .line 799
    :goto_14
    return-void

    .line 797
    :cond_15
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "DM is not started, no stopDM msg sends....!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private WiMax_StopNBR()V
    .registers 3

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bNBRStarted:Z

    if-eqz v0, :cond_16

    .line 807
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "Send NBR stop command..!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/DM/WiMAXNative;->SendDMCmd(I)V

    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bNBRStarted:Z

    .line 816
    :goto_15
    return-void

    .line 814
    :cond_16
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "NBR is not started, no stopNBR msg sends....!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method static synthetic access$000(Lcom/samsung/wimax/DM/DM;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/wimax/DM/DM;->handleBSIDChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wimax/DM/DM;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/wimax/DM/DM;->handleSignalChanged(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/wimax/DM/DM;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/wimax/DM/DM;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/wimax/DM/DM;->handleFrequencyChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/wimax/DM/DM;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/wimax/DM/DM;->handledDHCPDuration(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/wimax/DM/DM;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/wimax/DM/DM;->handleDeviceTemperature(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/wimax/DM/DM;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/wimax/DM/DM;->handleSignalLevelChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/wimax/DM/DM;Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/wimax/DM/DM;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/wimax/DM/DM;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/wimax/DM/DM;->handleWimaxStateDetailChanged(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/wimax/DM/DM;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/wimax/DM/DM;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM;->doDMUpdateGUI:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkWiMAXState(Landroid/net/fourG/wimax/WimaxState;)I
    .registers 4
    .parameter "wimaxState"

    .prologue
    .line 882
    const/4 v0, 0x0

    .line 884
    .local v0, ret:I
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v1, :cond_7

    .line 885
    const/4 v0, 0x1

    .line 905
    :goto_6
    return v0

    .line 886
    :cond_7
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->INITIALIZED:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v1, :cond_d

    .line 887
    const/4 v0, 0x2

    goto :goto_6

    .line 888
    :cond_d
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v1, :cond_13

    .line 889
    const/4 v0, 0x3

    goto :goto_6

    .line 890
    :cond_13
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v1, :cond_19

    .line 891
    const/4 v0, 0x4

    goto :goto_6

    .line 892
    :cond_19
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v1, :cond_1f

    .line 893
    const/4 v0, 0x5

    goto :goto_6

    .line 894
    :cond_1f
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v1, :cond_25

    .line 895
    const/4 v0, 0x6

    goto :goto_6

    .line 896
    :cond_25
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v1, :cond_2b

    .line 897
    const/4 v0, 0x7

    goto :goto_6

    .line 898
    :cond_2b
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v1, :cond_32

    .line 899
    const/16 v0, 0x8

    goto :goto_6

    .line 900
    :cond_32
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v1, :cond_39

    .line 901
    const/16 v0, 0x9

    goto :goto_6

    .line 903
    :cond_39
    const/16 v0, 0x9

    goto :goto_6
.end method

.method private convertToCG(I)Ljava/lang/String;
    .registers 5
    .parameter "freq"

    .prologue
    .line 1335
    const/4 v0, 0x0

    .line 1336
    .local v0, fccCG:Ljava/lang/String;
    const-string v1, "10Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    .line 1338
    sparse-switch p1, :sswitch_data_c8

    .line 1472
    const-string v0, "ERR"

    .line 1475
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1342
    :sswitch_24
    const-string v0, "AB"

    .line 1343
    goto :goto_a

    .line 1347
    :sswitch_27
    const-string v0, "CD"

    .line 1348
    goto :goto_a

    .line 1352
    :sswitch_2a
    const-string v0, "EF"

    .line 1353
    goto :goto_a

    .line 1357
    :sswitch_2d
    const-string v0, "HG"

    .line 1358
    goto :goto_a

    .line 1362
    :sswitch_30
    const-string v0, "BC"

    .line 1363
    goto :goto_a

    .line 1367
    :sswitch_33
    const-string v0, "FH"

    .line 1368
    goto :goto_a

    .line 1370
    :sswitch_36
    const-string v0, "B1"

    .line 1371
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1376
    :sswitch_3d
    const-string v0, "A"

    .line 1377
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1382
    :sswitch_44
    const-string v0, "B"

    .line 1383
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1388
    :sswitch_4b
    const-string v0, "C"

    .line 1389
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1394
    :sswitch_52
    const-string v0, "D"

    .line 1395
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1398
    :sswitch_59
    const-string v0, "B2"

    .line 1399
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1404
    :sswitch_60
    const-string v0, "E"

    .line 1405
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1410
    :sswitch_67
    const-string v0, "F"

    .line 1411
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1416
    :sswitch_6e
    const-string v0, "H"

    .line 1417
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1422
    :sswitch_75
    const-string v0, "G"

    .line 1423
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto :goto_a

    .line 1426
    :sswitch_7c
    const-string v0, "A4B4"

    .line 1427
    goto :goto_a

    .line 1429
    :sswitch_7f
    const-string v0, "C4D4"

    .line 1430
    goto :goto_a

    .line 1432
    :sswitch_82
    const-string v0, "G4F4"

    .line 1433
    goto :goto_a

    .line 1435
    :sswitch_85
    const-string v0, "B4C4"

    .line 1436
    goto :goto_a

    .line 1438
    :sswitch_88
    const-string v0, "D4G4"

    .line 1439
    goto :goto_a

    .line 1441
    :sswitch_8b
    const-string v0, "F4E4"

    .line 1442
    goto/16 :goto_a

    .line 1444
    :sswitch_8f
    const-string v0, "A4"

    .line 1445
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto/16 :goto_a

    .line 1448
    :sswitch_97
    const-string v0, "B4"

    .line 1449
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto/16 :goto_a

    .line 1452
    :sswitch_9f
    const-string v0, "C4"

    .line 1453
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto/16 :goto_a

    .line 1456
    :sswitch_a7
    const-string v0, "D4"

    .line 1457
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto/16 :goto_a

    .line 1460
    :sswitch_af
    const-string v0, "G4"

    .line 1461
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto/16 :goto_a

    .line 1464
    :sswitch_b7
    const-string v0, "F4"

    .line 1465
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto/16 :goto_a

    .line 1468
    :sswitch_bf
    const-string v0, "E4"

    .line 1469
    const-string v1, "5Mhz"

    sput-object v1, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    goto/16 :goto_a

    .line 1338
    nop

    :sswitch_data_c8
    .sparse-switch
        0x2621b8 -> :sswitch_36
        0x263a22 -> :sswitch_3d
        0x2646d4 -> :sswitch_24
        0x264daa -> :sswitch_3d
        0x266132 -> :sswitch_3d
        0x266de4 -> :sswitch_24
        0x267a96 -> :sswitch_44
        0x268748 -> :sswitch_30
        0x268e1e -> :sswitch_44
        0x2694f4 -> :sswitch_24
        0x26a1a6 -> :sswitch_44
        0x26ae58 -> :sswitch_30
        0x26bb0a -> :sswitch_4b
        0x26c7bc -> :sswitch_27
        0x26ce92 -> :sswitch_4b
        0x26d568 -> :sswitch_30
        0x26e21a -> :sswitch_4b
        0x26eecc -> :sswitch_27
        0x26fb7e -> :sswitch_52
        0x270f06 -> :sswitch_52
        0x2715dc -> :sswitch_27
        0x27228e -> :sswitch_52
        0x274a98 -> :sswitch_8f
        0x275650 -> :sswitch_7c
        0x276208 -> :sswitch_97
        0x276dc0 -> :sswitch_7f
        0x277978 -> :sswitch_9f
        0x278530 -> :sswitch_82
        0x2790e8 -> :sswitch_a7
        0x279ca0 -> :sswitch_85
        0x27a858 -> :sswitch_af
        0x27b410 -> :sswitch_88
        0x27bfc8 -> :sswitch_b7
        0x27cb80 -> :sswitch_8b
        0x27d738 -> :sswitch_bf
        0x27fe48 -> :sswitch_59
        0x2816b2 -> :sswitch_60
        0x282364 -> :sswitch_2a
        0x282a3a -> :sswitch_60
        0x283dc2 -> :sswitch_60
        0x284a74 -> :sswitch_2a
        0x285726 -> :sswitch_67
        0x2863d8 -> :sswitch_33
        0x286aae -> :sswitch_67
        0x287184 -> :sswitch_2a
        0x287e36 -> :sswitch_67
        0x288ae8 -> :sswitch_33
        0x28979a -> :sswitch_6e
        0x28a44c -> :sswitch_2d
        0x28ab22 -> :sswitch_6e
        0x28b1f8 -> :sswitch_33
        0x28beaa -> :sswitch_6e
        0x28cb5c -> :sswitch_2d
        0x28d80e -> :sswitch_75
        0x28eb96 -> :sswitch_75
        0x28f26c -> :sswitch_2d
        0x28ff1e -> :sswitch_75
    .end sparse-switch
.end method

.method private handleBSIDChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "bsid"

    .prologue
    .line 1245
    monitor-enter p0

    .line 1247
    const v1, 0x7f08005e

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1249
    .local v0, eTxt:Landroid/widget/TextView;
    if-eqz p1, :cond_11

    .line 1250
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    :goto_f
    monitor-exit p0

    .line 1254
    return-void

    .line 1251
    :cond_11
    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1253
    .end local v0           #eTxt:Landroid/widget/TextView;
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private handleDeviceTemperature(I)V
    .registers 7
    .parameter "deviceTemperature"

    .prologue
    .line 1273
    monitor-enter p0

    .line 1275
    :try_start_1
    iget-object v3, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;

    move-result-object v2

    check-cast v2, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    .line 1276
    .local v2, radio:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    const v3, 0x7f080064

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1277
    .local v1, eTxt:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->getWimaxRadioTemperature()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, devTemp:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1279
    monitor-exit p0

    .line 1280
    return-void

    .line 1279
    .end local v0           #devTemp:Ljava/lang/String;
    .end local v1           #eTxt:Landroid/widget/TextView;
    .end local v2           #radio:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    :catchall_32
    move-exception v3

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v3
.end method

.method private handleFrequencyChanged(I)V
    .registers 6
    .parameter "freq"

    .prologue
    .line 1283
    monitor-enter p0

    .line 1288
    const v2, 0x7f080058

    :try_start_4
    invoke-virtual {p0, v2}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1289
    .local v0, eTxt:Landroid/widget/TextView;
    if-lez p1, :cond_52

    .line 1291
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1296
    .local v1, sFrequency:Ljava/lang/String;
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/samsung/wimax/DM/DM;->convertToCG(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1297
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    const v2, 0x7f08005a

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 1301
    .restart local v0       #eTxt:Landroid/widget/TextView;
    sget-object v2, Lcom/samsung/wimax/DM/DM;->mBandW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    const v2, 0x7f08005c

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 1305
    .restart local v0       #eTxt:Landroid/widget/TextView;
    const-string v2, "TDD"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    monitor-exit p0

    .line 1308
    return-void

    .line 1294
    .end local v1           #sFrequency:Ljava/lang/String;
    :cond_52
    const-string v1, "0"

    .restart local v1       #sFrequency:Ljava/lang/String;
    goto :goto_10

    .line 1307
    .end local v0           #eTxt:Landroid/widget/TextView;
    .end local v1           #sFrequency:Ljava/lang/String;
    :catchall_55
    move-exception v2

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_55

    throw v2
.end method

.method private handleSignalChanged(I)V
    .registers 8
    .parameter "rssi"

    .prologue
    .line 1211
    monitor-enter p0

    .line 1215
    :try_start_1
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    .line 1216
    .local v0, WiMAXInfo:Landroid/net/fourG/wimax/Wimax4GInfo;
    const-string v4, "--> TEST <--"

    const-string v5, "handleSignalChanged ====> "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v4

    const/16 v5, -0x78

    if-le v4, v5, :cond_6e

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v4

    const/16 v5, -0x18

    if-le v4, v5, :cond_6e

    .line 1221
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1222
    .local v3, sRssi:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dBm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1224
    .local v2, sCinr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1230
    :goto_54
    const v4, 0x7f080060

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1231
    .local v1, eTxt:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    const v4, 0x7f080062

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #eTxt:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 1233
    .restart local v1       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    monitor-exit p0

    .line 1235
    return-void

    .line 1227
    .end local v1           #eTxt:Landroid/widget/TextView;
    .end local v2           #sCinr:Ljava/lang/String;
    .end local v3           #sRssi:Ljava/lang/String;
    :cond_6e
    const-string v3, " - "

    .line 1228
    .restart local v3       #sRssi:Ljava/lang/String;
    const-string v2, " - "

    .restart local v2       #sCinr:Ljava/lang/String;
    goto :goto_54

    .line 1234
    .end local v0           #WiMAXInfo:Landroid/net/fourG/wimax/Wimax4GInfo;
    .end local v2           #sCinr:Ljava/lang/String;
    .end local v3           #sRssi:Ljava/lang/String;
    :catchall_73
    move-exception v4

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_73

    throw v4
.end method

.method private handleSignalLevelChanged(I)V
    .registers 5
    .parameter "level"

    .prologue
    .line 1238
    monitor-enter p0

    .line 1239
    :try_start_1
    const-string v0, "##### TEST #####"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<======= SignalLevelChanged ====> %d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    monitor-exit p0

    .line 1242
    return-void

    .line 1240
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 18
    .parameter "wimaxState"
    .parameter "wimaxExtraState"

    .prologue
    .line 914
    const-string v12, "WiMAX_DM_APP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleWimaxStateChanged state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const v12, 0x7f080054

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 917
    .local v3, eTxt:Landroid/widget/TextView;
    sget-object v12, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_2f

    sget-object v12, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_e5

    .line 918
    :cond_2f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/WimaxState;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/samsung/wimax/DM/DM;->handleWimaxStateDetailChanged(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    :goto_59
    sget-object v12, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_fb

    const/4 v12, 0x6

    move/from16 v0, p2

    if-ne v0, v12, :cond_fb

    .line 925
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->isIdleMode:Z

    .line 926
    const-string v12, "WiMAX_DM_APP"

    const-string v13, "IDLE state Unregister receivers and return"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->m_bReceiver:Z

    if-eqz v12, :cond_7a

    .line 928
    iget-object v12, p0, Lcom/samsung/wimax/DM/DM;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 929
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->m_bReceiver:Z

    .line 931
    :cond_7a
    iget-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_85

    .line 933
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StopDM()V

    .line 934
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->isIdleDMStop:Z

    .line 936
    :cond_85
    iget-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->m_bNBRStarted:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_90

    .line 938
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StopNBR()V

    .line 939
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->isIdleNBRStop:Z

    .line 941
    :cond_90
    const v12, 0x7f080058

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 942
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    const v12, 0x7f08005e

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 944
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    const v12, 0x7f080060

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 947
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    const v12, 0x7f080062

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 950
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    const v12, 0x7f08005a

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 952
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    const v12, 0x7f08005c

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 954
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    :cond_e4
    :goto_e4
    return-void

    .line 919
    :cond_e5
    sget-object v12, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_f2

    .line 920
    const-string v12, "DISCONNECTED (VI)"

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_59

    .line 922
    :cond_f2
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/WimaxState;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_59

    .line 959
    :cond_fb
    sget-object v12, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_11e

    const/4 v12, 0x6

    move/from16 v0, p2

    if-eq v0, v12, :cond_11e

    .line 961
    iget-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->isIdleMode:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_11e

    .line 964
    iget-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->isIdleDMStop:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_113

    .line 965
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StartDM()V

    .line 967
    :cond_113
    iget-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->isIdleNBRStop:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_11b

    .line 969
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StartNBRList()V

    .line 971
    :cond_11b
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->isIdleMode:Z

    .line 975
    :cond_11e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->isIdleMode:Z

    .line 977
    invoke-direct/range {p0 .. p1}, Lcom/samsung/wimax/DM/DM;->checkWiMAXState(Landroid/net/fourG/wimax/WimaxState;)I

    move-result v9

    .line 979
    .local v9, retState:I
    const/4 v12, 0x1

    if-le v9, v12, :cond_14e

    .line 982
    iget-object v12, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/Wimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v2

    .line 983
    .local v2, devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    const v12, 0x7f080050

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 984
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, dStr:Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    const v12, 0x7f080052

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 988
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    .end local v1           #dStr:Ljava/lang/String;
    .end local v2           #devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    :cond_14e
    sget-object v12, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_396

    .line 998
    iget-object v12, p0, Lcom/samsung/wimax/DM/DM;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v13, p0, Lcom/samsung/wimax/DM/DM;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v12, v13}, Lcom/samsung/wimax/DM/DM;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 999
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/wimax/DM/DM;->m_bReceiver:Z

    .line 1001
    iget-object v12, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v8

    .line 1002
    .local v8, nspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nspInfo "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1005
    const-string v10, " "

    .line 1006
    .local v10, sStr:Ljava/lang/String;
    const v12, 0x7f080073

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1007
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNspName()Ljava/lang/String;

    move-result-object v10

    .line 1008
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    const v12, 0x7f080075

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1011
    .restart local v3       #eTxt:Landroid/widget/TextView;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNspId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1012
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    const v12, 0x7f080077

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1015
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNapId()Ljava/lang/String;

    move-result-object v10

    .line 1016
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    const v12, 0x7f080079

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1020
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->isActivated()Z

    move-result v12

    if-eqz v12, :cond_38f

    .line 1021
    const-string v12, "Activated"

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    :goto_1d5
    iget-object v12, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/Wimax4GManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v5

    .line 1027
    .local v5, info:Landroid/net/DhcpInfo;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1028
    .local v11, str:Ljava/lang/StringBuffer;
    iget v12, v5, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v11, v12}, Lcom/samsung/wimax/DM/DM;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 1029
    const v12, 0x7f080066

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1030
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #str:Ljava/lang/StringBuffer;
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1035
    .restart local v11       #str:Ljava/lang/StringBuffer;
    iget v12, v5, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v11, v12}, Lcom/samsung/wimax/DM/DM;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 1036
    const v12, 0x7f08006a

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1037
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #str:Ljava/lang/StringBuffer;
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1041
    .restart local v11       #str:Ljava/lang/StringBuffer;
    iget v12, v5, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v11, v12}, Lcom/samsung/wimax/DM/DM;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 1042
    const v12, 0x7f080068

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1043
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #str:Ljava/lang/StringBuffer;
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1047
    .restart local v11       #str:Ljava/lang/StringBuffer;
    iget v12, v5, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v11, v12}, Lcom/samsung/wimax/DM/DM;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 1048
    const v12, 0x7f08006c

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1049
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #str:Ljava/lang/StringBuffer;
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1051
    .restart local v11       #str:Ljava/lang/StringBuffer;
    iget v12, v5, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v11, v12}, Lcom/samsung/wimax/DM/DM;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 1052
    const v12, 0x7f08006e

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1053
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #str:Ljava/lang/StringBuffer;
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1057
    .restart local v11       #str:Ljava/lang/StringBuffer;
    iget v12, v5, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-static {v11, v12}, Lcom/samsung/wimax/DM/DM;->putAddress(Ljava/lang/StringBuffer;I)V

    .line 1058
    const v12, 0x7f080070

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1059
    .restart local v3       #eTxt:Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    const/4 v12, 0x6

    move/from16 v0, p2

    if-ne v0, v12, :cond_2b8

    .line 1083
    const v12, 0x7f080058

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1084
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    const v12, 0x7f08005e

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1086
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    const v12, 0x7f080060

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1089
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    const v12, 0x7f080062

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1092
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    const v12, 0x7f08005a

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1094
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    const v12, 0x7f08005c

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1096
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    :cond_2b8
    iget-object v12, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/Wimax4GManager;->getNetworkEntryCompleteTimes()[I

    move-result-object v6

    .line 1101
    .local v6, nNEtimes:[I
    if-eqz v6, :cond_e4

    .line 1103
    const/4 v12, 0x0

    sput v12, Lcom/samsung/wimax/DM/DM;->neTotalTimes:I

    .line 1104
    const v12, 0x7f0800aa

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1105
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1106
    .local v7, neStr:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1107
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    const v12, 0x7f0800ac

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1109
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const/4 v12, 0x1

    aget v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1110
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1111
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    const v12, 0x7f0800ae

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1113
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const/4 v12, 0x2

    aget v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1114
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1115
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    const v12, 0x7f0800b0

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1117
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const/4 v12, 0x3

    aget v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1118
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1119
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    const v12, 0x7f0800b2

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1121
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const/4 v12, 0x4

    aget v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1122
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1123
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    const/4 v4, 0x0

    .local v4, i:I
    :goto_382
    array-length v12, v6

    if-ge v4, v12, :cond_e4

    .line 1128
    sget v12, Lcom/samsung/wimax/DM/DM;->neTotalTimes:I

    aget v13, v6, v4

    add-int/2addr v12, v13

    sput v12, Lcom/samsung/wimax/DM/DM;->neTotalTimes:I

    .line 1126
    add-int/lit8 v4, v4, 0x1

    goto :goto_382

    .line 1023
    .end local v4           #i:I
    .end local v5           #info:Landroid/net/DhcpInfo;
    .end local v6           #nNEtimes:[I
    .end local v7           #neStr:Ljava/lang/String;
    .end local v11           #str:Ljava/lang/StringBuffer;
    :cond_38f
    const-string v12, "False"

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d5

    .line 1133
    .end local v8           #nspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .end local v10           #sStr:Ljava/lang/String;
    :cond_396
    sget-object v12, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_3a2

    sget-object v12, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_e4

    .line 1137
    :cond_3a2
    const v12, 0x7f080058

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1138
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    const v12, 0x7f08005e

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1140
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    const v12, 0x7f080060

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1143
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    const v12, 0x7f080062

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1146
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    const v12, 0x7f080066

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1149
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, "0.0.0.0"

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    const v12, 0x7f08005a

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1160
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    const v12, 0x7f08005c

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #eTxt:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1162
    .restart local v3       #eTxt:Landroid/widget/TextView;
    const-string v12, " - "

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e4
.end method

.method private handleWimaxStateDetailChanged(I)Ljava/lang/String;
    .registers 3
    .parameter "wimaxDetailState"

    .prologue
    .line 1172
    const-string v0, "-"

    .line 1174
    .local v0, extraState:Ljava/lang/String;
    packed-switch p1, :pswitch_data_24

    .line 1204
    const-string v0, "Err"

    .line 1207
    :goto_7
    return-object v0

    .line 1177
    :pswitch_8
    const-string v0, "Ranging"

    .line 1178
    goto :goto_7

    .line 1180
    :pswitch_b
    const-string v0, "SBC"

    .line 1181
    goto :goto_7

    .line 1183
    :pswitch_e
    const-string v0, "PKM"

    .line 1184
    goto :goto_7

    .line 1186
    :pswitch_11
    const-string v0, "REG"

    .line 1187
    goto :goto_7

    .line 1189
    :pswitch_14
    const-string v0, "DSX"

    .line 1190
    goto :goto_7

    .line 1192
    :pswitch_17
    const-string v0, "Registered"

    .line 1193
    goto :goto_7

    .line 1195
    :pswitch_1a
    const-string v0, "Idle"

    .line 1196
    goto :goto_7

    .line 1198
    :pswitch_1d
    const-string v0, "IP_Renew"

    .line 1199
    goto :goto_7

    .line 1201
    :pswitch_20
    const-string v0, "De_registration"

    .line 1202
    goto :goto_7

    .line 1174
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method private handledDHCPDuration(I)V
    .registers 7
    .parameter "dhcpTime"

    .prologue
    .line 1258
    monitor-enter p0

    .line 1259
    const v3, 0x7f0800b4

    :try_start_4
    invoke-virtual {p0, v3}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1260
    .local v1, eTxt:Landroid/widget/TextView;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, dhcpStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1262
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    sget v3, Lcom/samsung/wimax/DM/DM;->neTotalTimes:I

    add-int/2addr v3, p1

    sput v3, Lcom/samsung/wimax/DM/DM;->neTotalTimes:I

    .line 1266
    const v3, 0x7f0800a7

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #eTxt:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 1267
    .restart local v1       #eTxt:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/samsung/wimax/DM/DM;->neTotalTimes:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1268
    .local v2, totalNeStr:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    monitor-exit p0

    .line 1270
    return-void

    .line 1269
    .end local v0           #dhcpStr:Ljava/lang/String;
    .end local v1           #eTxt:Landroid/widget/TextView;
    .end local v2           #totalNeStr:Ljava/lang/String;
    :catchall_50
    move-exception v3

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4 .. :try_end_52} :catchall_50

    throw v3
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .registers 5
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 1327
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1331
    return-void
.end method


# virtual methods
.method protected ProcessClrDMData()V
    .registers 4

    .prologue
    .line 672
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "<<<< DM ClearData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 674
    .local v0, eTxt:Landroid/widget/TextView;
    const-string v1, "Modem is VI mode, DM cannot display information properly"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    const v1, 0x7f080083

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 677
    .restart local v0       #eTxt:Landroid/widget/TextView;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 679
    .restart local v0       #eTxt:Landroid/widget/TextView;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 681
    .restart local v0       #eTxt:Landroid/widget/TextView;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    const v1, 0x7f080087

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 683
    .restart local v0       #eTxt:Landroid/widget/TextView;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    return-void
.end method

.method protected ProcessDMAck(Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;)V
    .registers 4
    .parameter "msgDMPkt"

    .prologue
    .line 573
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "<<<< DM ProcessAck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return-void
.end method

.method protected ProcessDMData(Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;)V
    .registers 6
    .parameter "msgDMPkt"

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, eTxt:Landroid/widget/TextView;
    iget v1, p1, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->typeId:I

    sparse-switch v1, :sswitch_data_d6

    .line 638
    const-string v1, "WiMAX_DM_APP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown DM code : ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " typeID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->typeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_2c
    :sswitch_2c
    iget-object v1, p1, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    return-void

    .line 582
    :sswitch_32
    const v1, 0x7f08007d

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 583
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 585
    :sswitch_3c
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 586
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 588
    :sswitch_46
    const v1, 0x7f080083

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 589
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 591
    :sswitch_50
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 592
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 594
    :sswitch_5a
    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 595
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 597
    :sswitch_64
    const v1, 0x7f080087

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 598
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 600
    :sswitch_6e
    const v1, 0x7f080090

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 601
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 605
    :sswitch_78
    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 606
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 608
    :sswitch_82
    const v1, 0x7f080094

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 609
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 611
    :sswitch_8c
    const v1, 0x7f080089

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 612
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 614
    :sswitch_96
    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 615
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 617
    :sswitch_a0
    const v1, 0x7f08008e

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 618
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_2c

    .line 621
    :sswitch_aa
    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 622
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto/16 :goto_2c

    .line 625
    :sswitch_b5
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 626
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto/16 :goto_2c

    .line 629
    :sswitch_c0
    const v1, 0x7f080096

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 630
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto/16 :goto_2c

    .line 633
    :sswitch_cb
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #eTxt:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 634
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto/16 :goto_2c

    .line 580
    :sswitch_data_d6
    .sparse-switch
        0xb -> :sswitch_46
        0xc -> :sswitch_50
        0xf -> :sswitch_5a
        0x10 -> :sswitch_64
        0x13 -> :sswitch_a0
        0x1f -> :sswitch_6e
        0x29 -> :sswitch_96
        0x33 -> :sswitch_32
        0x34 -> :sswitch_3c
        0x3d -> :sswitch_78
        0x40 -> :sswitch_82
        0x47 -> :sswitch_aa
        0x48 -> :sswitch_b5
        0x49 -> :sswitch_c0
        0x4a -> :sswitch_cb
        0x51 -> :sswitch_8c
        0x96 -> :sswitch_2c
    .end sparse-switch
.end method

.method protected ProcessNbrInfo(Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;)V
    .registers 5
    .parameter "msgDMPkt"

    .prologue
    const v2, 0x7f0800b8

    .line 649
    iget v1, p1, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->typeId:I

    packed-switch v1, :pswitch_data_44

    .line 665
    :goto_8
    invoke-virtual {p0, v2}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 667
    .local v0, eTxt:Landroid/widget/TextView;
    :goto_e
    iget-object v1, p1, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    return-void

    .line 651
    .end local v0           #eTxt:Landroid/widget/TextView;
    :pswitch_14
    invoke-virtual {p0, v2}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 652
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_e

    .line 654
    .end local v0           #eTxt:Landroid/widget/TextView;
    :pswitch_1b
    const v1, 0x7f0800bb

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 655
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_e

    .line 657
    .end local v0           #eTxt:Landroid/widget/TextView;
    :pswitch_25
    const v1, 0x7f0800bd

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 658
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_e

    .line 660
    .end local v0           #eTxt:Landroid/widget/TextView;
    :pswitch_2f
    const v1, 0x7f0800bf

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 661
    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_e

    .line 663
    .end local v0           #eTxt:Landroid/widget/TextView;
    :pswitch_39
    const v1, 0x7f0800c2

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #eTxt:Landroid/widget/TextView;
    goto :goto_8

    .line 649
    nop

    :pswitch_data_44
    .packed-switch 0x5f
        :pswitch_14
        :pswitch_1b
        :pswitch_25
        :pswitch_2f
        :pswitch_39
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x1388

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_5c

    .line 383
    :goto_a
    return-void

    .line 326
    :sswitch_b
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z

    if-ne v0, v2, :cond_19

    .line 327
    const-string v0, "DM already Started!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 328
    :cond_19
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->isWimaxTethered:Z

    if-eqz v0, :cond_27

    .line 329
    const-string v0, "WiMAX Tethered Mode, DM not displayed in PDA!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 330
    :cond_27
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->isIdleMode:Z

    if-ne v0, v2, :cond_35

    .line 332
    const-string v0, "Idle Mode DM cannot be started!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 336
    :cond_35
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->OpenDevice()V

    .line 337
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StartDM()V

    goto :goto_a

    .line 363
    :sswitch_3c
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bNBRStarted:Z

    if-ne v0, v2, :cond_4a

    .line 364
    const-string v0, "NBR req already Started!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 365
    :cond_4a
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->isWimaxTethered:Z

    if-eqz v0, :cond_58

    .line 366
    const-string v0, "WiMAX Tethered Mode, DM not displayed in PDA!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 368
    :cond_58
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StartNBRList()V

    goto :goto_a

    .line 310
    :sswitch_data_5c
    .sparse-switch
        0x7f08007b -> :sswitch_b
        0x7f0800c4 -> :sswitch_3c
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const v8, 0x7f080054

    const/4 v7, 0x1

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const-string v4, "WiMAX_DM_APP"

    const-string v5, "WiMAX DM APP STARTED! - tsh.park"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 157
    const-string v4, "WiMAX_DM_APP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWimax4GManager.get4GState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v4

    if-eq v4, v11, :cond_4f

    .line 163
    const-string v4, "WiMAX modem is OFF or VI,\nPlease Turn on WiMAX in Settings!"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 165
    const-string v4, "WiMAX_DM_APP"

    const-string v5, "WiMAX modem is OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-boolean v9, p0, Lcom/samsung/wimax/DM/DM;->isWimaxOn:Z

    .line 189
    :cond_4f
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/DM/DM;->setContentView(I)V

    .line 194
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mTestIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.wimax.NETWORK_IP_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.wimax.NET_4G_HANDOVER_COMPLETE_ACTION"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.RSSI_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.wimax.FREQUENCY_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.wimax.WIMAX_DHCP_TIME"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const v4, 0x7f08004c

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    .line 209
    .local v3, tabs:Landroid/widget/TabHost;
    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 210
    const-string v4, "tag1"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 212
    .local v2, spec:Landroid/widget/TabHost$TabSpec;
    const v4, 0x7f08004d

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 213
    const-string v4, "Basic Staus"

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 214
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 215
    const-string v4, "tag2"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 216
    const v4, 0x7f08007a

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 217
    const-string v4, "DebugMonitor"

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 218
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 219
    const-string v4, "tag3"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 220
    const v4, 0x7f0800a4

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 221
    const-string v4, "NEIGHBOR LISTS"

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 222
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 225
    invoke-virtual {v3, v9}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 228
    const v4, 0x7f08007b

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 229
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v4, 0x7f0800c4

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 231
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {p0, v8}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 239
    .local v1, eTxt:Landroid/widget/TextView;
    const-string v4, "MODEM is OFF,\nPlease Turn on WiMAX @Settings"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const v4, 0x7f080056

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #eTxt:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 244
    .restart local v1       #eTxt:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v4

    if-ne v4, v7, :cond_11f

    .line 246
    const-string v4, "Tethered Mode - DM not displayed in PDA"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iput-boolean v7, p0, Lcom/samsung/wimax/DM/DM;->isWimaxTethered:Z

    .line 248
    invoke-virtual {p0, v8}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #eTxt:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 249
    .restart local v1       #eTxt:Landroid/widget/TextView;
    const-string v4, "No SDIO mode"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_11e
    :goto_11e
    return-void

    .line 251
    :cond_11f
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v4

    if-ne v4, v10, :cond_13a

    .line 253
    const-string v4, "Backhaul Mode - DM not displayed in PDA"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iput-boolean v7, p0, Lcom/samsung/wimax/DM/DM;->isWimaxTethered:Z

    .line 255
    invoke-virtual {p0, v8}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #eTxt:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 256
    .restart local v1       #eTxt:Landroid/widget/TextView;
    const-string v4, "No SDIO mode"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11e

    .line 258
    :cond_13a
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_14b

    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v4

    if-ne v4, v11, :cond_15e

    .line 261
    :cond_14b
    const-string v4, "XCAL Mode - DM not displayed in PDA"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iput-boolean v7, p0, Lcom/samsung/wimax/DM/DM;->isWimaxTethered:Z

    .line 263
    invoke-virtual {p0, v8}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #eTxt:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 264
    .restart local v1       #eTxt:Landroid/widget/TextView;
    const-string v4, "No SDIO mode"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11e

    .line 266
    :cond_15e
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v4

    if-ne v4, v10, :cond_179

    .line 268
    const-string v4, "SCAN ONLY Mode - DM not displayed in PDA"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iput-boolean v7, p0, Lcom/samsung/wimax/DM/DM;->isWimaxTethered:Z

    .line 270
    invoke-virtual {p0, v8}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #eTxt:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 271
    .restart local v1       #eTxt:Landroid/widget/TextView;
    const-string v4, "No SDIO mode"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11e

    .line 273
    :cond_179
    iget-object v4, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v4

    if-ne v4, v7, :cond_11e

    .line 275
    const-string v4, "FULL Mode - DM not displayed in PDA"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iput-boolean v7, p0, Lcom/samsung/wimax/DM/DM;->isWimaxTethered:Z

    .line 277
    invoke-virtual {p0, v8}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #eTxt:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 278
    .restart local v1       #eTxt:Landroid/widget/TextView;
    const-string v4, "No SDIO mode"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11e
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 296
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 302
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z

    if-eqz v0, :cond_11

    .line 305
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->CloseDevice()V

    .line 307
    :cond_11
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_36

    .line 456
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 425
    :pswitch_a
    :try_start_a
    iget-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->m_bDMStarted:Z

    if-ne v1, v0, :cond_1c

    .line 427
    const-string v1, "DM already Started!!"

    const/16 v2, 0x1388

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 434
    :catch_1a
    move-exception v1

    goto :goto_9

    .line 431
    :cond_1c
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StartDM()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_1a

    goto :goto_9

    .line 442
    :pswitch_20
    :try_start_20
    iget-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->m_bNBRStarted:Z

    if-ne v1, v0, :cond_32

    .line 444
    const-string v1, "NBR req already Started!!"

    const/16 v2, 0x1388

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 451
    :catch_30
    move-exception v1

    goto :goto_9

    .line 448
    :cond_32
    invoke-direct {p0}, Lcom/samsung/wimax/DM/DM;->WiMax_StartNBRList()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_30

    goto :goto_9

    .line 396
    :pswitch_data_36
    .packed-switch 0x7f08012c
        :pswitch_a
        :pswitch_20
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 868
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 871
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bReceiver:Z

    if-eqz v0, :cond_f

    .line 872
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/DM/DM;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->m_bReceiver:Z

    .line 875
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/wimax/DM/DM;->isWimaxOn:Z

    if-eqz v0, :cond_18

    .line 876
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM;->mWstateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/DM/DM;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 878
    :cond_18
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 842
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 843
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 845
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "Modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v1, p0, Lcom/samsung/wimax/DM/DM;->mWstateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/wimax/DM/DM;->mTestIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/wimax/DM/DM;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 847
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->isWimaxOn:Z

    .line 857
    :goto_1c
    iget-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->isWimaxOn:Z

    if-eqz v1, :cond_20

    .line 864
    :cond_20
    return-void

    .line 851
    :cond_21
    const-string v1, "WiMAX_DM_APP"

    const-string v2, "Modem is OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/wimax/DM/DM;->isWimaxOn:Z

    .line 853
    const v1, 0x7f080054

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/DM/DM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 854
    .local v0, eTxt:Landroid/widget/TextView;
    const-string v1, "MODEM is OFF,\nPlease Turn on WiMAX @Settings"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 292
    return-void
.end method
