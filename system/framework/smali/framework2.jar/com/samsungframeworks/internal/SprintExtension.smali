.class public Lcom/samsungframeworks/internal/SprintExtension;
.super Lcom/samsungframeworks/internal/ISprintExtension$Stub;
.source "SprintExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;
    }
.end annotation


# static fields
.field private static final CDMA0:I = 0x2

.field private static final CDMA1:I = 0x3

.field private static final CONNECTIONMANAGER:Ljava/lang/String; = "com.sprint.internal.permission.CONNECTIONMANAGER"

.field private static final DEVICEMANAGEMENT:Ljava/lang/String; = "com.sprint.internal.permission.DEVICEMANAGEMENT"

.field public static final ID_A_Key:I = 0x190

.field public static final ID_DSA_SERVER_IP:I = 0x195

.field public static final ID_DSA_SERVER_PORT:I = 0x196

.field public static final ID_DSA_SERVER_URL:I = 0x192

.field public static final ID_HTTPPD_PROXY_ADDR:I = 0x19e

.field public static final ID_HTTPPD_PROXY_PORT:I = 0x19f

.field public static final ID_MDN:I = 0x1

.field public static final ID_MEID:I = 0x1e

.field public static final ID_MOBILESYNC_ENABLED:I = 0x12c

.field public static final ID_MSID:I = 0x23

.field public static final ID_PDE_PRIMARY_IP:I = 0xa1

.field public static final ID_PDE_PRIMARY_PORT:I = 0xa3

.field public static final ID_PESUDO_ESN:I = 0x3

.field public static final ID_RTSP_PROXY_ADDR:I = 0x19c

.field public static final ID_RTSP_PROXY_PORT:I = 0x19d

.field public static final ID_SLOT_1_AAA_AUTH_ALGORITHM:I = 0x5d

.field public static final ID_SLOT_1_AAA_SPI:I = 0x5e

.field public static final ID_SLOT_1_HA_AUTH_ALGORITHM:I = 0x5a

.field public static final ID_SLOT_1_HA_PASSWORD:I = 0x5c

.field public static final ID_SLOT_1_HA_SPI:I = 0x5b

.field public static final ID_SLOT_1_MOBILE_IP_ADDRESS:I = 0x57

.field public static final ID_SLOT_1_NAI:I = 0x2

.field public static final ID_SLOT_1_NAI_PASSWORD:I = 0x2b

.field public static final ID_SLOT_1_PRIMARY_HA:I = 0x32

.field public static final ID_SLOT_1_REVERSE_TUNNELING:I = 0x56

.field public static final ID_SLOT_1_SECONDARY_HA:I = 0x33

.field public static final ID_SYSPROP_SELLER_NAME:I = 0x1a4

.field public static final ID_UAPROF:I = 0xe

.field public static final ID_WORK_MODE:I = 0x1f4

.field private static final NETWORKS_NONE:I = -0x1

.field private static final OMADM:Ljava/lang/String; = "com.sprint.internal.permission.OMADM"

.field private static final OMADMExtensionDP:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.DP"

.field private static final OMADMExtensionFUMO:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.FUMO"

.field private static final OMADMExtensionHFA:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.HFA"

.field private static final OMADMExtensionPRL:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.PRL"

.field private static final OMADMExtensionREG_HFA:Ljava/lang/String; = "com.sprint.samsung.OMADMExtension.REG_HFA"

.field private static final PLATFORM:Ljava/lang/String; = "com.sprint.internal.permission.PLATFORM"

.field private static final SYSTEMPROPERTIES:Ljava/lang/String; = "com.sprint.internal.permission.SYSTEMPROPERTIES"

.field static final TAG:Ljava/lang/String; = "SprintExtension"

.field static final UaProf0:Ljava/lang/String; = null

.field private static final WIFI_CDMA0:I = 0x0

.field private static final WIFI_CDMA1:I = 0x1


# instance fields
.field private ENABLE_LOG:Z

.field IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

.field private callerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private enablePermisionCONNECTIONMANAGER:Z

.field private enablePermisionDEVICEMANAGEMENT:Z

.field private enablePermisionOMADM:Z

.field private enablePermisionPLATFORM:Z

.field private enablePermisionSYSTEMPROPERTIES:Z

.field private isStartedHFA:Z

.field private justSetSlot0:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private prevDataConnectPreference:I

.field private slotchange_index:I

.field private slotchange_trace_pid:[I

.field private slotchange_trace_state:[I

.field private slotchange_trace_uid:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://device.sprintpcs.com/Samsung/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsungframeworks/internal/SprintExtension;->UaProf0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x100

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->ENABLE_LOG:Z

    .line 27
    iput-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 51
    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionSYSTEMPROPERTIES:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    .line 59
    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    .line 61
    iput-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    .line 139
    iput v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    .line 140
    iput-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->isStartedHFA:Z

    .line 160
    iput-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    .line 163
    iput-object p1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    .line 167
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    .line 170
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    .line 171
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_uid:[I

    .line 172
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_state:[I

    .line 173
    return-void
.end method

.method private SlotTracePrint()V
    .registers 5

    .prologue
    .line 591
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    iget v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    if-ge v0, v1, :cond_50

    .line 593
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot change history : index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_uid:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_state:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 595
    :cond_50
    return-void
.end method

.method private SlotTraceUpdate(III)V
    .registers 8
    .parameter "pid"
    .parameter "uid"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 599
    const/4 v0, 0x0

    .line 601
    .local v0, index:I
    if-nez p3, :cond_2d

    .line 603
    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0x100

    if-ge v0, v1, :cond_29

    .line 605
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    aget v1, v1, v0

    if-nez v1, :cond_2a

    .line 607
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    aput p1, v1, v0

    .line 608
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_uid:[I

    aput p2, v1, v0

    .line 609
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_state:[I

    aput v3, v1, v0

    .line 610
    iget v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    .line 612
    iget v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    const/16 v2, 0xff

    if-lt v1, v2, :cond_29

    .line 614
    iput v3, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_index:I

    .line 632
    :cond_29
    :goto_29
    return-void

    .line 603
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 622
    :cond_2d
    const/16 v0, 0xff

    :goto_2f
    if-lez v0, :cond_29

    .line 624
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_pid:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_45

    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_uid:[I

    aget v1, v1, v0

    if-ne v1, p2, :cond_45

    .line 627
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->slotchange_trace_state:[I

    aget v2, v1, v0

    add-int/2addr v2, p3

    aput v2, v1, v0

    goto :goto_29

    .line 622
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f
.end method

.method private getCallerPos(Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;)I
    .registers 9
    .parameter "c"

    .prologue
    .line 568
    const/4 v2, -0x1

    .line 569
    .local v2, ret:I
    iget-object v4, p0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 571
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v3, :cond_1a

    .line 573
    :try_start_a
    iget-object v4, p0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;

    invoke-virtual {v4, p1}, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;->compareWith(Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;)Z
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_15} :catch_1b

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    .line 574
    move v2, v1

    .line 583
    :cond_1a
    :goto_1a
    return v2

    .line 577
    :catch_1b
    move-exception v0

    .line 578
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "SprintExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallerPos"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 571
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private declared-synchronized setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I
    .registers 8
    .parameter "IPhoneSlotInterface"
    .parameter "slot"

    .prologue
    .line 529
    monitor-enter p0

    const/4 v1, 0x0

    .line 531
    .local v1, ret:I
    :try_start_2
    const-string v2, "SprintExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCDMASlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-interface {p1, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->requestDataProfile(I)I
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_24

    move-result v1

    .line 536
    :goto_22
    monitor-exit p0

    return v1

    .line 533
    :catch_24
    move-exception v0

    .line 534
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_25
    const-string v2, "SprintExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_3e

    goto :goto_22

    .line 529
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized setPrevDataSetting(ZI)V
    .registers 6
    .parameter "wifiConnected"
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 511
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 512
    if-ne p1, v2, :cond_17

    .line 513
    if-nez p2, :cond_10

    .line 514
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_14

    .line 526
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 516
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_14

    goto :goto_e

    .line 511
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 519
    :cond_17
    if-nez p2, :cond_1d

    .line 520
    const/4 v0, 0x2

    :try_start_1a
    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    goto :goto_e

    .line 522
    :cond_1d
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_14

    goto :goto_e
.end method

.method private declared-synchronized setWIFIenabled(Z)V
    .registers 9
    .parameter "set"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 540
    monitor-enter p0

    const/4 v1, 0x0

    .line 543
    .local v1, state:I
    :try_start_5
    iget-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 545
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 546
    if-ne p1, v4, :cond_1f

    if-eq v1, v6, :cond_1f

    if-eq v1, v5, :cond_1f

    .line 548
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_2a

    .line 554
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    .line 549
    :cond_1f
    if-nez p1, :cond_1d

    if-eq v1, v6, :cond_25

    if-ne v1, v5, :cond_1d

    .line 551
    :cond_25
    const/4 v2, 0x0

    :try_start_26
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_1d

    .line 540
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public GetGPSState()I
    .registers 7

    .prologue
    .line 1109
    const-string v1, "SprintExtension"

    const-string v2, "GetGPSState()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1112
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1116
    :cond_1c
    const/4 v0, 0x0

    .line 1120
    .local v0, ret:I
    return v0
.end method

.method public IsBluetoothEnabled()V
    .registers 7

    .prologue
    .line 1041
    const-string v1, "SprintExtension"

    const-string v2, "IsBluetoothEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1044
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1048
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1051
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->IsBluetoothEnabled()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1055
    :goto_2d
    return-void

    .line 1052
    :catch_2e
    move-exception v0

    .line 1053
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsBluetoothEnabled RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public IsCameraEnabled()V
    .registers 7

    .prologue
    .line 1058
    const-string v1, "SprintExtension"

    const-string v2, "IsCameraEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1061
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1065
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1068
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->IsCameraEnabled()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1072
    :goto_2d
    return-void

    .line 1069
    :catch_2e
    move-exception v0

    .line 1070
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsCameraEnabled RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public IsEncryptDeviceEnabled()V
    .registers 7

    .prologue
    .line 1075
    const-string v1, "SprintExtension"

    const-string v2, "IsEncryptDeviceEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1078
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1082
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1085
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->IsEncryptDeviceEnabled()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1089
    :goto_2d
    return-void

    .line 1086
    :catch_2e
    move-exception v0

    .line 1087
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsEncryptDeviceEnabled RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public IsEncryptSDCardEnable()V
    .registers 7

    .prologue
    .line 1092
    const-string v1, "SprintExtension"

    const-string v2, "IsEncryptSDCardEnable()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1095
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1099
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1102
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->IsEncryptSDCardEnable()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1106
    :goto_2d
    return-void

    .line 1103
    :catch_2e
    move-exception v0

    .line 1104
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsEncryptSDCardEnable RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public IsHotspotEnabled()V
    .registers 6

    .prologue
    .line 1125
    const-string v0, "SprintExtension"

    const-string v1, "IsHotspotEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1128
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1134
    :cond_1c
    return-void
.end method

.method public IsUSBDriveEnabled()V
    .registers 6

    .prologue
    .line 1138
    const-string v0, "SprintExtension"

    const-string v1, "IsUSBDriveEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1141
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1147
    :cond_1c
    return-void
.end method

.method public IsUSBPortEnabled()V
    .registers 6

    .prologue
    .line 1150
    const-string v0, "SprintExtension"

    const-string v1, "IsUSBPortEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1153
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1159
    :cond_1c
    return-void
.end method

.method public IsWiFiEnabled()V
    .registers 7

    .prologue
    .line 1162
    const-string v1, "SprintExtension"

    const-string v2, "IsWiFiEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1165
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1169
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1172
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->IsWiFiEnabled()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1176
    :goto_2d
    return-void

    .line 1173
    :catch_2e
    move-exception v0

    .line 1174
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsWiFiEnabled RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public Reboot()V
    .registers 7

    .prologue
    .line 1179
    const-string v1, "SprintExtension"

    const-string v2, "Reboot()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1182
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1186
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1189
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->reboot()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1194
    :goto_2d
    return-void

    .line 1190
    :catch_2e
    move-exception v0

    .line 1191
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public SetDisableBluetooth()V
    .registers 7

    .prologue
    .line 1197
    const-string v1, "SprintExtension"

    const-string v2, "SetDisableBluetooth()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1200
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1204
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1207
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->SetDisableBluetooth()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1212
    :goto_2d
    return-void

    .line 1208
    :catch_2e
    move-exception v0

    .line 1209
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetDisableBluetooth RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public SetDisableCamera()V
    .registers 7

    .prologue
    .line 1215
    const-string v1, "SprintExtension"

    const-string v2, "SetDisableCamera()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1218
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1222
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1225
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->SetDisableCamera()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1230
    :goto_2d
    return-void

    .line 1226
    :catch_2e
    move-exception v0

    .line 1227
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetDisableCamera RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public SetDisableHotspot()V
    .registers 6

    .prologue
    .line 1233
    const-string v0, "SprintExtension"

    const-string v1, "SetDisableHotspot()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1236
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1242
    :cond_1c
    return-void
.end method

.method public SetDisableUSBDrive()V
    .registers 6

    .prologue
    .line 1245
    const-string v0, "SprintExtension"

    const-string v1, "SetDisableUSBDrive()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1248
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1253
    :cond_1c
    return-void
.end method

.method public SetDisableUSBPort()V
    .registers 6

    .prologue
    .line 1256
    const-string v0, "SprintExtension"

    const-string v1, "SetDisableUSBPort()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1259
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1265
    :cond_1c
    return-void
.end method

.method public SetDisableWifi()V
    .registers 7

    .prologue
    .line 1268
    const-string v1, "SprintExtension"

    const-string v2, "SetDisableWifi()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1271
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1275
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1278
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->SetDisableWifi()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1282
    :goto_2d
    return-void

    .line 1279
    :catch_2e
    move-exception v0

    .line 1280
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetDisableWifi RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public SetEncryptDevice()V
    .registers 7

    .prologue
    .line 1285
    const-string v1, "SprintExtension"

    const-string v2, "SetEncryptDevice()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1288
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1292
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1295
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->SetEncryptDevice()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1299
    :goto_2d
    return-void

    .line 1296
    :catch_2e
    move-exception v0

    .line 1297
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetEncryptDevice RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public SetEncryptSDCard()V
    .registers 7

    .prologue
    .line 1302
    const-string v1, "SprintExtension"

    const-string v2, "SetEncryptSDCard()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 1305
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1309
    :cond_1c
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1312
    :try_start_28
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->SetEncryptSDCard()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 1316
    :goto_2d
    return-void

    .line 1313
    :catch_2e
    move-exception v0

    .line 1314
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetEncryptSDCard RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public SetGPS(I)V
    .registers 7
    .parameter "mode"

    .prologue
    .line 1319
    const-string v0, "SprintExtension"

    const-string v1, "SetGPS()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionDEVICEMANAGEMENT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1322
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1327
    :cond_1c
    return-void
.end method

.method public disableScreenTimeout()V
    .registers 7

    .prologue
    .line 948
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 949
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.PLATFORM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 953
    :cond_15
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 956
    :try_start_21
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->disableScreenTimeout()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    .line 960
    :goto_26
    return-void

    .line 957
    :catch_27
    move-exception v0

    .line 958
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableScreenTiemout RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public enableScreenTimeout()V
    .registers 7

    .prologue
    .line 963
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 964
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.PLATFORM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 968
    :cond_15
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 971
    :try_start_21
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->enableScreenTimeout()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    .line 975
    :goto_26
    return-void

    .line 972
    :catch_27
    move-exception v0

    .line 973
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableScreenTiemout RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public declared-synchronized getCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;)I
    .registers 7
    .parameter "IPhoneSlotInterface"

    .prologue
    .line 557
    monitor-enter p0

    const/4 v1, 0x0

    .line 559
    .local v1, ret:I
    :try_start_2
    invoke-interface {p1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getCurrentSlot()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_8

    move-result v1

    .line 564
    :goto_6
    monitor-exit p0

    return v1

    .line 560
    :catch_8
    move-exception v0

    .line 561
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_9
    const-string v2, "SprintExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_23

    .line 562
    const/4 v1, -0x1

    goto :goto_6

    .line 557
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .registers 8

    .prologue
    .line 992
    iget-boolean v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 993
    iget-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v3, "com.sprint.internal.permission.PLATFORM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 996
    :cond_15
    const/4 v1, 0x0

    .line 997
    .local v1, prl:Ljava/lang/String;
    const-string v2, "iphoneinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1000
    :try_start_22
    iget-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getCdmaPrlVersion()Ljava/lang/String;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-result-object v1

    .line 1005
    :goto_28
    return-object v1

    .line 1001
    :catch_29
    move-exception v0

    .line 1002
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "SprintExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaPrlVersion RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public declared-synchronized getDataProfile()I
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 479
    monitor-enter p0

    const/4 v2, 0x0

    .line 485
    .local v2, ret:I
    :try_start_3
    iget-boolean v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    if-ne v5, v10, :cond_17

    .line 486
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v6, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 490
    :cond_17
    const-string v5, "iphoneinfo"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 492
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    move-result v1

    .line 493
    .local v1, netPreference:I
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 494
    .local v4, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_5d

    move-result v3

    .line 496
    .local v3, wifiConnected:Z
    if-ne v1, v10, :cond_3b

    if-ne v3, v10, :cond_3b

    .line 497
    const/4 v5, 0x2

    .line 506
    :goto_39
    monitor-exit p0

    return v5

    .line 501
    :cond_3b
    :try_start_3b
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDataProfile()I
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_43

    move-result v2

    :goto_41
    move v5, v2

    .line 506
    goto :goto_39

    .line 502
    :catch_43
    move-exception v0

    .line 503
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_44
    const-string v5, "SprintExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDataProfile RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_5d

    goto :goto_41

    .line 479
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #netPreference:I
    .end local v3           #wifiConnected:Z
    .end local v4           #wifiInfo:Landroid/net/NetworkInfo;
    :catchall_5d
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getString(I)Ljava/lang/String;
    .registers 15
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 176
    monitor-enter p0

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 177
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 178
    .local v5, uid:I
    const/4 v1, 0x0

    .line 179
    .local v1, notSupport:Z
    const/4 v3, 0x0

    .line 181
    .local v3, ret:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionSYSTEMPROPERTIES:Z

    if-ne v9, v12, :cond_19

    .line 182
    iget-object v9, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v10, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v2, v5, v11}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 185
    :cond_19
    const-string v9, "iphoneinfo"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v9

    iput-object v9, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 189
    iget-object v9, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    if-nez v9, :cond_32

    .line 190
    const-string v9, "SprintExtension"

    const-string v10, "getString/iphoneinfo is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_17f

    .line 328
    :goto_30
    monitor-exit p0

    return-object v8

    .line 195
    :cond_32
    sparse-switch p1, :sswitch_data_182

    .line 318
    const/4 v1, 0x1

    .line 325
    :goto_36
    :try_start_36
    iget-boolean v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->ENABLE_LOG:Z

    if-ne v8, v12, :cond_70

    .line 326
    const-string v8, "SprintExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getString("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pid= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_36 .. :try_end_70} :catchall_17f

    :cond_70
    move-object v8, v3

    .line 328
    goto :goto_30

    .line 197
    :sswitch_72
    :try_start_72
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getMDN()Ljava/lang/String;

    move-result-object v3

    .line 198
    goto :goto_36

    .line 201
    :sswitch_79
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getMSID()Ljava/lang/String;

    move-result-object v3

    .line 202
    goto :goto_36

    .line 205
    :sswitch_80
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getMEID()Ljava/lang/String;

    move-result-object v3

    .line 206
    goto :goto_36

    .line 209
    :sswitch_87
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getPESUDO_ESN()Ljava/lang/String;

    move-result-object v3

    .line 210
    goto :goto_36

    .line 217
    :sswitch_8e
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_NAI()Ljava/lang/String;

    move-result-object v3

    .line 218
    goto :goto_36

    .line 225
    :sswitch_95
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_PRIMARY_HA()Ljava/lang/String;

    move-result-object v3

    .line 226
    goto :goto_36

    .line 229
    :sswitch_9c
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_SECONDARY_HA()Ljava/lang/String;

    move-result-object v3

    .line 230
    goto :goto_36

    .line 233
    :sswitch_a3
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_HA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v3

    .line 234
    goto :goto_36

    .line 237
    :sswitch_aa
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_HA_SPI()Ljava/lang/String;

    move-result-object v3

    .line 238
    goto :goto_36

    .line 245
    :sswitch_b1
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_AAA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v3

    .line 246
    goto/16 :goto_36

    .line 249
    :sswitch_b9
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_AAA_SPI()Ljava/lang/String;

    move-result-object v3

    .line 250
    goto/16 :goto_36

    .line 253
    :sswitch_c1
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_REVERSE_TUNNELING()Ljava/lang/String;

    move-result-object v3

    .line 254
    goto/16 :goto_36

    .line 257
    :sswitch_c9
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_MOBILE_IP_ADDRESS()Ljava/lang/String;

    move-result-object v3

    .line 258
    goto/16 :goto_36

    .line 261
    :sswitch_d1
    const-string v8, "gsm.version.baseband"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, version:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v9, 0xc

    const/4 v10, 0x4

    invoke-direct {v6, v8, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 264
    .local v6, ver:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/samsungframeworks/internal/SprintExtension;->UaProf0:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".rdf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v3           #ret:Ljava/lang/String;
    .local v4, ret:Ljava/lang/String;
    move-object v3, v4

    .line 265
    .end local v4           #ret:Ljava/lang/String;
    .restart local v3       #ret:Ljava/lang/String;
    goto/16 :goto_36

    .line 268
    .end local v6           #ver:Ljava/lang/String;
    .end local v7           #version:Ljava/lang/String;
    :sswitch_104
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getMOBILESYNK_ENABLED()Ljava/lang/String;

    move-result-object v3

    .line 269
    goto/16 :goto_36

    .line 272
    :sswitch_10c
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDSA_SERVER_URL()Ljava/lang/String;

    move-result-object v3

    .line 273
    goto/16 :goto_36

    .line 276
    :sswitch_114
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getPDE_PRIMARY_IP()Ljava/lang/String;

    move-result-object v3

    .line 277
    goto/16 :goto_36

    .line 280
    :sswitch_11c
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getPDE_PRIMARY_PORT()Ljava/lang/String;

    move-result-object v3

    .line 281
    goto/16 :goto_36

    .line 284
    :sswitch_124
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDSA_SERVER_IP()Ljava/lang/String;

    move-result-object v3

    .line 285
    goto/16 :goto_36

    .line 288
    :sswitch_12c
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDSA_SERVER_PORT()Ljava/lang/String;

    move-result-object v3

    .line 289
    goto/16 :goto_36

    .line 292
    :sswitch_134
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getRTSP_PROXY_ADDR()Ljava/lang/String;

    move-result-object v3

    .line 293
    goto/16 :goto_36

    .line 296
    :sswitch_13c
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getRTSP_PROXY_PORT()Ljava/lang/String;

    move-result-object v3

    .line 297
    goto/16 :goto_36

    .line 300
    :sswitch_144
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getHTTPPD_PROXY_ADDR()Ljava/lang/String;

    move-result-object v3

    .line 301
    goto/16 :goto_36

    .line 304
    :sswitch_14c
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getHTTPPD_PROXY_PORT()Ljava/lang/String;

    move-result-object v3

    .line 305
    goto/16 :goto_36

    .line 308
    :sswitch_154
    const-string v8, "ro.cdma.home.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    goto/16 :goto_36

    .line 313
    :sswitch_15c
    iget-object v8, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getWORK_MODE()Ljava/lang/String;
    :try_end_161
    .catchall {:try_start_72 .. :try_end_161} :catchall_17f
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_161} :catch_164

    move-result-object v3

    .line 314
    goto/16 :goto_36

    .line 321
    :catch_164
    move-exception v0

    .line 322
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_165
    const-string v8, "SprintExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getString RemoteException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catchall {:try_start_165 .. :try_end_17d} :catchall_17f

    goto/16 :goto_36

    .line 176
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #notSupport:Z
    .end local v2           #pid:I
    .end local v3           #ret:Ljava/lang/String;
    .end local v5           #uid:I
    :catchall_17f
    move-exception v8

    monitor-exit p0

    throw v8

    .line 195
    :sswitch_data_182
    .sparse-switch
        0x1 -> :sswitch_72
        0x2 -> :sswitch_8e
        0x3 -> :sswitch_87
        0xe -> :sswitch_d1
        0x1e -> :sswitch_80
        0x23 -> :sswitch_79
        0x32 -> :sswitch_95
        0x33 -> :sswitch_9c
        0x56 -> :sswitch_c1
        0x57 -> :sswitch_c9
        0x5a -> :sswitch_a3
        0x5b -> :sswitch_aa
        0x5d -> :sswitch_b1
        0x5e -> :sswitch_b9
        0xa1 -> :sswitch_114
        0xa3 -> :sswitch_11c
        0x12c -> :sswitch_104
        0x192 -> :sswitch_10c
        0x195 -> :sswitch_124
        0x196 -> :sswitch_12c
        0x19c -> :sswitch_134
        0x19d -> :sswitch_13c
        0x19e -> :sswitch_144
        0x19f -> :sswitch_14c
        0x1a4 -> :sswitch_154
        0x1f4 -> :sswitch_15c
    .end sparse-switch
.end method

.method public getVoiceMailCount()I
    .registers 6

    .prologue
    .line 1010
    const-string v2, "SprintExtension"

    const-string v3, "getVoiceMailCount()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/4 v1, 0x0

    .line 1014
    .local v1, ret:I
    const-string v2, "iphoneinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1017
    :try_start_14
    iget-object v2, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getVoiceMailCount()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    move-result v1

    .line 1022
    :goto_1a
    return v1

    .line 1018
    :catch_1b
    move-exception v0

    .line 1019
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "SprintExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceMailCount RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public reboot()V
    .registers 7

    .prologue
    .line 978
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionPLATFORM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 979
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.PLATFORM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 982
    :cond_15
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 985
    :try_start_21
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->reboot()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    .line 989
    :goto_26
    return-void

    .line 986
    :catch_27
    move-exception v0

    .line 987
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public declared-synchronized registerHFA()V
    .registers 7

    .prologue
    .line 938
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 939
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 942
    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.samsung.OMADMExtension.REG_HFA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 943
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.samsung"

    const-string v2, "com.samsung.client.SyncmlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 945
    monitor-exit p0

    return-void

    .line 938
    .end local v0           #i:Landroid/content/Intent;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .registers 6

    .prologue
    .line 848
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 849
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 854
    :cond_16
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    if-eqz v0, :cond_24

    .line 855
    const-string v0, "SprintExtension"

    const-string v1, "justSetSlot0 release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    .line 861
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/SprintExtension;->requestDataProfile(I)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 862
    monitor-exit p0

    return-void

    .line 848
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseDSAProxy()V
    .registers 7

    .prologue
    .line 879
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 880
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 884
    :cond_16
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_43

    .line 886
    :try_start_22
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->releaseDSAProxy()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    .line 890
    :goto_27
    monitor-exit p0

    return-void

    .line 887
    :catch_29
    move-exception v0

    .line 888
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2a
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseDSAProxy RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_43

    goto :goto_27

    .line 879
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_43
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized requestDataProfile(I)I
    .registers 27
    .parameter "dataconnection"

    .prologue
    .line 635
    monitor-enter p0

    const/4 v11, 0x0

    .line 638
    .local v11, ret:I
    const/4 v13, 0x1

    .line 639
    .local v13, slot:I
    const/4 v15, 0x0

    .line 640
    .local v15, slot1NAI:Ljava/lang/String;
    const/4 v14, 0x0

    .line 641
    .local v14, slot1Available:Z
    const/16 v19, 0x0

    .line 643
    .local v19, wifiConnected:Z
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 644
    .local v9, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 646
    .local v18, uid:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_32

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 651
    :cond_32
    new-instance v3, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v3, v0, v9, v1}, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;-><init>(Lcom/samsungframeworks/internal/SprintExtension;II)V

    .line 653
    .local v3, c:Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;
    invoke-direct/range {p0 .. p0}, Lcom/samsungframeworks/internal/SprintExtension;->SlotTracePrint()V

    .line 655
    if-nez p1, :cond_e9

    .line 657
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v9, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->SlotTraceUpdate(III)V

    .line 659
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsungframeworks/internal/SprintExtension;->getCallerPos(Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;)I

    move-result v10

    .line 661
    .local v10, pos:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_89

    .line 662
    const-string v20, "SprintExtension"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "requestDataProfile: ignore release request from non previous request : pid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " uid "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_7 .. :try_end_85} :catchall_142

    .line 663
    const/16 v20, 0x1

    .line 844
    .end local v10           #pos:I
    :goto_87
    monitor-exit p0

    return v20

    .line 665
    .restart local v10       #pos:I
    :cond_89
    :try_start_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 669
    .local v12, size:I
    if-lez v12, :cond_bd

    .line 670
    const-string v20, "SprintExtension"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ignore release request... requestCnt = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v20, 0x0

    goto :goto_87

    .line 673
    :cond_bd
    const-string v20, "SprintExtension"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "requestCnt = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v10           #pos:I
    .end local v12           #size:I
    :goto_d7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    move/from16 v20, v0

    if-eqz v20, :cond_145

    .line 686
    const-string v20, "SprintExtension"

    const-string v21, "justSetSlot0 already set"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/16 v20, 0x1

    goto :goto_87

    .line 677
    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v9, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->SlotTraceUpdate(III)V

    .line 681
    const-string v20, "SprintExtension"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "requestCnt = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->callerList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "pid "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " uid "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catchall {:try_start_89 .. :try_end_141} :catchall_142

    goto :goto_d7

    .line 635
    .end local v3           #c:Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;
    .end local v9           #pid:I
    .end local v18           #uid:I
    :catchall_142
    move-exception v20

    monitor-exit p0

    throw v20

    .line 690
    .restart local v3       #c:Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;
    .restart local v9       #pid:I
    .restart local v18       #uid:I
    :cond_145
    const/16 v20, 0x1

    :try_start_147
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 691
    .local v17, strMdn:Ljava/lang/String;
    new-instance v20, Ljava/lang/Long;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 693
    .local v7, numMdn:J
    const/16 v20, 0x64

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_17d

    const-wide/16 v20, 0x2710

    cmp-long v20, v7, v20

    if-gez v20, :cond_17d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->isStartedHFA:Z

    move/from16 v20, v0

    if-nez v20, :cond_17d

    .line 694
    const-string v20, "SprintExtension"

    const-string v21, "not yet activated"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/16 v20, 0x0

    goto/16 :goto_87

    .line 699
    :cond_17d
    const/16 v20, 0x65

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_214

    .line 700
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    .line 701
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->isStartedHFA:Z

    .line 702
    const/16 p1, 0x64

    .line 707
    :goto_197
    const-string v20, "iphoneinfo"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "wifi"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 710
    .local v5, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v16

    .line 711
    .local v16, state:I
    const/16 v20, 0x3

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_21e

    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_21e

    .line 712
    const/16 v19, 0x0

    .line 717
    :goto_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->getCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;)I

    move-result v13

    .line 718
    const-string v20, "SprintExtension"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "###requestDataProfile getCDMASlot = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 722
    .local v6, mobileInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    .line 724
    .local v4, connectedOrConnecting:Z
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_221

    .line 725
    const-string v20, "SprintExtension"

    const-string v21, "getCurrentSlot fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v20, 0x1

    goto/16 :goto_87

    .line 704
    .end local v4           #connectedOrConnecting:Z
    .end local v5           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v6           #mobileInfo:Landroid/net/NetworkInfo;
    .end local v16           #state:I
    :cond_214
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    goto/16 :goto_197

    .line 714
    .restart local v5       #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v16       #state:I
    :cond_21e
    const/16 v19, 0x1

    goto :goto_1cb

    .line 730
    .restart local v4       #connectedOrConnecting:Z
    .restart local v6       #mobileInfo:Landroid/net/NetworkInfo;
    :cond_221
    const/16 v20, 0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_23f

    .line 732
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/samsungframeworks/internal/SprintExtension;->setPrevDataSetting(ZI)V

    .line 733
    if-nez v19, :cond_23b

    .line 734
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 736
    :cond_23b
    const/16 v20, 0x0

    goto/16 :goto_87

    .line 740
    :cond_23f
    const/16 v20, 0x64

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_294

    .line 742
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/samsungframeworks/internal/SprintExtension;->setPrevDataSetting(ZI)V

    .line 743
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 744
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->justSetSlot0:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_27a

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    .line 751
    :cond_276
    :goto_276
    const/16 v20, 0x0

    goto/16 :goto_87

    .line 747
    :cond_27a
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_282

    if-nez v4, :cond_276

    .line 748
    :cond_282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto :goto_276

    .line 756
    :cond_294
    const-string v20, "iphoneinfo"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;
    :try_end_2a4
    .catchall {:try_start_147 .. :try_end_2a4} :catchall_142

    .line 759
    :try_start_2a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_NAI()Ljava/lang/String;
    :try_end_2ad
    .catchall {:try_start_2a4 .. :try_end_2ad} :catchall_142
    .catch Landroid/os/RemoteException; {:try_start_2a4 .. :try_end_2ad} :catch_47b

    move-result-object v15

    .line 764
    :goto_2ae
    :try_start_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getSLOT_1_NAI()Ljava/lang/String;
    :try_end_2b7
    .catchall {:try_start_2ae .. :try_end_2b7} :catchall_142
    .catch Landroid/os/RemoteException; {:try_start_2ae .. :try_end_2b7} :catch_478

    move-result-object v15

    .line 768
    :goto_2b8
    if-eqz v15, :cond_2c1

    :try_start_2ba
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_2c1

    .line 769
    const/4 v14, 0x1

    .line 772
    :cond_2c1
    if-nez p1, :cond_41d

    .line 773
    const-string v20, "SprintExtension"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "set default prev="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " slot="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " connectedOrConnecting="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_30b

    .line 776
    const/16 v20, 0x0

    goto/16 :goto_87

    .line 779
    :cond_30b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v20, v0

    if-nez v20, :cond_363

    .line 780
    if-nez v19, :cond_31e

    .line 781
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 783
    :cond_31e
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_34d

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_330

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_34d

    .line 787
    :cond_330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    .line 819
    :cond_341
    :goto_341
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    .line 820
    const/16 v20, 0x0

    goto/16 :goto_87

    .line 788
    :cond_34d
    if-nez v13, :cond_351

    if-nez v4, :cond_341

    .line 789
    :cond_351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto :goto_341

    .line 791
    :cond_363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_396

    .line 792
    if-nez v19, :cond_37c

    .line 793
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 795
    :cond_37c
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_384

    if-nez v4, :cond_341

    .line 796
    :cond_384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto :goto_341

    .line 798
    :cond_396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->prevDataConnectPreference:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3f1

    .line 799
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3b5

    .line 800
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 802
    :cond_3b5
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_3da

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_3c7

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_3da

    .line 806
    :cond_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto/16 :goto_341

    .line 807
    :cond_3da
    if-nez v13, :cond_3de

    if-nez v4, :cond_341

    .line 808
    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto/16 :goto_341

    .line 812
    :cond_3f1
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_402

    .line 813
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 815
    :cond_402
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_40a

    if-nez v4, :cond_341

    .line 816
    :cond_40a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    goto/16 :goto_341

    .line 824
    :cond_41d
    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_474

    .line 825
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_436

    .line 826
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsungframeworks/internal/SprintExtension;->setWIFIenabled(Z)V

    .line 829
    :cond_436
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_45a

    if-nez v4, :cond_45a

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I

    .line 841
    :cond_44f
    :goto_44f
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/samsungframeworks/internal/SprintExtension;->setPrevDataSetting(ZI)V

    .line 842
    const/16 v20, 0x0

    goto/16 :goto_87

    .line 831
    :cond_45a
    if-nez v13, :cond_44f

    .line 832
    if-nez v14, :cond_462

    .line 835
    const/16 v20, 0x1

    goto/16 :goto_87

    .line 837
    :cond_462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsungframeworks/internal/SprintExtension;->setCDMASlot(Lcom/samsungframeworks/internal/IPhoneInfoInterface;I)I
    :try_end_473
    .catchall {:try_start_2ba .. :try_end_473} :catchall_142

    goto :goto_44f

    .line 844
    :cond_474
    const/16 v20, 0x0

    goto/16 :goto_87

    .line 765
    :catch_478
    move-exception v20

    goto/16 :goto_2b8

    .line 760
    :catch_47b
    move-exception v20

    goto/16 :goto_2ae
.end method

.method public resetVoiceMailCount()V
    .registers 5

    .prologue
    .line 1027
    const-string v1, "SprintExtension"

    const-string v2, "resetVoiceMailCount()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 1032
    :try_start_13
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->resetVoiceMailCount()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    .line 1036
    :goto_18
    return-void

    .line 1033
    :catch_19
    move-exception v0

    .line 1034
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetVoiceMailCount RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public declared-synchronized setDSAProxy(Ljava/lang/String;I)V
    .registers 9
    .parameter "proxy"
    .parameter "port"

    .prologue
    .line 865
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionCONNECTIONMANAGER:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 866
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.CONNECTIONMANAGER"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 870
    :cond_16
    const-string v1, "iphoneinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_43

    .line 872
    :try_start_22
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v1, p1, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setDSAProxy(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    .line 876
    :goto_27
    monitor-exit p0

    return-void

    .line 873
    :catch_29
    move-exception v0

    .line 874
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2a
    const-string v1, "SprintExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataProfile RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_43

    goto :goto_27

    .line 865
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_43
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setString(ILjava/lang/String;)V
    .registers 12
    .parameter "id"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    .line 332
    monitor-enter p0

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 333
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 334
    .local v4, uid:I
    const/4 v1, 0x0

    .line 335
    .local v1, notSupport:Z
    const/4 v3, 0x0

    .line 337
    .local v3, ret:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->ENABLE_LOG:Z

    if-ne v5, v8, :cond_46

    .line 338
    const-string v5, "SprintExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setString("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_46
    iget-boolean v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionSYSTEMPROPERTIES:Z

    if-ne v5, v8, :cond_52

    .line 341
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v6, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 344
    :cond_52
    const-string v5, "iphoneinfo"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 348
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    if-nez v5, :cond_6b

    .line 349
    const-string v5, "SprintExtension"

    const-string v6, "setString/iphoneinfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_2 .. :try_end_69} :catchall_90

    .line 475
    :goto_69
    monitor-exit p0

    return-void

    .line 354
    :cond_6b
    sparse-switch p1, :sswitch_data_12e

    .line 469
    const/4 v1, 0x1

    goto :goto_69

    .line 356
    :sswitch_70
    :try_start_70
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setMDN(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_90
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_75} :catch_76

    goto :goto_69

    .line 472
    :catch_76
    move-exception v0

    .line 473
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_77
    const-string v5, "SprintExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setString RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_90

    goto :goto_69

    .line 332
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #notSupport:Z
    .end local v2           #pid:I
    .end local v3           #ret:Ljava/lang/String;
    .end local v4           #uid:I
    :catchall_90
    move-exception v5

    monitor-exit p0

    throw v5

    .line 360
    .restart local v1       #notSupport:Z
    .restart local v2       #pid:I
    .restart local v3       #ret:Ljava/lang/String;
    .restart local v4       #uid:I
    :sswitch_93
    :try_start_93
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setMSID(Ljava/lang/String;)V

    goto :goto_69

    .line 372
    :sswitch_99
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setA_Key(Ljava/lang/String;)V

    goto :goto_69

    .line 376
    :sswitch_9f
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_NAI(Ljava/lang/String;)V

    goto :goto_69

    .line 379
    :sswitch_a5
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_NAI_PASSWORD(Ljava/lang/String;)V

    goto :goto_69

    .line 383
    :sswitch_ab
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_PRIMARY_HA(Ljava/lang/String;)V

    goto :goto_69

    .line 387
    :sswitch_b1
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_SECONDARY_HA(Ljava/lang/String;)V

    goto :goto_69

    .line 391
    :sswitch_b7
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_HA_AUTH_ALGORITHM(Ljava/lang/String;)V

    goto :goto_69

    .line 395
    :sswitch_bd
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_HA_SPI(Ljava/lang/String;)V

    goto :goto_69

    .line 399
    :sswitch_c3
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_HA_PASSWORD(Ljava/lang/String;)V

    goto :goto_69

    .line 403
    :sswitch_c9
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_AAA_AUTH_ALGORITHM(Ljava/lang/String;)V

    goto :goto_69

    .line 407
    :sswitch_cf
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_AAA_SPI(Ljava/lang/String;)V

    goto :goto_69

    .line 411
    :sswitch_d5
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_REVERSE_TUNNELING(Ljava/lang/String;)V

    goto :goto_69

    .line 415
    :sswitch_db
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setSLOT_1_MOBILE_IP_ADDRESS(Ljava/lang/String;)V

    goto :goto_69

    .line 423
    :sswitch_e1
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setMOBILESYNK_ENABLED(Ljava/lang/String;)V

    goto :goto_69

    .line 427
    :sswitch_e7
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setDSA_SERVER_URL(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 431
    :sswitch_ee
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setPDE_PRIMARY_IP(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 435
    :sswitch_f5
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setPDE_PRIMARY_PORT(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 439
    :sswitch_fc
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setDSA_SERVER_IP(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 443
    :sswitch_103
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setDSA_SERVER_PORT(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 447
    :sswitch_10a
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setRTSP_PROXY_ADDR(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 451
    :sswitch_111
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setRTSP_PROXY_PORT(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 455
    :sswitch_118
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setHTTPPD_PROXY_ADDR(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 459
    :sswitch_11f
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setHTTPPD_PROXY_PORT(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 464
    :sswitch_126
    iget-object v5, p0, Lcom/samsungframeworks/internal/SprintExtension;->IPhoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v5, p2}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->setWORK_MODE(Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_93 .. :try_end_12b} :catchall_90
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_12b} :catch_76

    goto/16 :goto_69

    .line 354
    nop

    :sswitch_data_12e
    .sparse-switch
        0x1 -> :sswitch_70
        0x2 -> :sswitch_9f
        0x23 -> :sswitch_93
        0x2b -> :sswitch_a5
        0x32 -> :sswitch_ab
        0x33 -> :sswitch_b1
        0x56 -> :sswitch_d5
        0x57 -> :sswitch_db
        0x5a -> :sswitch_b7
        0x5b -> :sswitch_bd
        0x5c -> :sswitch_c3
        0x5d -> :sswitch_c9
        0x5e -> :sswitch_cf
        0xa1 -> :sswitch_ee
        0xa3 -> :sswitch_f5
        0x12c -> :sswitch_e1
        0x190 -> :sswitch_99
        0x192 -> :sswitch_e7
        0x195 -> :sswitch_fc
        0x196 -> :sswitch_103
        0x19c -> :sswitch_10a
        0x19d -> :sswitch_111
        0x19e -> :sswitch_118
        0x19f -> :sswitch_11f
        0x1f4 -> :sswitch_126
    .end sparse-switch
.end method

.method public declared-synchronized startCIDC()V
    .registers 6

    .prologue
    .line 894
    monitor-enter p0

    :try_start_1
    const-string v0, "SprintExtension"

    const-string v1, "startCIDC"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 897
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 900
    :cond_1d
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sprint.START_DP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 901
    monitor-exit p0

    return-void

    .line 894
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startCIFUMO()V
    .registers 6

    .prologue
    .line 904
    monitor-enter p0

    :try_start_1
    const-string v0, "SprintExtension"

    const-string v1, "startCIFUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 907
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 910
    :cond_1d
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sprint.START_FUMO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 911
    monitor-exit p0

    return-void

    .line 904
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startCIPRL()V
    .registers 6

    .prologue
    .line 914
    monitor-enter p0

    :try_start_1
    const-string v0, "SprintExtension"

    const-string v1, "startCIPRL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-boolean v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 917
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 920
    :cond_1d
    iget-object v0, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sprint.START_PRL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 921
    monitor-exit p0

    return-void

    .line 914
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startHFA()V
    .registers 7

    .prologue
    .line 924
    monitor-enter p0

    :try_start_1
    const-string v1, "SprintExtension"

    const-string v2, "startHFA"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-boolean v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->enablePermisionOMADM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 927
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    const-string v2, "com.sprint.internal.permission.OMADM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 930
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.START_HFA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 931
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 932
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 933
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 934
    iget-object v1, p0, Lcom/samsungframeworks/internal/SprintExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 935
    monitor-exit p0

    return-void

    .line 924
    .end local v0           #i:Landroid/content/Intent;
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method
