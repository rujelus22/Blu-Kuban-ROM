.class public Lcom/samsung/upnp/media/server/object/ContentPropertyList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "ContentPropertyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/media/server/object/ContentProperty;",
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
.method public getContentProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;
    .registers 3
    .parameter "n"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/ContentProperty;

    return-object v0
.end method

.method public getContentProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;
    .registers 7
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 40
    if-nez p1, :cond_5

    move-object v0, v3

    .line 49
    :cond_4
    :goto_4
    return-object v0

    .line 43
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->size()I

    move-result v2

    .line 44
    .local v2, nLists:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_a
    if-lt v1, v2, :cond_e

    move-object v0, v3

    .line 49
    goto :goto_4

    .line 45
    :cond_e
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->getContentProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    .line 46
    .local v0, elem:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method
