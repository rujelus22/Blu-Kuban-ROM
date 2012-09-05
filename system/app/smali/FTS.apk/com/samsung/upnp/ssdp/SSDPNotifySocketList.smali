.class public Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SSDPNotifySocketList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/ssdp/SSDPNotifySocket;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 41
    return-void
.end method
