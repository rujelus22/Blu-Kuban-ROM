.class public Lcom/samsung/upnp/media/server/object/search/IdSearchCap;
.super Ljava/lang/Object;
.source "IdSearchCap.java"

# interfaces
.implements Lcom/samsung/upnp/media/server/object/SearchCap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/upnp/media/server/object/SearchCriteria;Lcom/samsung/upnp/media/server/object/ContentNode;)Z
    .registers 8
    .parameter "searchCri"
    .parameter "conNode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, searchCriID:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, conID:Ljava/lang/String;
    if-eqz v1, :cond_e

    if-nez v0, :cond_f

    .line 52
    :cond_e
    :goto_e
    return v3

    .line 43
    :cond_f
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isExists()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 45
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isTrueValue()Z

    move-result v4

    if-eqz v4, :cond_1d

    move v3, v2

    .line 46
    goto :goto_e

    .line 47
    :cond_1d
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isFalseValue()Z

    move-result v4

    if-nez v4, :cond_e

    .line 50
    :cond_23
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isEQ()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_31

    :goto_2f
    move v3, v2

    goto :goto_e

    :cond_31
    move v2, v3

    goto :goto_2f
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    const-string v0, "@id"

    return-object v0
.end method
