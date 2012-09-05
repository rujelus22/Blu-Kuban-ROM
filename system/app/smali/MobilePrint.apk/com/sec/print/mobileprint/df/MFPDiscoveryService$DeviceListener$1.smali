.class Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;
.super Ljava/lang/Object;
.source "MFPDiscoveryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;

.field final synthetic val$event:Ljavax/jmdns/ServiceEvent;


# direct methods
.method constructor <init>(Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;Ljavax/jmdns/ServiceEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;->this$1:Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;

    iput-object p2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;->val$event:Ljavax/jmdns/ServiceEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 410
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 411
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;->this$1:Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;

    iget-object v1, v1, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->jmdns:Ljavax/jmdns/JmDNS;

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;->val$event:Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;->val$event:Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 412
    .local v0, info:Ljavax/jmdns/ServiceInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;->this$1:Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;->val$event:Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->addDevice(Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 420
    .end local v0           #info:Ljavax/jmdns/ServiceInfo;
    :cond_2d
    :goto_2d
    return-void

    .line 418
    :catch_2e
    move-exception v1

    goto :goto_2d
.end method
