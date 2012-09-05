.class public Lcom/samsung/upnp/media/server/DirectoryList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "DirectoryList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/media/server/Directory;",
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
