.class public Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;
.super Lcom/samsung/wimax/NativeLoader;
.source "WiMAXNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;
    }
.end annotation


# static fields
.field static volatile qCTMsg:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;",
            ">;"
        }
    .end annotation
.end field

.field static rev_code:I

.field static rev_data:Ljava/lang/String;

.field static rev_gId:I

.field static rev_msgId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    .line 16
    :try_start_7
    const-string v1, "WiMAXNative"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    const-string v1, "WiMAXNative"

    const-string v2, "load library successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 22
    .local v0, e:Ljava/lang/Exception;
    :goto_13
    return-void

    .line 18
    .end local v0           #e:Ljava/lang/Exception;
    :catch_14
    move-exception v0

    .line 20
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/wimax/NativeLoader;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method LogMsg(Ljava/lang/String;)V
    .registers 3
    .parameter "strMsg"

    .prologue
    .line 48
    const-string v0, "WiMAXNative"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
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
    .line 69
    monitor-enter p0

    :try_start_1
    sget-object v6, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    new-instance v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative$CTMsgPkt;-><init>(Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;IIILjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v0, "WiMAXNativePkt"

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

    const-string v2, ") data("

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

    .line 72
    sput p1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_code:I

    .line 73
    sput p2, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_gId:I

    .line 74
    sput p3, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_msgId:I

    .line 75
    sput-object p4, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->rev_data:Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 76
    monitor-exit p0

    return-void

    .line 69
    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native WiMAXCheckCal()Z
.end method

.method protected native WiMAXCheckCer()Z
.end method

.method protected native WiMAXEEPROMWrite()Z
.end method

.method protected native WiMAXPowerOff()Z
.end method

.method protected native WiMAXPowerOn()Z
.end method

.method protected native wmxclose()Z
.end method

.method protected native wmxopen()Z
.end method
