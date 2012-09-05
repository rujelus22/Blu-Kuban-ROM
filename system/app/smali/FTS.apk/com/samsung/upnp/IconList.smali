.class public Lcom/samsung/upnp/IconList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "IconList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/Icon;",
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
.method public getIcon(I)Lcom/samsung/upnp/Icon;
    .registers 3
    .parameter "n"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/IconList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Icon;

    return-object v0
.end method
