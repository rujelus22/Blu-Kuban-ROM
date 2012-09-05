.class public Lcom/samsung/upnp/media/server/object/sort/UPnPClassSortCap;
.super Ljava/lang/Object;
.source "UPnPClassSortCap.java"

# interfaces
.implements Lcom/samsung/upnp/media/server/object/SortCap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/ContentNode;)I
    .registers 6
    .parameter "conNode1"
    .parameter "conNode2"

    .prologue
    const/4 v2, 0x0

    .line 40
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 46
    :cond_5
    :goto_5
    return v2

    .line 42
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, upnpClass1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, upnpClass2:Ljava/lang/String;
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_5
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const-string v0, "upnp:class"

    return-object v0
.end method
