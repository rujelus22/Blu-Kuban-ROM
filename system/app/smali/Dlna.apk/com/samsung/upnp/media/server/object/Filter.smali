.class public Lcom/samsung/upnp/media/server/object/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field private duplicateFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/upnp/media/server/object/Filter;->duplicateFlag:Z

    .line 17
    return-void
.end method

.method private buildResList(Lcom/samsung/upnp/media/server/object/ContentNode;Ljava/util/List;)Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    .registers 11
    .parameter "originalNode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/upnp/media/server/object/ContentNode;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/upnp/media/server/object/ContentPropertyList;"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, filterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-direct {v2}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;-><init>()V

    .line 144
    .local v2, list:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_e

    .line 167
    :cond_d
    return-object v2

    .line 147
    :cond_e
    const-string v5, "protocol"

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v5, "protocolInfo"

    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 150
    const/4 v5, 0x0

    const-string v6, "protocolInfo"

    invoke-interface {p2, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 152
    :cond_21
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->isItemNode()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 154
    const-string v5, "res"

    invoke-virtual {p1, v5}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperties(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_31
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/upnp/media/server/object/ContentProperty;

    .line 155
    .local v4, prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    instance-of v6, v4, Lcom/samsung/upnp/media/server/object/item/IHiddenProperty;

    if-nez v6, :cond_31

    .line 157
    new-instance v0, Lcom/samsung/upnp/media/server/object/ContentProperty;

    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/samsung/upnp/media/server/object/ContentProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v0, clone:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getNAttributes()I

    move-result v3

    .line 159
    .local v3, nAttr:I
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_54
    if-gez v1, :cond_5a

    .line 164
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 160
    :cond_5a
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/samsung/upnp/media/server/object/Filter;->containsFilterName(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 161
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/upnp/media/server/object/ContentProperty;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 159
    :cond_6f
    add-int/lit8 v1, v1, -0x1

    goto :goto_54
.end method

.method private containsFilterName(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, filterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 138
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 134
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, filter:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private getResFilterToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "filter"

    .prologue
    .line 172
    const-string v2, "res@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 173
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, s:Ljava/util/StringTokenizer;
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .end local v1           #s:Ljava/util/StringTokenizer;
    :goto_18
    return-object v0

    :cond_19
    move-object v0, p1

    goto :goto_18
.end method

.method private isResFilter(Ljava/lang/String;)Z
    .registers 3
    .parameter "filter"

    .prologue
    .line 128
    const-string v0, "res"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "res@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 129
    :cond_10
    const/4 v0, 0x1

    .line 130
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public getContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;
    .registers 26
    .parameter "contentNode"
    .parameter "filter"

    .prologue
    .line 34
    const/4 v10, 0x0

    .line 37
    .local v10, newContentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->isContaierNode()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 38
    new-instance v10, Lcom/samsung/upnp/media/server/object/container/ContainerNode;

    .end local v10           #newContentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    invoke-direct {v10}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;-><init>()V

    .line 43
    .restart local v10       #newContentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    :cond_c
    :goto_c
    if-nez v10, :cond_1c

    .line 44
    const/4 v10, 0x0

    .line 123
    .end local v10           #newContentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    :cond_f
    :goto_f
    return-object v10

    .line 39
    .restart local v10       #newContentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->isItemNode()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 40
    new-instance v10, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    .end local v10           #newContentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    invoke-direct {v10}, Lcom/samsung/upnp/media/server/object/item/ItemNode;-><init>()V

    .restart local v10       #newContentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    goto :goto_c

    .line 48
    :cond_1c
    :try_start_1c
    const-string v20, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v9

    .line 49
    .local v9, idAttr:Lcom/samsung/xml/Attribute;
    const-string v20, "parentID"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v11

    .line 50
    .local v11, parentIDAttr:Lcom/samsung/xml/Attribute;
    const-string v20, "restricted"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v15

    .line 51
    .local v15, restrictedAttr:Lcom/samsung/xml/Attribute;
    const-string v20, "dc:title"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v19

    .line 52
    .local v19, titlePro:Lcom/samsung/upnp/media/server/object/ContentProperty;
    const-string v20, "upnp:class"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v4

    .line 54
    .local v4, classPro:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v10}, Lcom/samsung/upnp/media/server/object/ContentNode;->removeAllAttribute()V

    .line 55
    invoke-virtual {v10}, Lcom/samsung/upnp/media/server/object/ContentNode;->removeAllProperty()V

    .line 56
    invoke-virtual {v10, v9}, Lcom/samsung/upnp/media/server/object/ContentNode;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 57
    invoke-virtual {v10, v11}, Lcom/samsung/upnp/media/server/object/ContentNode;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 58
    invoke-virtual {v10, v15}, Lcom/samsung/upnp/media/server/object/ContentNode;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 59
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    .line 60
    invoke-virtual {v10, v4}, Lcom/samsung/upnp/media/server/object/ContentNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    .line 63
    new-instance v17, Ljava/util/StringTokenizer;

    const-string v20, ","

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v17, st:Ljava/util/StringTokenizer;
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 66
    .local v6, filterList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    :goto_77
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-nez v20, :cond_c9

    .line 71
    const-string v16, ""

    .line 72
    .local v16, selectedFilter:Ljava/lang/String;
    const-string v7, ""

    .line 74
    .local v7, firstStringOfSF:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v13, resAttrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_87
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v8, v0, :cond_d3

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/samsung/upnp/media/server/object/Filter;->buildResList(Lcom/samsung/upnp/media/server/object/ContentNode;Ljava/util/List;)Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    move-result-object v14

    .line 112
    .local v14, resList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    invoke-virtual {v14}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_9b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/upnp/media/server/object/ContentProperty;

    .line 113
    .local v12, prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v12}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "res"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16e

    instance-of v0, v12, Lcom/samsung/upnp/media/server/object/ResourceProperty;

    move/from16 v21, v0

    if-eqz v21, :cond_16e

    .line 114
    check-cast v12, Lcom/samsung/upnp/media/server/object/ResourceProperty;

    .end local v12           #prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v10, v12}, Lcom/samsung/upnp/media/server/object/ContentNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_be} :catch_bf

    goto :goto_9b

    .line 120
    .end local v4           #classPro:Lcom/samsung/upnp/media/server/object/ContentProperty;
    .end local v6           #filterList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    .end local v7           #firstStringOfSF:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #idAttr:Lcom/samsung/xml/Attribute;
    .end local v11           #parentIDAttr:Lcom/samsung/xml/Attribute;
    .end local v13           #resAttrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #resList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    .end local v15           #restrictedAttr:Lcom/samsung/xml/Attribute;
    .end local v16           #selectedFilter:Ljava/lang/String;
    .end local v17           #st:Ljava/util/StringTokenizer;
    .end local v19           #titlePro:Lcom/samsung/upnp/media/server/object/ContentProperty;
    :catch_bf
    move-exception v5

    .line 121
    .local v5, e:Ljava/lang/Exception;
    const-string v20, "Filter "

    const-string v21, "error"

    invoke-static/range {v20 .. v21}, Lcom/samsung/api/Debugs;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 67
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #classPro:Lcom/samsung/upnp/media/server/object/ContentProperty;
    .restart local v6       #filterList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    .restart local v9       #idAttr:Lcom/samsung/xml/Attribute;
    .restart local v11       #parentIDAttr:Lcom/samsung/xml/Attribute;
    .restart local v15       #restrictedAttr:Lcom/samsung/xml/Attribute;
    .restart local v17       #st:Ljava/util/StringTokenizer;
    .restart local v19       #titlePro:Lcom/samsung/upnp/media/server/object/ContentProperty;
    :cond_c9
    :try_start_c9
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 68
    .local v18, temp:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 77
    .end local v18           #temp:Ljava/lang/String;
    .restart local v7       #firstStringOfSF:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v13       #resAttrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #selectedFilter:Ljava/lang/String;
    :cond_d3
    invoke-virtual {v6, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #selectedFilter:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 78
    .restart local v16       #selectedFilter:Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 79
    const-string v20, "@"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_130

    .line 80
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 81
    const-string v20, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12c

    .line 82
    const-string v20, "parentID"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12c

    .line 83
    const-string v20, "restricted"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12c

    .line 85
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v3

    .line 86
    .local v3, attr:Lcom/samsung/xml/Attribute;
    if-eqz v3, :cond_12c

    .line 89
    invoke-virtual {v10, v3}, Lcom/samsung/upnp/media/server/object/ContentNode;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 76
    .end local v3           #attr:Lcom/samsung/xml/Attribute;
    :cond_12c
    :goto_12c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_87

    .line 93
    :cond_130
    const-string v20, "upnp:class"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12c

    .line 94
    const-string v20, "dc:title"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12c

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/upnp/media/server/object/Filter;->isResFilter(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_160

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/upnp/media/server/object/Filter;->getResFilterToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12c

    .line 99
    :cond_160
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v12

    .line 100
    .restart local v12       #prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    if-eqz v12, :cond_12c

    .line 104
    invoke-virtual {v10, v12}, Lcom/samsung/upnp/media/server/object/ContentNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    goto :goto_12c

    .line 116
    .restart local v14       #resList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    :cond_16e
    invoke-virtual {v10, v12}, Lcom/samsung/upnp/media/server/object/ContentNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_171} :catch_bf

    goto/16 :goto_9b
.end method
