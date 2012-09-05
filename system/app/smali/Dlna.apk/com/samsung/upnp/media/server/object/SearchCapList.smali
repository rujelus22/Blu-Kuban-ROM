.class public Lcom/samsung/upnp/media/server/object/SearchCapList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SearchCapList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/media/server/object/SearchCap;",
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
.method public getSearchCap(I)Lcom/samsung/upnp/media/server/object/SearchCap;
    .registers 3
    .parameter "n"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/SearchCapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/SearchCap;

    return-object v0
.end method

.method public getSearchCap(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SearchCap;
    .registers 7
    .parameter "propName"

    .prologue
    const/4 v3, 0x0

    .line 40
    if-nez p1, :cond_5

    move-object v2, v3

    .line 49
    :cond_4
    :goto_4
    return-object v2

    .line 43
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/SearchCapList;->size()I

    move-result v1

    .line 44
    .local v1, nLists:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_a
    if-lt v0, v1, :cond_e

    move-object v2, v3

    .line 49
    goto :goto_4

    .line 45
    :cond_e
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/SearchCapList;->getSearchCap(I)Lcom/samsung/upnp/media/server/object/SearchCap;

    move-result-object v2

    .line 46
    .local v2, scap:Lcom/samsung/upnp/media/server/object/SearchCap;
    invoke-interface {v2}, Lcom/samsung/upnp/media/server/object/SearchCap;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
