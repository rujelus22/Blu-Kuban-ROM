.class public Lcom/samsung/upnp/device/Disposer;
.super Lcom/samsung/util/ThreadCore;
.source "Disposer.java"


# instance fields
.field private ctrlPoint:Lcom/samsung/upnp/IControlPoint;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/IControlPoint;)V
    .registers 2
    .parameter "ctrlp"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/util/ThreadCore;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/device/Disposer;->setControlPoint(Lcom/samsung/upnp/IControlPoint;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getControlPoint()Lcom/samsung/upnp/IControlPoint;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/upnp/device/Disposer;->ctrlPoint:Lcom/samsung/upnp/IControlPoint;

    return-object v0
.end method

.method public run()V
    .registers 8

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/samsung/upnp/device/Disposer;->getControlPoint()Lcom/samsung/upnp/IControlPoint;

    move-result-object v0

    .line 61
    .local v0, ctrlp:Lcom/samsung/upnp/IControlPoint;
    invoke-interface {v0}, Lcom/samsung/upnp/IControlPoint;->getExpiredDeviceMonitoringInterval()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v1, v3, v5

    .line 63
    .local v1, monitorInterval:J
    :goto_c
    invoke-virtual {p0}, Lcom/samsung/upnp/device/Disposer;->isRunnable()Z

    move-result v3

    if-nez v3, :cond_13

    .line 71
    return-void

    .line 65
    :cond_13
    :try_start_13
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_c

    .line 66
    :catch_17
    move-exception v3

    goto :goto_c
.end method

.method public setControlPoint(Lcom/samsung/upnp/IControlPoint;)V
    .registers 2
    .parameter "ctrlp"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/upnp/device/Disposer;->ctrlPoint:Lcom/samsung/upnp/IControlPoint;

    .line 47
    return-void
.end method
