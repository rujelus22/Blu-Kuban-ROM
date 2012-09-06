.class public Lcom/android/exchange/provider/MailboxUtilities;
.super Ljava/lang/Object;
.source "MailboxUtilities.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMailboxConsistency(Landroid/content/Context;J)V
    .registers 10
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 189
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 190
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_7

    .line 205
    :cond_6
    :goto_6
    return-void

    .line 191
    :cond_7
    iget v4, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_6

    .line 192
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has inconsistent mailbox data; fixing up..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "parentKey"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, accountSelector:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 199
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    invoke-static {p0, v1}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    invoke-static {p0, p1, p2}, Lcom/android/exchange/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    goto :goto_6
.end method

.method public static endMailboxChanges(Landroid/content/Context;J)V
    .registers 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/provider/MailboxUtilities;->setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V

    .line 178
    return-void
.end method

.method public static fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "accountSelector"

    .prologue
    const/4 v4, 0x0

    .line 127
    if-nez p1, :cond_9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 129
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(parentKey isnull OR parentKey=0) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, noParentKeySelection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    .local v6, parentCursor:Landroid/database/Cursor;
    if-nez v6, :cond_2c

    .line 149
    :goto_2b
    return-void

    .line 137
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 138
    invoke-static {p0, v6, p1}, Lcom/android/exchange/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_36

    goto :goto_2c

    .line 141
    :catchall_36
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 147
    const-string v1, "parentKey"

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private static setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V
    .registers 11
    .parameter "context"
    .parameter "accountId"
    .parameter "start"

    .prologue
    const/4 v6, 0x0

    .line 152
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 153
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_8

    .line 160
    :goto_7
    return-void

    .line 155
    :cond_8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v1, cv:Landroid/content/ContentValues;
    const-string v3, "flags"

    if-eqz p3, :cond_2c

    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v2, v2, 0x200

    :goto_15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7

    .line 156
    :cond_2c
    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v2, v2, -0x201

    goto :goto_15
.end method

.method public static setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 20
    .parameter "context"
    .parameter "parentCursor"
    .parameter "accountSelector"

    .prologue
    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 46
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .line 47
    .local v5, selectionArgs:[Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v16, parentValues:Landroid/content/ContentValues;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 50
    .local v12, parentId:J
    const/4 v11, 0x0

    .line 51
    .local v11, parentFlags:I
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 52
    .local v15, parentType:I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 54
    .local v14, parentServerId:Ljava/lang/String;
    const/16 v2, 0x40

    if-gt v15, v2, :cond_28

    .line 55
    or-int/lit8 v11, v11, 0x8

    .line 58
    :cond_28
    const/4 v2, 0x1

    if-eq v15, v2, :cond_33

    const/4 v2, 0x6

    if-eq v15, v2, :cond_33

    const/4 v2, 0x7

    if-eq v15, v2, :cond_33

    if-nez v15, :cond_35

    .line 60
    :cond_33
    or-int/lit8 v11, v11, 0x10

    .line 66
    :cond_35
    if-eqz v14, :cond_87

    .line 67
    const/4 v2, 0x0

    aput-object v14, v5, v2

    .line 68
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parentServerId=? AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 71
    .local v7, childCursor:Landroid/database/Cursor;
    if-nez v7, :cond_5b

    .line 95
    .end local v7           #childCursor:Landroid/database/Cursor;
    :goto_5a
    return-void

    .line 73
    .restart local v7       #childCursor:Landroid/database/Cursor;
    :cond_5b
    :goto_5b
    :try_start_5b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 74
    or-int/lit8 v11, v11, 0x3

    .line 75
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v10, childValues:Landroid/content/ContentValues;
    const-string v2, "parentKey"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 78
    .local v8, childId:J
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_5b .. :try_end_81} :catchall_82

    goto :goto_5b

    .line 82
    .end local v8           #childId:J
    .end local v10           #childValues:Landroid/content/ContentValues;
    :catchall_82
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 86
    .end local v7           #childCursor:Landroid/database/Cursor;
    :cond_87
    const-string v2, "parentKey"

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mailbox with null serverId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_bd
    const-string v2, "flags"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5a

    .line 82
    .restart local v7       #childCursor:Landroid/database/Cursor;
    :cond_d6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_bd
.end method

.method public static setFlagsAndChildrensParentKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "accountSelector"
    .parameter "serverId"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverId=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 108
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_29

    .line 116
    :goto_28
    return-void

    .line 110
    :cond_29
    :try_start_29
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 111
    invoke-static {p0, v6, p1}, Lcom/android/exchange/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_36

    .line 114
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_28

    :catchall_36
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static startMailboxChanges(Landroid/content/Context;J)V
    .registers 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/provider/MailboxUtilities;->setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V

    .line 169
    return-void
.end method
