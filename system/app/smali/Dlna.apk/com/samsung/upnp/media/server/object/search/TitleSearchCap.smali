.class public Lcom/samsung/upnp/media/server/object/search/TitleSearchCap;
.super Ljava/lang/Object;
.source "TitleSearchCap.java"

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
    .registers 10
    .parameter "searchCri"
    .parameter "conNode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 39
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, searchCriTitle:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/upnp/media/server/object/ContentNode;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, conTitle:Ljava/lang/String;
    if-eqz v3, :cond_e

    if-nez v1, :cond_10

    :cond_e
    move v4, v5

    .line 62
    :cond_f
    :goto_f
    return v4

    .line 43
    :cond_10
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, cmpRet:I
    if-nez v0, :cond_28

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isEQ()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isLE()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isGE()Z

    move-result v6

    if-nez v6, :cond_f

    .line 46
    :cond_28
    if-gez v0, :cond_30

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isLT()Z

    move-result v6

    if-nez v6, :cond_f

    .line 48
    :cond_30
    if-lez v0, :cond_38

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isGT()Z

    move-result v6

    if-nez v6, :cond_f

    .line 50
    :cond_38
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 51
    .local v2, idxRet:I
    if-ltz v2, :cond_44

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isContains()Z

    move-result v6

    if-nez v6, :cond_f

    .line 53
    :cond_44
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isDoesNotContain()Z

    move-result v6

    if-nez v6, :cond_f

    .line 55
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isExists()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 57
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isTrueValue()Z

    move-result v6

    if-nez v6, :cond_f

    .line 59
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isFalseValue()Z

    move-result v4

    if-eqz v4, :cond_5e

    move v4, v5

    .line 60
    goto :goto_f

    :cond_5e
    move v4, v5

    .line 62
    goto :goto_f
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    const-string v0, "dc:title"

    return-object v0
.end method
