.class public Lcom/samsung/upnp/media/server/object/ContentNodeList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "ContentNodeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/media/server/object/ContentNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;
    .registers 3
    .parameter "n"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/ContentNode;

    return-object v0
.end method
