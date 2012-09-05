.class public Lcom/samsung/upnp/media/server/object/SearchCriteriaList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SearchCriteriaList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/media/server/object/SearchCriteria;",
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
.method public compare(Lcom/samsung/upnp/media/server/object/ContentNode;Lcom/samsung/upnp/media/server/object/SearchCapList;)Z
    .registers 19
    .parameter "cnode"
    .parameter "searchCapList"

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->size()I

    move-result v14

    .line 62
    .local v14, searchCriCnt:I
    const/4 v5, 0x0

    .local v5, n:I
    :goto_5
    if-lt v5, v14, :cond_18

    .line 81
    new-instance v10, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;

    invoke-direct {v10}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;-><init>()V

    .line 82
    .local v10, orSearchCriList:Lcom/samsung/upnp/media/server/object/SearchCriteriaList;
    const/4 v5, 0x0

    :goto_d
    if-lt v5, v14, :cond_45

    .line 101
    invoke-virtual {v10}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->size()I

    move-result v9

    .line 102
    .local v9, orSearchCriCnt:I
    const/4 v5, 0x0

    :goto_14
    if-lt v5, v9, :cond_7e

    .line 108
    const/4 v15, 0x0

    :goto_17
    return v15

    .line 63
    .end local v9           #orSearchCriCnt:I
    .end local v10           #orSearchCriList:Lcom/samsung/upnp/media/server/object/SearchCriteriaList;
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->getSearchCriteria(I)Lcom/samsung/upnp/media/server/object/SearchCriteria;

    move-result-object v13

    .line 64
    .local v13, searchCri:Lcom/samsung/upnp/media/server/object/SearchCriteria;
    if-nez v13, :cond_23

    .line 62
    :goto_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 66
    :cond_23
    invoke-virtual {v13}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getProperty()Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, property:Ljava/lang/String;
    if-nez v11, :cond_2e

    .line 68
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setResult(Z)V

    goto :goto_20

    .line 71
    :cond_2e
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/samsung/upnp/media/server/object/SearchCapList;->getSearchCap(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/SearchCap;

    move-result-object v12

    .line 72
    .local v12, searchCap:Lcom/samsung/upnp/media/server/object/SearchCap;
    if-nez v12, :cond_3b

    .line 73
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setResult(Z)V

    goto :goto_20

    .line 76
    :cond_3b
    move-object/from16 v0, p1

    invoke-interface {v12, v13, v0}, Lcom/samsung/upnp/media/server/object/SearchCap;->compare(Lcom/samsung/upnp/media/server/object/SearchCriteria;Lcom/samsung/upnp/media/server/object/ContentNode;)Z

    move-result v1

    .line 77
    .local v1, cmpResult:Z
    invoke-virtual {v13, v1}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setResult(Z)V

    goto :goto_20

    .line 83
    .end local v1           #cmpResult:Z
    .end local v11           #property:Ljava/lang/String;
    .end local v12           #searchCap:Lcom/samsung/upnp/media/server/object/SearchCap;
    .end local v13           #searchCri:Lcom/samsung/upnp/media/server/object/SearchCriteria;
    .restart local v10       #orSearchCriList:Lcom/samsung/upnp/media/server/object/SearchCriteriaList;
    :cond_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->getSearchCriteria(I)Lcom/samsung/upnp/media/server/object/SearchCriteria;

    move-result-object v3

    .line 84
    .local v3, currSearchCri:Lcom/samsung/upnp/media/server/object/SearchCriteria;
    if-nez v3, :cond_50

    .line 82
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 86
    :cond_50
    add-int/lit8 v15, v14, -0x1

    if-ge v5, v15, :cond_75

    .line 87
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->isLogicalAND()Z

    move-result v15

    if-eqz v15, :cond_75

    .line 88
    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->getSearchCriteria(I)Lcom/samsung/upnp/media/server/object/SearchCriteria;

    move-result-object v7

    .line 89
    .local v7, nextSearchCri:Lcom/samsung/upnp/media/server/object/SearchCriteria;
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getResult()Z

    move-result v2

    .line 90
    .local v2, currResult:Z
    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getResult()Z

    move-result v6

    .line 91
    .local v6, nextResult:Z
    and-int v15, v2, v6

    if-eqz v15, :cond_73

    const/4 v4, 0x1

    .line 92
    .local v4, logicalAND:Z
    :goto_6f
    invoke-virtual {v7, v4}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->setResult(Z)V

    goto :goto_4d

    .line 91
    .end local v4           #logicalAND:Z
    :cond_73
    const/4 v4, 0x0

    goto :goto_6f

    .line 96
    .end local v2           #currResult:Z
    .end local v6           #nextResult:Z
    .end local v7           #nextSearchCri:Lcom/samsung/upnp/media/server/object/SearchCriteria;
    :cond_75
    new-instance v8, Lcom/samsung/upnp/media/server/object/SearchCriteria;

    invoke-direct {v8, v3}, Lcom/samsung/upnp/media/server/object/SearchCriteria;-><init>(Lcom/samsung/upnp/media/server/object/SearchCriteria;)V

    .line 97
    .local v8, orSearchCri:Lcom/samsung/upnp/media/server/object/SearchCriteria;
    invoke-virtual {v10, v8}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 103
    .end local v3           #currSearchCri:Lcom/samsung/upnp/media/server/object/SearchCriteria;
    .end local v8           #orSearchCri:Lcom/samsung/upnp/media/server/object/SearchCriteria;
    .restart local v9       #orSearchCriCnt:I
    :cond_7e
    invoke-virtual {v10, v5}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->getSearchCriteria(I)Lcom/samsung/upnp/media/server/object/SearchCriteria;

    move-result-object v13

    .line 104
    .restart local v13       #searchCri:Lcom/samsung/upnp/media/server/object/SearchCriteria;
    invoke-virtual {v13}, Lcom/samsung/upnp/media/server/object/SearchCriteria;->getResult()Z

    move-result v15

    if-eqz v15, :cond_8a

    .line 105
    const/4 v15, 0x1

    goto :goto_17

    .line 102
    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_14
.end method

.method public getSearchCriteria(I)Lcom/samsung/upnp/media/server/object/SearchCriteria;
    .registers 3
    .parameter "n"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/SearchCriteriaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/SearchCriteria;

    return-object v0
.end method
