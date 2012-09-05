.class public Lcom/samsung/upnp/ServiceList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "ServiceList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public getService(I)Lcom/samsung/upnp/Service;
    .registers 4
    .parameter "n"

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, obj:Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ServiceList;->get(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v0

    .line 56
    .end local v0           #obj:Ljava/lang/Object;
    :goto_5
    check-cast v0, Lcom/samsung/upnp/Service;

    return-object v0

    .line 55
    .restart local v0       #obj:Ljava/lang/Object;
    :catch_8
    move-exception v1

    goto :goto_5
.end method
