.class public Lcom/samsung/upnp/media/server/ConnectionInfoList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "ConnectionInfoList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/media/server/ConnectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getConnectionInfo(I)Lcom/samsung/upnp/media/server/ConnectionInfo;
    .registers 3
    .parameter "n"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/ConnectionInfoList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/ConnectionInfo;

    return-object v0
.end method
