.class public Lcom/samsung/upnp/media/server/object/search/UPnPClassSearchCap;
.super Ljava/lang/Object;
.source "UPnPClassSearchCap.java"

# interfaces
.implements Lcom/samsung/upnp/media/server/object/SearchCap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
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

    .line 23
    if-eqz p2, :cond_6

    if-nez p1, :cond_7

    .line 40
    :cond_6
    :goto_6
    return v3

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, searchCriUPnPClass:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, conUPnPClass:Ljava/lang/String;
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isEQ()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_21

    :goto_1f
    move v3, v2

    goto :goto_6

    :cond_21
    move v2, v3

    goto :goto_1f

    .line 32
    :cond_23
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isDerivedFrom()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    :goto_2f
    move v3, v2

    goto :goto_6

    :cond_31
    move v2, v3

    goto :goto_2f

    .line 34
    :cond_33
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isExists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 35
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isTrueValue()Z

    move-result v4

    if-eqz v4, :cond_41

    move v3, v2

    .line 36
    goto :goto_6

    .line 37
    :cond_41
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isFalseValue()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_6
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    const-string v0, "upnp:class"

    return-object v0
.end method
