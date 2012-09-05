.class public Lcom/samsung/upnp/control/RenewSubscriber;
.super Lcom/samsung/util/ThreadCore;
.source "RenewSubscriber.java"


# instance fields
.field private ctrlPoint:Lcom/samsung/upnp/IControlPoint;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/IControlPoint;)V
    .registers 2
    .parameter "ctrlp"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/util/ThreadCore;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/control/RenewSubscriber;->setControlPoint(Lcom/samsung/upnp/IControlPoint;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getControlPoint()Lcom/samsung/upnp/IControlPoint;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/upnp/control/RenewSubscriber;->ctrlPoint:Lcom/samsung/upnp/IControlPoint;

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/samsung/upnp/control/RenewSubscriber;->getControlPoint()Lcom/samsung/upnp/IControlPoint;

    move-result-object v0

    .line 63
    .local v0, ctrlp:Lcom/samsung/upnp/IControlPoint;
    const-wide/32 v1, 0x1d4c0

    .line 64
    .local v1, renewInterval:J
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/upnp/control/RenewSubscriber;->isRunnable()Z

    move-result v3

    if-nez v3, :cond_e

    .line 70
    return-void

    .line 66
    :cond_e
    :try_start_e
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 67
    invoke-interface {v0}, Lcom/samsung/upnp/IControlPoint;->renewSubscriberService()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_7

    .line 68
    :catch_15
    move-exception v3

    goto :goto_7
.end method

.method public setControlPoint(Lcom/samsung/upnp/IControlPoint;)V
    .registers 2
    .parameter "ctrlp"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/upnp/control/RenewSubscriber;->ctrlPoint:Lcom/samsung/upnp/IControlPoint;

    .line 49
    return-void
.end method
