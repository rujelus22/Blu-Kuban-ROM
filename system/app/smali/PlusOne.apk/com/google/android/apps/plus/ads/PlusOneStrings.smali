.class public final Lcom/google/android/apps/plus/ads/PlusOneStrings;
.super Ljava/lang/Object;
.source "PlusOneStrings.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static buildAnnotation(Landroid/content/res/Resources;ZILjava/util/List;)Ljava/lang/String;
    .registers 15
    .parameter "resources"
    .parameter "setByViewer"
    .parameter "totalCount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_8

    .line 39
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 41
    :cond_8
    if-nez p3, :cond_1d8

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    move-object v2, p3

    .line 46
    .end local p3           #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v2, friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_f
    if-nez p2, :cond_22

    if-nez p1, :cond_22

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 48
    const v7, 0x7f070280

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object p3, v2

    .line 149
    .end local v2           #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3       #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_21
    return-object v0

    .line 52
    .end local p3           #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_1d5

    .line 53
    new-instance p3, Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-interface {v2, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {p3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .end local v2           #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3       #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_34
    if-eqz p1, :cond_114

    const/4 v7, 0x1

    :goto_37
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    add-int v4, v7, v8

    .line 59
    .local v4, namedCount:I
    if-ge p2, v4, :cond_9b

    .line 60
    const-string v8, "PlusOneActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Global count is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " but +1 has been "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_117

    const-string v7, "set by viewer"

    :goto_5a
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_11b

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11b

    const-string v7, " and "

    :goto_68
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+1\'d by "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " friend(s)"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_8f
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move p2, v4

    .line 70
    :cond_9b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    sub-int v8, p2, v7

    if-eqz p1, :cond_123

    const/4 v7, 0x1

    :goto_a4
    sub-int v5, v8, v7

    .line 71
    .local v5, otherCount:I
    const-string v7, "PlusOneActivity"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_f3

    .line 72
    const-string v7, "PlusOneActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>> Building annotation: setByViewer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", otherCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", totalCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", friendsCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", namedCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_f3
    const/4 v0, 0x0

    .line 84
    .local v0, annotation:Ljava/lang/String;
    if-eqz p1, :cond_12c

    .line 85
    if-nez v5, :cond_125

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_125

    .line 87
    const v7, 0x7f07027e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0x7f07027d

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 58
    .end local v0           #annotation:Ljava/lang/String;
    .end local v4           #namedCount:I
    .end local v5           #otherCount:I
    :cond_114
    const/4 v7, 0x0

    goto/16 :goto_37

    .line 60
    .restart local v4       #namedCount:I
    :cond_117
    const-string v7, ""

    goto/16 :goto_5a

    :cond_11b
    const-string v7, ""

    goto/16 :goto_68

    :cond_11f
    const-string v7, ""

    goto/16 :goto_8f

    .line 70
    :cond_123
    const/4 v7, 0x0

    goto :goto_a4

    .line 91
    .restart local v0       #annotation:Ljava/lang/String;
    .restart local v5       #otherCount:I
    :cond_125
    const v7, 0x7f07027d

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_12c
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12d
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_15c

    .line 97
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    .local v1, friendName:Ljava/lang/String;
    if-nez v0, :cond_13f

    .line 102
    move-object v0, v1

    .line 95
    :goto_13c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12d

    .line 103
    :cond_13f
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_191

    if-nez v5, :cond_191

    .line 105
    const/4 v7, 0x2

    if-ne v4, v7, :cond_180

    .line 107
    const v7, 0x7f07027f

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .end local v1           #friendName:Ljava/lang/String;
    :cond_15c
    :goto_15c
    if-lez v5, :cond_1b5

    .line 127
    const v7, 0x7f0e0022

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, otherPeopleCount:Ljava/lang/String;
    if-nez v0, :cond_1a2

    .line 131
    const v7, 0x7f07027e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    goto/16 :goto_21

    .line 111
    .end local v6           #otherPeopleCount:Ljava/lang/String;
    .restart local v1       #friendName:Ljava/lang/String;
    :cond_180
    const v7, 0x7f07027c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    goto :goto_15c

    .line 119
    :cond_191
    const v7, 0x7f07027b

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13c

    .line 135
    .end local v1           #friendName:Ljava/lang/String;
    .restart local v6       #otherPeopleCount:Ljava/lang/String;
    :cond_1a2
    const/4 v7, 0x1

    if-ne v4, v7, :cond_1c4

    .line 137
    const v7, 0x7f07027f

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .end local v6           #otherPeopleCount:Ljava/lang/String;
    :cond_1b5
    :goto_1b5
    const v7, 0x7f07027e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 141
    .restart local v6       #otherPeopleCount:Ljava/lang/String;
    :cond_1c4
    const v7, 0x7f07027c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b5

    .end local v0           #annotation:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #namedCount:I
    .end local v5           #otherCount:I
    .end local v6           #otherPeopleCount:Ljava/lang/String;
    .end local p3           #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d5
    move-object p3, v2

    .end local v2           #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3       #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_34

    :cond_1d8
    move-object v2, p3

    .end local p3           #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f
.end method
