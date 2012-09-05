.class public Lcom/samsung/upnp/ServiceStateTable;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "ServiceStateTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/StateVariable;",
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


# virtual methods
.method public getStateVariable(I)Lcom/samsung/upnp/StateVariable;
    .registers 3
    .parameter "n"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ServiceStateTable;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/StateVariable;

    return-object v0
.end method
