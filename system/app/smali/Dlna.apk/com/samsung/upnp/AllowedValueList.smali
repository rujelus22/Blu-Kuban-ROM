.class public Lcom/samsung/upnp/AllowedValueList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "AllowedValueList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/AllowedValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public getAllowedValue(I)Lcom/samsung/upnp/AllowedValue;
    .registers 3
    .parameter "n"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/AllowedValueList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/AllowedValue;

    return-object v0
.end method
