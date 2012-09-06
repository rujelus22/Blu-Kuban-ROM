.class public final Lcom/google/android/apps/plus/util/PeopleUtils;
.super Ljava/lang/Object;
.source "PeopleUtils.java"


# direct methods
.method public static getGaiaIdsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Ljava/util/List;
    .registers 20
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, publicIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v13, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d1

    .line 123
    const-string v16, "contacts"

    .line 124
    .local v16, table:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "gaia_id"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "public_id"

    aput-object v4, v3, v2

    .line 129
    .local v3, projection:[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v15, selection:Ljava/lang/StringBuilder;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 132
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v2, "public_id"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, " IN ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/4 v10, 0x0

    .local v10, i:I
    :goto_34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_59

    .line 135
    const-string v2, " ?"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v10, v2, :cond_4c

    .line 137
    const-string v2, ", "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_4c
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v10

    .line 134
    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    .line 141
    :cond_59
    const-string v2, " )"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v14, resultsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 147
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "contacts"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 149
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_b9

    .line 151
    :try_start_7a
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 152
    :goto_8c
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_b6

    .line 153
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_ad

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 154
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_ad
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b0
    .catchall {:try_start_7a .. :try_end_b0} :catchall_b1

    goto :goto_8c

    .line 160
    :catchall_b1
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_b6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_b9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_bd
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 164
    .local v12, publicId:Ljava/lang/String;
    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 167
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #publicId:Ljava/lang/String;
    .end local v14           #resultsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #selection:Ljava/lang/StringBuilder;
    .end local v16           #table:Ljava/lang/String;
    :cond_d1
    return-object v13
.end method

.method public static in(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z
    .registers 7
    .parameter "set"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 75
    .local v2, user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 84
    .end local v2           #user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :goto_1f
    return v3

    .line 79
    :cond_20
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 80
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Circle;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_1f

    .line 84
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    :cond_3f
    const/4 v3, 0x1

    goto :goto_1f
.end method

.method public static in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Circle;)Z
    .registers 6
    .parameter
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, others:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 41
    .local v1, other:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    const/4 v2, 0x1

    .line 45
    .end local v1           #other:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public static in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z
    .registers 7
    .parameter
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, others:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    const/4 v2, 0x1

    .line 54
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 55
    .local v1, other:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 56
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    .end local v1           #other:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :goto_2b
    return v2

    .line 60
    .restart local v1       #other:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_2c
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 61
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2b

    .line 66
    .end local v1           #other:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_47
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public static isEmpty(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z
    .registers 2
    .parameter "audience"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static merge(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, audiences:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/wireless/tacotruck/proto/Data$Audience;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    .line 94
    .local v1, builder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 95
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addAllCircle(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 96
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addAllUser(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_8

    .line 98
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_23
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    return-object v3
.end method
