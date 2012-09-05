.class public final Lcom/google/android/apps/plus/util/PeopleUtils;
.super Ljava/lang/Object;
.source "PeopleUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getApiaryAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 26
    .parameter "context"
    .parameter "account"
    .parameter "audience"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p3, circles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, special:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, people:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 124
    .local v9, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v19

    .line 125
    .local v19, type:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->MY_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_26

    .line 126
    const-string v2, "myCircles"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 127
    :cond_26
    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->EXTENDED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_34

    .line 128
    const-string v2, "extendedCircles"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 129
    :cond_34
    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->DOMAIN:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_42

    .line 130
    const-string v2, "domain"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 131
    :cond_42
    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_50

    .line 132
    const-string v2, "public"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 134
    :cond_50
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, circleId:Ljava/lang/String;
    const-string v2, "f."

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 136
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 138
    :cond_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 143
    .end local v9           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v10           #circleId:Ljava/lang/String;
    .end local v19           #type:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    :cond_6d
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v11, gaiaIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 145
    .local v14, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 146
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 148
    :cond_98
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 152
    .end local v14           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_a2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_142

    .line 153
    const-string v18, "contacts"

    .line 154
    .local v18, table:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "public_id"

    aput-object v4, v3, v2

    .line 158
    .local v3, projection:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v17, selection:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 161
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v2, "gaia_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v2, " IN ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/4 v12, 0x0

    .local v12, i:I
    :goto_cc
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_f7

    .line 164
    const-string v2, " ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_e8

    .line 166
    const-string v2, ", "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_e8
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v12

    .line 163
    add-int/lit8 v12, v12, 0x1

    goto :goto_cc

    .line 170
    :cond_f7
    const-string v2, " )"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 175
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "contacts"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 177
    .local v16, result:Landroid/database/Cursor;
    if-eqz v16, :cond_142

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_142

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_142

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_142

    .line 179
    :goto_127
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_13f

    .line 180
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 181
    .local v15, publicId:Ljava/lang/String;
    if-eqz v15, :cond_13b

    .line 182
    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_13b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_127

    .line 186
    .end local v15           #publicId:Ljava/lang/String;
    :cond_13f
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 189
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v16           #result:Landroid/database/Cursor;
    .end local v17           #selection:Ljava/lang/StringBuilder;
    .end local v18           #table:Ljava/lang/String;
    :cond_142
    return-void
.end method

.method public static getGaiaIdsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Ljava/util/List;
    .registers 21
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, publicIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v13, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e4

    .line 205
    const-string v16, "contacts"

    .line 206
    .local v16, table:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "gaia_id"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "public_id"

    aput-object v4, v3, v2

    .line 211
    .local v3, projection:[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v15, selection:Ljava/lang/StringBuilder;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 214
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v2, "public_id"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v2, " IN ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const/4 v10, 0x0

    .local v10, i:I
    :goto_34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_59

    .line 217
    const-string v2, " ?"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v10, v2, :cond_4c

    .line 219
    const-string v2, ", "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_4c
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v10

    .line 216
    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    .line 223
    :cond_59
    const-string v2, " )"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v14, resultsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 229
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "contacts"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 231
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_bd

    .line 233
    :try_start_7a
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_ba

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_ba

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 234
    :goto_8c
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 235
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_b1

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 236
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_b1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b4
    .catchall {:try_start_7a .. :try_end_b4} :catchall_b5

    goto :goto_8c

    .line 242
    :catchall_b5
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_ba
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_bd
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_c1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 246
    .local v12, publicId:Ljava/lang/String;
    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 247
    .local v17, value:Ljava/lang/Long;
    if-nez v17, :cond_df

    const-wide/16 v6, 0x0

    :goto_d7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    :cond_df
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_d7

    .line 250
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #publicId:Ljava/lang/String;
    .end local v14           #resultsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v15           #selection:Ljava/lang/StringBuilder;
    .end local v16           #table:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/Long;
    :cond_e4
    return-object v13
.end method

.method public static getPublicIdsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Ljava/util/List;
    .registers 21
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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, gaiaIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v13, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e1

    .line 265
    const-string v16, "contacts"

    .line 266
    .local v16, table:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "gaia_id"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "public_id"

    aput-object v4, v3, v2

    .line 271
    .local v3, projection:[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v15, selection:Ljava/lang/StringBuilder;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 274
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v2, "gaia_id"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v2, " IN ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const/4 v11, 0x0

    .local v11, i:I
    :goto_34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_5d

    .line 277
    const-string v2, " ?"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_4c

    .line 279
    const-string v2, ", "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_4c
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v11

    .line 276
    add-int/lit8 v11, v11, 0x1

    goto :goto_34

    .line 283
    :cond_5d
    const-string v2, " )"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v14, resultsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 289
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "contacts"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 291
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_c1

    .line 293
    :try_start_7e
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_be

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_be

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 294
    :goto_90
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_be

    .line 295
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_b5

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 296
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_b5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b8
    .catchall {:try_start_7e .. :try_end_b8} :catchall_b9

    goto :goto_90

    .line 302
    :catchall_b9
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_be
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_c1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_c5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 306
    .local v10, gaiaId:Ljava/lang/Long;
    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 307
    .local v17, value:Ljava/lang/String;
    if-nez v17, :cond_db

    const-string v17, ""

    .end local v17           #value:Ljava/lang/String;
    :cond_db
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    .line 310
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #gaiaId:Ljava/lang/Long;
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #resultsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v15           #selection:Ljava/lang/StringBuilder;
    .end local v16           #table:Ljava/lang/String;
    :cond_e1
    return-object v13
.end method

.method public static in(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z
    .registers 7
    .parameter "set"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 73
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

    .line 74
    .local v2, user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 83
    .end local v2           #user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :goto_1f
    return v3

    .line 78
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

    .line 79
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Circle;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_1f

    .line 83
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
    .registers 9
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

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 55
    .local v1, other:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 56
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 65
    .end local v1           #other:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :goto_29
    return v2

    .line 59
    .restart local v1       #other:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_2a
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_29

    .line 65
    .end local v1           #other:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_45
    const/4 v2, 0x0

    goto :goto_29
.end method

.method public static isEmpty(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z
    .registers 2
    .parameter "audience"

    .prologue
    .line 105
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
    .line 92
    .local p0, audiences:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/wireless/tacotruck/proto/Data$Audience;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    .line 93
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

    .line 94
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addAllCircle(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 95
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addAllUser(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_8

    .line 97
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_23
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    return-object v3
.end method
