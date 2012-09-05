.class public Lcom/samsung/wimax/odb/WiMAXNative;
.super Lcom/samsung/wimax/NativeLoader;
.source "WiMAXNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;
    }
.end annotation


# instance fields
.field qCTMsg:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    :try_start_0
    const-string v1, "WiMAXNative"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 20
    .local v0, e:Ljava/lang/Exception;
    :goto_5
    return-void

    .line 16
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 18
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/wimax/NativeLoader;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/odb/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    .line 44
    return-void
.end method


# virtual methods
.method LogMsg(Ljava/lang/String;)V
    .registers 3
    .parameter "strMsg"

    .prologue
    .line 36
    const-string v0, "ODB NA MSG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method protected native ManageTxPkt(IIILjava/lang/String;)Z
.end method

.method protected native SendCTCmd(I)V
.end method

.method declared-synchronized SetRxPktStatck(IIILjava/lang/String;)V
    .registers 12
    .parameter "code"
    .parameter "gId"
    .parameter "msgId"
    .parameter "data"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    const-string v0, "WiMAXNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>> c("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") g("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") m("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v6, p0, Lcom/samsung/wimax/odb/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    new-instance v0, Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/wimax/odb/WiMAXNative$CTMsgPkt;-><init>(Lcom/samsung/wimax/odb/WiMAXNative;IIILjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native WiMAXPowerOff()Z
.end method

.method protected native WiMAXPowerOn()Z
.end method

.method protected native wmxclose()I
.end method

.method protected native wmxopen()I
.end method
