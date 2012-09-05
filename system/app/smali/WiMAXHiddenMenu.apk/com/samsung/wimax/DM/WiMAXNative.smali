.class public Lcom/samsung/wimax/DM/WiMAXNative;
.super Lcom/samsung/wimax/NativeLoader;
.source "WiMAXNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;,
        Lcom/samsung/wimax/DM/WiMAXNative$HOMessage;
    }
.end annotation


# instance fields
.field qDMMsg:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    :try_start_0
    const-string v1, "WiMAXNative"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 22
    .local v0, e:Ljava/lang/Exception;
    :goto_5
    return-void

    .line 18
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 20
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/wimax/NativeLoader;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/DM/WiMAXNative;->qDMMsg:Ljava/util/Queue;

    .line 68
    return-void
.end method


# virtual methods
.method LogMsg(Ljava/lang/String;)V
    .registers 3
    .parameter "strMsg"

    .prologue
    .line 41
    const-string v0, "WiMAX_DM_Native"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method protected native ManageDMTxPkt(ILjava/lang/String;)Z
.end method

.method protected native ManageTxPkt(IIILjava/lang/String;)Z
.end method

.method protected native SendCTCmd(I)V
.end method

.method protected native SendDMCmd(I)V
.end method

.method declared-synchronized SetRxDMPktStatck(IILjava/lang/String;)V
    .registers 6
    .parameter "code"
    .parameter "typeId"
    .parameter "data"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/wimax/DM/WiMAXNative;->qDMMsg:Ljava/util/Queue;

    new-instance v1, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/wimax/DM/WiMAXNative$DMMsgPkt;-><init>(Lcom/samsung/wimax/DM/WiMAXNative;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 48
    const-string v0, "adding data (offer) failed"

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/DM/WiMAXNative;->LogMsg(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 49
    :cond_13
    monitor-exit p0

    return-void

    .line 47
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native WiMAXPowerOff()Z
.end method

.method protected native WiMAXPowerOn()Z
.end method

.method protected native wmxDMclose()I
.end method

.method protected native wmxDMopen()I
.end method

.method protected native wmxIsWimaxOn()I
.end method

.method protected native wmxclose()I
.end method

.method protected native wmxopen()I
.end method
