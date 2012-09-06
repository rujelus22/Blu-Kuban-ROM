.class Lcom/google/android/apps/reader/content/ReaderActions;
.super Ljava/lang/Object;
.source "ReaderActions.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaderActions"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    return-void
.end method

.method public static addItemTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "db"
    .parameter "account"
    .parameter "itemId"
    .parameter "externalId"
    .parameter "tagId"

    .prologue
    .line 1125
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/reader/content/ReaderActions;->toggleItemTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static addSubscriptionTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "db"
    .parameter "account"
    .parameter "subscriptionId"
    .parameter "tagId"

    .prologue
    .line 368
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->toggleSubscriptionTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static appendToStringArray([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .registers 7
    .parameter "whereArgs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, args:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 951
    array-length v2, p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [Ljava/lang/String;

    .line 952
    .local v1, newArray:[Ljava/lang/String;
    array-length v2, p0

    invoke-static {p0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 953
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 954
    array-length v2, p0

    add-int/2addr v2, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 956
    :cond_23
    return-object v1
.end method

.method private static clearUnreadCounts(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 843
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 844
    const-string v1, "unread_count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unread_counts.account_name = ? AND ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 847
    const-string v2, "unread_counts.stream_id = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const-string v2, "unread_counts.stream_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string v2, "SELECT subscription_id FROM subscription_categories WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v2, "account_name = ? AND tag_id = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    const-string v2, "unread_counts.stream_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v2, "SELECT stream FROM friends WHERE account_name = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    const-string v2, ") AND ? LIKE \'user/%/state/com.google/broadcast-friends\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    .line 864
    const-string v3, "unread_counts"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    return-void
.end method

.method private static constructWhereClause(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    const/4 v2, 0x0

    :goto_1f
    if-ge v2, p2, :cond_2c

    .line 942
    if-eqz v2, :cond_26

    .line 943
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    :cond_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 947
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createNote(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Z)Z
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1181
    if-nez p0, :cond_a

    .line 1182
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "SQLiteDatabase is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1184
    :cond_a
    if-nez p1, :cond_14

    .line 1185
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Account is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1187
    :cond_14
    if-nez p2, :cond_1e

    .line 1188
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "User ID is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1190
    :cond_1e
    if-nez p10, :cond_28

    .line 1191
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Tag list is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1193
    :cond_28
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1197
    :try_start_2b
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1198
    const-string v3, "user/-/state/com.google/created"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    const-string v3, "user/-/state/com.google/self"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    move-object v0, v2

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1201
    invoke-static {v2, p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/util/List;Ljava/lang/String;)V

    .line 1202
    invoke-static {p0, p1, v2}, Lcom/google/android/apps/reader/content/ItemList;->invalidateByStreamIds(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;)I

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 1204
    invoke-static/range {v2 .. v12}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueItemEdit(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Z)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1206
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_69
    .catchall {:try_start_2b .. :try_end_69} :catchall_75

    .line 1207
    const/4 p1, 0x1

    .line 1212
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move p0, p1

    :goto_6e
    return p0

    .line 1209
    :cond_6f
    const/4 p1, 0x0

    .line 1212
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move p0, p1

    goto :goto_6e

    :catchall_75
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public static createTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "db"
    .parameter "account"
    .parameter "tagId"

    .prologue
    .line 1143
    if-nez p0, :cond_a

    .line 1144
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "SQLiteDatabase is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1146
    :cond_a
    if-nez p1, :cond_14

    .line 1147
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Account is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1149
    :cond_14
    if-nez p2, :cond_1e

    .line 1150
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Tag ID is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1153
    :cond_1e
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, label:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1155
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1156
    const-string v2, "account_name"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string v2, "id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string v2, "label"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v2, "sortid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v2, "tags"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_60

    const/4 v2, 0x1

    :goto_5f
    return v2

    :cond_60
    const/4 v2, 0x0

    goto :goto_5f
.end method

.method private static createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, parameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v1

    .line 77
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 78
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected UnsupportedEncodingException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static deleteItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 396
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 398
    :try_start_5
    const-string v0, "account_name = ? AND external_id = ?"

    .line 399
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 402
    const-string v2, "items"

    invoke-virtual {p0, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueItemDelete(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 404
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_2a

    .line 410
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v5

    :goto_24
    return v0

    :cond_25
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v4

    goto :goto_24

    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static deleteTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1164
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1167
    const-string v1, "tags"

    const-string v2, "account_name = ? AND id = ?"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1168
    const-string v1, "subscription_categories"

    const-string v2, "account_name = ? AND tag_id = ?"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1170
    const-string v1, "item_categories"

    const-string v2, "account_name = ? AND stream_id = ?"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1172
    const-string v1, "item_lists"

    const-string v2, "account_name = ? AND stream_id = ?"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1174
    const-string v1, "unread_counts"

    const-string v2, "account_name = ? AND stream_id = ?"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1176
    return-void
.end method

.method public static disableTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 6
    .parameter "db"
    .parameter "account"
    .parameter "tagId"

    .prologue
    .line 377
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID is not set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 382
    :try_start_22
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/content/ReaderActions;->deleteTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    .line 383
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/content/ItemList;->deleteByStreamId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    .line 384
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueDisableTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 385
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_3b

    .line 386
    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_35
    return v0

    .line 388
    :cond_36
    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_35

    :catchall_3b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static enqueueDisableTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "s"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->disableTag()Landroid/net/Uri;

    move-result-object v1

    .line 199
    invoke-static {v0}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 200
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method private static enqueueEditSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ac"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "s"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 179
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "a"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_29
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 182
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "r"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_39
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 185
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "t"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_49
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->editSubscription()Landroid/net/Uri;

    move-result-object v1

    .line 188
    invoke-static {v0}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 189
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method private static enqueueEditTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Ljava/lang/String;Z)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "i"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 139
    :cond_20
    if-eqz p4, :cond_39

    .line 140
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "a"

    invoke-direct {v0, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_2c
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->editTag()Landroid/net/Uri;

    move-result-object v0

    .line 145
    invoke-static {v1}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 146
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0

    .line 142
    :cond_39
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "r"

    invoke-direct {v0, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c
.end method

.method private static enqueueItemDelete(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "i"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->itemDelete()Landroid/net/Uri;

    move-result-object v1

    .line 211
    invoke-static {v0}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 212
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method private static enqueueItemEdit(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Z)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 100
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "title"

    invoke-direct {v0, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 103
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "url"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_25
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 106
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "srcUrl"

    invoke-direct {v0, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_35
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 109
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "srcTitle"

    invoke-direct {v0, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_45
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 112
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "annotation"

    invoke-direct {v0, v2, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_55
    if-eqz p9, :cond_72

    .line 115
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "tags"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 119
    :cond_72
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 120
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "snippet"

    invoke-direct {v0, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_82
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "share"

    if-eqz p8, :cond_ab

    const-string v3, "true"

    :goto_8a
    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "linkify"

    if-eqz p10, :cond_ae

    const-string v3, "true"

    :goto_98
    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->itemEdit()Landroid/net/Uri;

    move-result-object v0

    .line 126
    invoke-static {v1}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 127
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0

    .line 122
    :cond_ab
    const-string v3, "false"

    goto :goto_8a

    .line 123
    :cond_ae
    const-string v3, "false"

    goto :goto_98
.end method

.method private static enqueueMarkAllAsRead(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;J)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "s"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_32

    .line 160
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "999"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_32
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->markAllAsRead()Landroid/net/Uri;

    move-result-object v1

    .line 166
    invoke-static {v0}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 167
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method private static enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z
    .registers 9
    .parameter "db"
    .parameter "account"
    .parameter "uri"
    .parameter "data"

    .prologue
    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "account_name"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "url"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "data"

    invoke-static {p3}, Lcom/google/android/apps/reader/content/ReaderActions;->httpEntityToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    const-string v1, "pending_actions"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3a

    const/4 v1, 0x1

    :goto_39
    return v1

    :cond_3a
    const/4 v1, 0x0

    goto :goto_39
.end method

.method private static enqueueRenameSubscriptionAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "db"
    .parameter "account"
    .parameter "streamId"
    .parameter "title"

    .prologue
    .line 280
    const-string v2, "edit"

    .line 281
    .local v2, action:Ljava/lang/String;
    const/4 v4, 0x0

    .line 282
    .local v4, added:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, removed:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    .line 283
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueEditSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static enqueueRenameTagAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "s"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "dest"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->renameTag()Landroid/net/Uri;

    move-result-object v1

    .line 296
    invoke-static {v0}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 297
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method private static enqueueSubscribeAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "db"
    .parameter "account"
    .parameter "streamId"
    .parameter "title"

    .prologue
    .line 246
    const-string v2, "subscribe"

    .line 247
    .local v2, action:Ljava/lang/String;
    const/4 v4, 0x0

    .line 248
    .local v4, added:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, removed:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    .line 249
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueEditSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static enqueueSubscribeAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ac"

    const-string v3, "subscribe"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    array-length v1, p2

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_24

    aget-object v3, p2, v2

    .line 262
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "s"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 264
    :cond_24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 265
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "a"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_34
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->editSubscription()Landroid/net/Uri;

    move-result-object v1

    .line 268
    invoke-static {v0}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 269
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method private static enqueueSubscriptionTagEdit(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .parameter "db"
    .parameter "account"
    .parameter "streamId"
    .parameter "categoryId"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 315
    const-string v2, "edit"

    .line 316
    .local v2, action:Ljava/lang/String;
    if-eqz p4, :cond_12

    move-object v4, p3

    .line 317
    .local v4, added:Ljava/lang/String;
    :goto_6
    if-nez p4, :cond_14

    move-object v5, p3

    .line 318
    .local v5, removed:Ljava/lang/String;
    :goto_9
    const/4 v6, 0x0

    .local v6, title:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 319
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueEditSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .end local v4           #added:Ljava/lang/String;
    .end local v5           #removed:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_12
    move-object v4, v0

    .line 316
    goto :goto_6

    .restart local v4       #added:Ljava/lang/String;
    :cond_14
    move-object v5, v0

    .line 317
    goto :goto_9
.end method

.method private static enqueueUnsubscribeAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 10
    .parameter "db"
    .parameter "account"
    .parameter "streamId"

    .prologue
    .line 306
    const-string v2, "unsubscribe"

    .line 307
    .local v2, action:Ljava/lang/String;
    const/4 v4, 0x0

    .line 308
    .local v4, added:Ljava/lang/String;
    const/4 v5, 0x0

    .line 309
    .local v5, removed:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, title:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 310
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueEditSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)I
    .registers 13
    .parameter "db"
    .parameter "account"
    .parameter "streamId"

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 725
    if-nez p0, :cond_c

    .line 726
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SQLiteDatabase is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_c
    if-nez p1, :cond_16

    .line 729
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_16
    if-nez p2, :cond_20

    .line 732
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_20
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "unread_count"

    aput-object v0, v2, v1

    .line 737
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "account_name = ? AND stream_id = ? AND unread_count < max_unread_count"

    .line 738
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    aput-object p2, v4, v9

    .line 741
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 742
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 743
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .line 744
    .local v7, orderBy:Ljava/lang/String;
    const-string v1, "unread_counts"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 747
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_3b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 748
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_4f

    move-result v0

    .line 753
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_49
    return v0

    .line 750
    :cond_4a
    const/4 v0, -0x1

    .line 753
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_49

    :catchall_4f
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static httpEntityToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 4
    .parameter "data"

    .prologue
    .line 68
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 69
    :catch_5
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected IOException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static insertSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "db"
    .parameter "account"
    .parameter "streamId"
    .parameter "title"

    .prologue
    .line 220
    if-nez p3, :cond_3

    .line 223
    move-object p3, p2

    .line 227
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v0, v3

    .line 229
    .local v0, longId:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    const-string v3, "id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v3, "title"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "sortid"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 235
    const-string v3, "firstitemmsec"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 236
    const-string v3, "html_url"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 237
    const-string v3, "subscriptions"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_49

    const/4 v3, 0x1

    :goto_48
    return v3

    :cond_49
    const/4 v3, 0x0

    goto :goto_48
.end method

.method private static invalidateItemLists(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1067
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1068
    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1069
    const-string v1, "account_name = ?"

    .line 1070
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1073
    const-string v3, "item_lists"

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1074
    return-void
.end method

.method private static invalidateOverview(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1080
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1081
    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1082
    const-string v1, "account_name = ? AND url = ?"

    .line 1083
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->overview()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1086
    const-string v3, "timestamps"

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1087
    return-void
.end method

.method private static invalidateUnreadCounts(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)V
    .registers 8
    .parameter "db"
    .parameter "account"

    .prologue
    .line 1054
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1055
    .local v0, values:Landroid/content/ContentValues;
    const-string v3, "timestamp"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1056
    const-string v2, "account_name = ? AND url = ?"

    .line 1057
    .local v2, whereClause:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->unreadCount()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1060
    .local v1, whereArgs:[Ljava/lang/String;
    const-string v3, "timestamps"

    invoke-virtual {p0, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1061
    return-void
.end method

.method private static invalidateUnreadState(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)V
    .registers 2
    .parameter "db"
    .parameter "account"

    .prologue
    .line 1094
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/content/ReaderActions;->invalidateUnreadCounts(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)V

    .line 1095
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/content/ReaderActions;->invalidateItemLists(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)V

    .line 1096
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/content/ReaderActions;->invalidateOverview(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)V

    .line 1097
    return-void
.end method

.method public static markAllAsRead(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ItemList;)Z
    .registers 4
    .parameter "db"
    .parameter "items"

    .prologue
    .line 1361
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/reader/content/ReaderActions;->markAllAsRead(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ItemList;J)Z

    move-result v0

    return v0
.end method

.method public static markAllAsRead(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ItemList;J)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1365
    invoke-virtual {p1}, Lcom/google/android/apps/reader/content/ItemList;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 1366
    invoke-virtual {p1}, Lcom/google/android/apps/reader/content/ItemList;->getStreamId()Ljava/lang/String;

    move-result-object v1

    .line 1367
    if-nez v1, :cond_13

    .line 1368
    const-string p0, "ReaderActions"

    const-string p1, "Could not mark-all-as-read because stream ID is missing"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 p0, 0x0

    .line 1404
    :goto_12
    return p0

    .line 1371
    :cond_13
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1375
    const-wide/16 v2, -0x1

    :try_start_18
    invoke-virtual {p1, p0, v2, v3}, Lcom/google/android/apps/reader/content/ItemList;->getCrawlTimestamp(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v2

    .line 1376
    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5f

    const/4 p1, 0x1

    .line 1377
    :goto_23
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2d

    .line 1378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1380
    :cond_2d
    add-long/2addr v2, p2

    .line 1381
    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/reader/content/ReaderActions;->markItemsRead(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;J)V

    .line 1383
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_44

    .line 1385
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderActions;->getUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)I

    move-result v4

    .line 1387
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderActions;->clearUnreadCounts(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    .line 1388
    const/4 v5, -0x1

    if-eq v4, v5, :cond_44

    .line 1389
    invoke-static {p0, v0, v1, v4}, Lcom/google/android/apps/reader/content/ReaderActions;->subtractUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;I)V

    .line 1398
    :cond_44
    if-nez p1, :cond_4c

    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-eqz p1, :cond_61

    :cond_4c
    const/4 p1, 0x1

    .line 1399
    :goto_4d
    if-eqz p1, :cond_63

    move-wide p1, v2

    :goto_50
    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueMarkAllAsRead(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;J)Z

    .line 1400
    invoke-static {p0, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->invalidateUnreadState(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)V

    .line 1401
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_59
    .catchall {:try_start_18 .. :try_end_59} :catchall_66

    .line 1402
    const/4 p1, 0x1

    .line 1404
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move p0, p1

    goto :goto_12

    .line 1376
    :cond_5f
    const/4 p1, 0x0

    goto :goto_23

    .line 1398
    :cond_61
    const/4 p1, 0x0

    goto :goto_4d

    .line 1399
    :cond_63
    const-wide/16 p1, -0x1

    goto :goto_50

    .line 1404
    :catchall_66
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private static markItemsRead(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;J)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1347
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1348
    const-string v1, "read"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1349
    const-string v1, "locked"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1350
    const-string v1, "SELECT item_id FROM item_categories WHERE account_name = ? AND stream_id = ?"

    .line 1351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crawl_time <= ? AND id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1352
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 1355
    const-string v3, "items"

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1358
    return-void
.end method

.method public static removeItemTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "db"
    .parameter "account"
    .parameter "itemId"
    .parameter "externalId"
    .parameter "tagId"

    .prologue
    .line 1130
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/reader/content/ReaderActions;->toggleItemTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static removeSubscriptionTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "db"
    .parameter "account"
    .parameter "subscriptionId"
    .parameter "tagId"

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->toggleSubscriptionTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static renameSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 487
    if-nez p0, :cond_c

    .line 488
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SQLiteDatabase is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_c
    if-nez p1, :cond_16

    .line 491
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_16
    if-nez p2, :cond_20

    .line 494
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Subscription ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_20
    if-nez p3, :cond_2a

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Title is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_2a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 501
    :try_start_2d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 502
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "account_name = ? AND id = ?"

    .line 504
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 507
    const-string v3, "subscriptions"

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 508
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueRenameSubscriptionAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 509
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_52
    .catchall {:try_start_2d .. :try_end_52} :catchall_5c

    .line 515
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v6

    :goto_56
    return v0

    :cond_57
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v5

    goto :goto_56

    :catchall_5c
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static renameTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "db"
    .parameter "account"
    .parameter "from"
    .parameter "to"
    .parameter "label"

    .prologue
    .line 533
    if-nez p0, :cond_a

    .line 534
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SQLiteDatabase is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_a
    if-nez p1, :cond_14

    .line 537
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_14
    if-nez p2, :cond_1e

    .line 540
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_1e
    if-nez p3, :cond_28

    .line 543
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_28
    if-nez p4, :cond_32

    .line 546
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Label is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_32
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID is not set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_51
    invoke-static {p3}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID is not set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_70
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 556
    :try_start_73
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/reader/content/ReaderActions;->renameTagInTagsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->renameTagInUnreadCountsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->renameTagInSubscriptionCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->renameTagInItemCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueRenameTagAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 568
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_88
    .catchall {:try_start_73 .. :try_end_88} :catchall_92

    .line 569
    const/4 v0, 0x1

    .line 574
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_8c
    return v0

    .line 571
    :cond_8d
    const/4 v0, 0x0

    .line 574
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_8c

    :catchall_92
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static renameTagInItemCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 628
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 629
    const-string v1, "stream_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v1, "account_name = ? AND stream_id = ?"

    .line 631
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 632
    const-string v3, "item_categories"

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 635
    return-void
.end method

.method private static renameTagInSubscriptionCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 618
    const-string v1, "tag_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v1, "account_name = ? AND tag_id = ?"

    .line 620
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 621
    const-string v3, "subscription_categories"

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method private static renameTagInTagsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 580
    const-string v0, "tags"

    .line 581
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 582
    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "label"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v2, "account_name = ? AND id = ?"

    .line 590
    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p3, v3, v6

    .line 591
    invoke-virtual {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 593
    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    .line 594
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 595
    return-void
.end method

.method private static renameTagInUnreadCountsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 599
    const-string v0, "unread_counts"

    .line 600
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 601
    const-string v2, "stream_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v2, "account_name = ? AND stream_id = ?"

    .line 608
    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p3, v3, v6

    .line 609
    invoke-virtual {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 611
    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    .line 612
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method public static setPreference(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    if-nez p0, :cond_a

    .line 669
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SQLiteDatabase is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_a
    if-nez p1, :cond_14

    .line 672
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_14
    if-nez p2, :cond_1e

    .line 675
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_1e
    if-nez p3, :cond_28

    .line 678
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 684
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "k"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "v"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->setPreference()Landroid/net/Uri;

    move-result-object v1

    .line 687
    invoke-static {v0}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 688
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method public static setStreamPreference(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 693
    if-nez p0, :cond_a

    .line 694
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SQLiteDatabase is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_a
    if-nez p1, :cond_14

    .line 697
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_14
    if-nez p2, :cond_1e

    .line 700
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_1e
    if-nez p3, :cond_28

    .line 703
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_28
    if-nez p4, :cond_32

    .line 706
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "s"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "k"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "v"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->setStreamPreference()Landroid/net/Uri;

    move-result-object v1

    .line 716
    invoke-static {v0}, Lcom/google/android/apps/reader/content/ReaderActions;->createUrlEncodedFormEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 717
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueuePendingAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/net/Uri;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method private static setUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 824
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 825
    const-string v1, "unread_count"

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v1, "account_name = ? AND stream_id = ?"

    .line 827
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 830
    const-string v3, "unread_counts"

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 831
    return-void
.end method

.method public static subscribe(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "db"
    .parameter "account"
    .parameter "streamId"
    .parameter "title"

    .prologue
    .line 416
    if-nez p0, :cond_a

    .line 417
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SQLiteDatabase is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_a
    if-nez p1, :cond_14

    .line 420
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_14
    if-nez p2, :cond_1e

    .line 423
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 427
    :try_start_21
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->insertSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueSubscribeAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 429
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_3a

    .line 430
    const/4 v0, 0x1

    .line 435
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_34
    return v0

    .line 432
    :cond_35
    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_34

    :catchall_3a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static subscribe(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;[Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 441
    if-nez p0, :cond_c

    .line 442
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SQLiteDatabase is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_c
    if-nez p1, :cond_16

    .line 445
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_16
    if-nez p2, :cond_20

    .line 448
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContentValues array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_20
    if-eqz p3, :cond_30

    invoke-static {p3}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User ID missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_30
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 455
    :try_start_33
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 456
    if-eqz p3, :cond_3b

    .line 457
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->createTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    :cond_3b
    move v1, v5

    .line 459
    :goto_3c
    array-length v2, p2

    if-ge v1, v2, :cond_73

    .line 460
    aget-object v2, p2, v1

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 461
    aget-object v3, p2, v1

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    if-nez v2, :cond_5f

    .line 463
    const-string v0, "ReaderActions"

    const-string v1, "Stream ID was not specified"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_86

    .line 481
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v5

    :goto_5e
    return v0

    .line 466
    :cond_5f
    :try_start_5f
    invoke-static {p0, p1, v2, v3}, Lcom/google/android/apps/reader/content/ReaderActions;->insertSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 467
    if-eqz p3, :cond_6b

    .line 468
    const/4 v3, 0x1

    invoke-static {p0, p1, v2, p3, v3}, Lcom/google/android/apps/reader/content/ReaderActions;->updateSubscriptionCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_86

    .line 459
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 481
    :cond_6e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v5

    goto :goto_5e

    .line 474
    :cond_73
    :try_start_73
    invoke-static {p0, p1, v0, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueSubscribeAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 475
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_86

    .line 481
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v6

    goto :goto_5e

    :cond_81
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v5

    goto :goto_5e

    :catchall_86
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static subtractUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;I)V
    .registers 16
    .parameter "db"
    .parameter "account"
    .parameter "streamId"
    .parameter "amount"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 877
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 878
    .local v0, builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "unread_counts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 879
    const-string v1, "account_name = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v1, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 881
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 882
    const-string v1, "("

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 885
    const-string v1, "stream_id LIKE \'user/%/state/com.google/reading-list\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 887
    const-string v1, " OR "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 890
    const-string v1, "stream_id IN ("

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 892
    const-string v1, "SELECT tag_id FROM subscription_categories WHERE "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 893
    const-string v1, "account_name = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v1, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 895
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 896
    const-string v1, "subscription_id = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 897
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 899
    const-string v1, ")"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 901
    const-string v1, " OR "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 904
    const-string v1, "stream_id LIKE \'user/%/state/com.google/broadcast-friends\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 905
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 906
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 907
    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 911
    const-string v1, "SELECT stream FROM friends WHERE "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 912
    const-string v1, "account_name = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v1, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 915
    const-string v1, ")"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 917
    const-string v1, ")"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 918
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 919
    const-string v1, "unread_count < max_unread_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 921
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "unread_count"

    aput-object v1, v2, v4

    const-string v1, "stream_id"

    aput-object v1, v2, v5

    .local v2, projection:[Ljava/lang/String;
    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 924
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 926
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, position:I
    :goto_a0
    :try_start_a0
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 927
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 928
    .local v11, unreadCount:I
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 929
    .local v10, stream:Ljava/lang/String;
    sub-int/2addr v11, p3

    .line 930
    invoke-static {p0, p1, v10, v11}, Lcom/google/android/apps/reader/content/ReaderActions;->setUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;I)V
    :try_end_b4
    .catchall {:try_start_a0 .. :try_end_b4} :catchall_bb

    .line 926
    add-int/lit8 v9, v9, 0x1

    goto :goto_a0

    .line 933
    .end local v10           #stream:Ljava/lang/String;
    .end local v11           #unreadCount:I
    :cond_b7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 935
    return-void

    .line 933
    :catchall_bb
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static toggleItemTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1101
    invoke-static {p4}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID is not set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_1f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1106
    if-eqz p5, :cond_27

    .line 1107
    :try_start_24
    invoke-static {p0, p1, p4}, Lcom/google/android/apps/reader/content/ReaderActions;->createTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    .line 1113
    :cond_27
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0, p4, p5}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItemCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1114
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0, p4, p5}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueEditTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Ljava/lang/String;Z)Z

    .line 1115
    invoke-static {p0, p1, p4}, Lcom/google/android/apps/reader/content/ItemList;->invalidateByStreamId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)I

    .line 1116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_40

    .line 1117
    const/4 v0, 0x1

    .line 1119
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_40
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static toggleSubscriptionTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-static {p3}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID is not set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 349
    if-eqz p4, :cond_27

    .line 350
    :try_start_24
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/reader/content/ReaderActions;->createTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    .line 356
    :cond_27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/reader/content/ReaderActions;->updateSubscriptionCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 357
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueSubscriptionTagEdit(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 358
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/reader/content/ItemList;->invalidateByStreamId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_38

    .line 360
    const/4 v0, 0x1

    .line 362
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_38
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static unsubscribe(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 638
    if-nez p0, :cond_c

    .line 639
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SQLiteDatabase is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_c
    if-nez p1, :cond_16

    .line 642
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_16
    if-nez p2, :cond_20

    .line 645
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Subscription ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_20
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 649
    :try_start_23
    const-string v0, "account_name = ? AND id = ?"

    .line 650
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 654
    const-string v2, "subscriptions"

    invoke-virtual {p0, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 655
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueUnsubscribeAction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 656
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_48

    .line 662
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v5

    :goto_42
    return v0

    :cond_43
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v4

    goto :goto_42

    :catchall_48
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateItemCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Ljava/lang/String;Z)V
    .registers 14
    .parameter "db"
    .parameter "account"
    .parameter
    .parameter "categoryId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p2, itemIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1009
    :cond_6
    :goto_6
    return-void

    .line 990
    :cond_7
    if-eqz p4, :cond_36

    .line 991
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 992
    .local v1, itemId:Ljava/lang/Long;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 993
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "account_name"

    iget-object v7, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string v6, "item_id"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 995
    const-string v6, "stream_id"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v6, "item_categories"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_d

    .line 999
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #itemId:Ljava/lang/Long;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    .local v3, selection:Ljava/lang/StringBuilder;
    const-string v6, "account_name = ? AND stream_id = ? AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v6, "item_id = ?"

    const-string v7, "OR"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/google/android/apps/reader/content/ReaderActions;->constructWhereClause(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    aput-object p3, v2, v6

    .line 1006
    .local v2, nonVariableSelectionArgs:[Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/google/android/apps/reader/content/ReaderActions;->appendToStringArray([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    .line 1007
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v6, "item_categories"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/reader/content/ItemList;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1233
    const-string v0, "item_positions"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1237
    const-string v1, "item_positions"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1238
    const-string v1, ".account_name = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v1, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1240
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1241
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1242
    const-string v1, ".account_name = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1243
    iget-object v1, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1244
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1245
    const-string v1, "item_positions"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1246
    const-string v1, ".item_list_id = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1247
    invoke-virtual {p3}, Lcom/google/android/apps/reader/content/ItemList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1248
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1249
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1250
    const-string v1, "."

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1251
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1252
    const-string v1, " = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1253
    const-string v1, "item_positions"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1254
    const-string v1, ".item_id "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1255
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1256
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1257
    const-string v1, "."

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1258
    const-string v1, "read"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1259
    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1263
    const-string v3, "id"

    const-string v5, "items.id"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    const-string v3, "external_id"

    const-string v5, "items.external_id"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1267
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v1, v8

    const-string v3, "external_id"

    aput-object v3, v1, v6

    .line 1272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, p4

    move-object v3, p5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 1274
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    invoke-virtual {p0, v0, p5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1278
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    if-nez v0, :cond_d5

    move v0, v8

    .line 1298
    :goto_d4
    return v0

    .line 1286
    :cond_d5
    :try_start_d5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 1288
    :cond_db
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1289
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f2
    .catchall {:try_start_d5 .. :try_end_f2} :catchall_106

    move-result v1

    if-nez v1, :cond_db

    .line 1295
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    .line 1298
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;)Z

    move-result v0

    goto :goto_d4

    .line 1295
    :cond_101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_d4

    :catchall_106
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1317
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1319
    const/4 v8, 0x0

    .line 1320
    :try_start_4
    const-string v6, "read"

    const-string v7, "user/-/state/com.google/read"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v8, v0

    .line 1322
    const-string v6, "starred"

    const-string v7, "user/-/state/com.google/starred"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v8, v0

    .line 1324
    const-string v6, "liked"

    const-string v7, "user/-/state/com.google/like"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v8, v0

    .line 1326
    const-string v6, "shared"

    const-string v7, "user/-/state/com.google/broadcast"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v8

    .line 1328
    const-string v1, "read"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1329
    if-eqz v1, :cond_52

    .line 1332
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, p1, p3, v1}, Lcom/google/android/apps/reader/content/ReaderActions;->updateUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Z)V

    .line 1336
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/content/ReaderActions;->invalidateOverview(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)V

    .line 1338
    :cond_52
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_59

    .line 1341
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_59
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "db"
    .parameter "account"
    .parameter "userId"
    .parameter
    .parameter
    .parameter "values"
    .parameter "columnName"
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1033
    .local p3, itemIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, externalIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p5, p6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1034
    .local v0, value:Ljava/lang/Boolean;
    if-nez v0, :cond_8

    .line 1036
    const/4 v1, 0x0

    .line 1047
    :goto_7
    return v1

    .line 1038
    :cond_8
    invoke-static {p7, p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 1041
    invoke-static {p0, p1, p3, p6, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItemsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1042
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, p1, p3, p7, v1}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItemCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1045
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, p1, p4, p7, v1}, Lcom/google/android/apps/reader/content/ReaderActions;->enqueueEditTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Ljava/lang/String;Z)Z

    .line 1047
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private static updateItemsTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 964
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 979
    :goto_6
    return-void

    .line 968
    :cond_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 969
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    const-string v2, "account_name = ? AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    const-string v2, "id = ?"

    const-string v3, "OR"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderActions;->constructWhereClause(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 977
    invoke-static {v2, p2}, Lcom/google/android/apps/reader/content/ReaderActions;->appendToStringArray([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    .line 978
    const-string v3, "items"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6
.end method

.method private static updateSubscriptionCategoriesTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    if-eqz p4, :cond_1f

    .line 328
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 329
    const-string v1, "account_name"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "subscription_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v1, "tag_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "subscription_categories"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 340
    :goto_1e
    return-void

    .line 334
    :cond_1f
    const-string v0, "account_name = ? AND subscription_id = ? AND tag_id = ?"

    .line 335
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    .line 338
    const-string v2, "subscription_categories"

    invoke-virtual {p0, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private static updateUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 766
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 817
    :goto_9
    return-void

    .line 770
    :cond_a
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "stream_id"

    aput-object v0, v2, v8

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    const-string v1, "account_name = ? AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v1, "item_id = ?"

    const-string v3, "OR"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/google/android/apps/reader/content/ReaderActions;->constructWhereClause(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    new-array v1, v6, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v8

    .line 780
    invoke-static {v1, p2}, Lcom/google/android/apps/reader/content/ReaderActions;->appendToStringArray([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    .line 784
    const-string v1, "item_categories"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 786
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v8

    .line 789
    :goto_4b
    :try_start_4b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 790
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 791
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 792
    if-nez v0, :cond_6a

    .line 793
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 797
    :goto_63
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4b

    .line 795
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_63

    .line 800
    :cond_75
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7d
    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 801
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 802
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/reader/content/ReaderActions;->getUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)I

    move-result v4

    .line 803
    const/4 v5, -0x1

    if-eq v4, v5, :cond_7d

    .line 804
    if-eqz p3, :cond_ad

    .line 805
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v4, v0

    .line 809
    :goto_a4
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/reader/content/ReaderActions;->setUnreadCount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;I)V
    :try_end_a7
    .catchall {:try_start_4b .. :try_end_a7} :catchall_a8

    goto :goto_7d

    .line 815
    :catchall_a8
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 807
    :cond_ad
    :try_start_ad
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_a8

    move-result v0

    add-int/2addr v0, v4

    goto :goto_a4

    .line 815
    :cond_b9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9
.end method
