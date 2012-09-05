.class public Lcom/samsung/upnp/media/server/object/sort/DCDateSortCap;
.super Ljava/lang/Object;
.source "DCDateSortCap.java"

# interfaces
.implements Lcom/samsung/upnp/media/server/object/SortCap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/ContentNode;)I
    .registers 11
    .parameter "conNode1"
    .parameter "conNode2"

    .prologue
    const/4 v6, 0x0

    .line 41
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 51
    :cond_5
    :goto_5
    return v6

    .line 43
    :cond_6
    instance-of v7, p1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    if-eqz v7, :cond_5

    instance-of v7, p2, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    if-eqz v7, :cond_5

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    .local v0, itemNode1:Lcom/samsung/upnp/media/server/object/item/ItemNode;
    move-object v1, p2

    .line 46
    check-cast v1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    .line 47
    .local v1, itemNode2:Lcom/samsung/upnp/media/server/object/item/ItemNode;
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDateTime()J

    move-result-wide v2

    .line 48
    .local v2, itemTime1:J
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getDateTime()J

    move-result-wide v4

    .line 49
    .local v4, itemTime2:J
    cmp-long v7, v2, v4

    if-eqz v7, :cond_5

    .line 51
    cmp-long v6, v2, v4

    if-gez v6, :cond_26

    const/4 v6, -0x1

    goto :goto_5

    :cond_26
    const/4 v6, 0x1

    goto :goto_5
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const-string v0, "dc:date"

    return-object v0
.end method
