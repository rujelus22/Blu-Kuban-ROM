.class public Lcom/samsung/upnp/device/Advertiser;
.super Lcom/samsung/util/ThreadCore;
.source "Advertiser.java"


# instance fields
.field private device:Lcom/samsung/upnp/Device;


# virtual methods
.method public getDevice()Lcom/samsung/upnp/Device;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/upnp/device/Advertiser;->device:Lcom/samsung/upnp/Device;

    return-object v0
.end method

.method public run()V
    .registers 16

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/samsung/upnp/device/Advertiser;->getDevice()Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 64
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getLeaseTime()I

    move-result v7

    int-to-long v3, v7

    .line 66
    .local v3, leaseTime:J
    const-wide/16 v7, 0x4

    div-long v7, v3, v7

    long-to-float v9, v3

    float-to-double v9, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v13, 0x3fd0

    mul-double/2addr v11, v13

    mul-double/2addr v9, v11

    double-to-long v9, v9

    add-long v5, v7, v9

    .line 68
    .local v5, notifyInterval:J
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/samsung/upnp/device/Advertiser;->isRunnable()Z

    move-result v7

    if-nez v7, :cond_21

    .line 86
    return-void

    .line 72
    :cond_21
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    int-to-long v7, v2

    cmp-long v7, v7, v5

    if-ltz v7, :cond_31

    .line 81
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/upnp/device/Advertiser;->isRunnable()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 83
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->announce()V

    goto :goto_1a

    .line 74
    :cond_31
    const-wide/16 v7, 0x3e8

    :try_start_33
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/upnp/device/Advertiser;->isRunnable()Z
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_39} :catch_3f

    move-result v7

    if-eqz v7, :cond_27

    .line 72
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 77
    :catch_3f
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3c
.end method
