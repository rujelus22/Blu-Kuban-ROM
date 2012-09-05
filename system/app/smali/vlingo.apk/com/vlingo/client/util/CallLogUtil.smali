.class public Lcom/vlingo/client/util/CallLogUtil;
.super Ljava/lang/Object;
.source "CallLogUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastNMissedCalls(Landroid/content/Context;I)Ljava/util/Vector;
    .registers 21
    .parameter "context"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/LoggedCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v7, 0x0

    .line 31
    .local v7, c:Landroid/database/Cursor;
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 32
    .local v14, missedCalls:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/LoggedCall;>;"
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "new"

    aput-object v2, v3, v1

    .line 38
    .local v3, projection:[Ljava/lang/String;
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = ? AND new = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    const/4 v6, 0x1

    const-string v18, "1"

    aput-object v18, v5, v6

    const-string v6, "date DESC "

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3b} :catch_83

    move-result-object v7

    .line 50
    invoke-static {v7}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 52
    const/4 v13, 0x0

    .line 53
    .local v13, index:I
    const-string v1, "name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 54
    .local v16, nameIdx:I
    const-string v1, "date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 55
    .local v9, dateIdx:I
    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 58
    .local v17, numberIdx:I
    :cond_5b
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 59
    .local v15, name:Ljava/lang/String;
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 61
    .local v10, dateMS:J
    invoke-static {v15}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 62
    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 66
    :cond_71
    invoke-static {v15, v10, v11}, Lcom/vlingo/client/util/LoggedCall;->newInstance(Ljava/lang/String;J)Lcom/vlingo/client/util/LoggedCall;

    move-result-object v8

    .line 67
    .local v8, call:Lcom/vlingo/client/util/LoggedCall;
    invoke-virtual {v14, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_82

    move/from16 v0, p1

    if-lt v13, v0, :cond_5b

    .line 71
    .end local v8           #call:Lcom/vlingo/client/util/LoggedCall;
    .end local v9           #dateIdx:I
    .end local v10           #dateMS:J
    .end local v13           #index:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #nameIdx:I
    .end local v17           #numberIdx:I
    :cond_82
    :goto_82
    return-object v14

    .line 44
    :catch_83
    move-exception v12

    .line 47
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82
.end method
