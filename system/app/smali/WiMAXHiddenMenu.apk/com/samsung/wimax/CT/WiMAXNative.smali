.class public Lcom/samsung/wimax/CT/WiMAXNative;
.super Ljava/lang/Object;
.source "WiMAXNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;
    }
.end annotation


# static fields
.field static qCTMsg:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/samsung/wimax/CT/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    .line 15
    :try_start_7
    const-string v1, "WiMAXNative"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    .line 20
    .local v0, e:Ljava/lang/Exception;
    :goto_c
    return-void

    .line 16
    .end local v0           #e:Ljava/lang/Exception;
    :catch_d
    move-exception v0

    .line 18
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method LogMsg(Ljava/lang/String;)V
    .registers 3
    .parameter "strMsg"

    .prologue
    .line 41
    const-string v0, "WiMAXNative"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
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
    .line 45
    monitor-enter p0

    :try_start_1
    const-string v0, "WiMAXNativepkt"

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

    const-string v2, ") d("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v6, Lcom/samsung/wimax/CT/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    new-instance v0, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;-><init>(Lcom/samsung/wimax/CT/WiMAXNative;IIILjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    .line 47
    monitor-exit p0

    return-void

    .line 45
    :catchall_4e
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
