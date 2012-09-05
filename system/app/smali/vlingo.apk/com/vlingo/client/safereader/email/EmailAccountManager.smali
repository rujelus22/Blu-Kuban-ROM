.class public Lcom/vlingo/client/safereader/email/EmailAccountManager;
.super Ljava/lang/Object;
.source "EmailAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "vlingo_user_data.db"

.field private static final DATABASE_TABLE_NAME:Ljava/lang/String; = "email_accounts"

.field private static final DATABASE_VERSION:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static accountExists(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 15
    .parameter "emailAddress"
    .parameter "ctx"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 181
    new-instance v10, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;

    invoke-direct {v10, p1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;-><init>(Landroid/content/Context;)V

    .line 182
    .local v10, helper:Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;
    const/4 v8, 0x0

    .line 184
    .local v8, cur:Landroid/database/Cursor;
    :try_start_8
    invoke-virtual {v10}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 185
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "email_accounts"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "email_address=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "email_address DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 187
    if-eqz v8, :cond_48

    .line 188
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_52

    move-result v1

    if-lez v1, :cond_46

    move v9, v11

    .line 189
    .local v9, exists:Z
    :goto_3a
    if-eqz v9, :cond_48

    .line 194
    if-eqz v8, :cond_41

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_41
    invoke-virtual {v10}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    move v1, v11

    .end local v9           #exists:Z
    :goto_45
    return v1

    :cond_46
    move v9, v12

    .line 188
    goto :goto_3a

    .line 194
    :cond_48
    if-eqz v8, :cond_4d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_4d
    invoke-virtual {v10}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    move v1, v12

    goto :goto_45

    .line 194
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_52
    move-exception v1

    if-eqz v8, :cond_58

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_58
    invoke-virtual {v10}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    throw v1
.end method

.method public static deleteAccount(ILandroid/content/Context;)V
    .registers 7
    .parameter "accountId"
    .parameter "ctx"

    .prologue
    .line 170
    new-instance v1, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;

    invoke-direct {v1, p1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, helper:Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;
    :try_start_5
    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "email_accounts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setFeature(IZ)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2f

    .line 176
    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    .line 178
    return-void

    .line 176
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    throw v2
.end method

.method public static getAccount(ILandroid/content/Context;)Lcom/vlingo/client/safereader/email/EmailAccount;
    .registers 13
    .parameter "accountId"
    .parameter "ctx"

    .prologue
    const/4 v10, 0x0

    .line 152
    new-instance v9, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;

    invoke-direct {v9, p1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;-><init>(Landroid/content/Context;)V

    .line 153
    .local v9, helper:Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;
    const/4 v8, 0x0

    .line 155
    .local v8, cur:Landroid/database/Cursor;
    :try_start_7
    invoke-virtual {v9}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 156
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "email_accounts"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "email_address DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 157
    invoke-static {v8}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 158
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 159
    invoke-static {v8}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getAccountFromCursor(Landroid/database/Cursor;)Lcom/vlingo/client/safereader/email/EmailAccount;
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_4d

    move-result-object v1

    .line 163
    if-eqz v8, :cond_3f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_3f
    invoke-virtual {v9}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    .line 166
    :goto_42
    return-object v1

    .line 163
    :cond_43
    if-eqz v8, :cond_48

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_48
    invoke-virtual {v9}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    move-object v1, v10

    .line 166
    goto :goto_42

    .line 163
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4d
    move-exception v1

    if-eqz v8, :cond_53

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_53
    invoke-virtual {v9}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    throw v1
.end method

.method private static getAccountFromCursor(Landroid/database/Cursor;)Lcom/vlingo/client/safereader/email/EmailAccount;
    .registers 5
    .parameter "cur"

    .prologue
    .line 136
    new-instance v0, Lcom/vlingo/client/safereader/email/EmailAccount;

    invoke-direct {v0}, Lcom/vlingo/client/safereader/email/EmailAccount;-><init>()V

    .line 137
    .local v0, acc:Lcom/vlingo/client/safereader/email/EmailAccount;
    const/4 v1, 0x0

    .line 138
    .local v1, colId:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colId:I
    .local v2, colId:I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->id:I

    .line 139
    add-int/lit8 v1, v2, 0x1

    .end local v2           #colId:I
    .restart local v1       #colId:I
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->enabled:I

    .line 140
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colId:I
    .restart local v2       #colId:I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->accountType:I

    .line 141
    add-int/lit8 v1, v2, 0x1

    .end local v2           #colId:I
    .restart local v1       #colId:I
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    .line 142
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colId:I
    .restart local v2       #colId:I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    .line 143
    add-int/lit8 v1, v2, 0x1

    .end local v2           #colId:I
    .restart local v1       #colId:I
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    .line 144
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colId:I
    .restart local v2       #colId:I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    .line 145
    add-int/lit8 v1, v2, 0x1

    .end local v2           #colId:I
    .restart local v1       #colId:I
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    .line 146
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colId:I
    .restart local v2       #colId:I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    .line 147
    add-int/lit8 v1, v2, 0x1

    .end local v2           #colId:I
    .restart local v1       #colId:I
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    .line 148
    return-object v0
.end method

.method public static getEmailAccountForProvider(Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/safereader/email/EmailAccount;
    .registers 7
    .parameter "email"
    .parameter "password"
    .parameter "accountType"

    .prologue
    const/16 v3, 0x3e1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    new-instance v0, Lcom/vlingo/client/safereader/email/EmailAccount;

    invoke-direct {v0}, Lcom/vlingo/client/safereader/email/EmailAccount;-><init>()V

    .line 201
    .local v0, acc:Lcom/vlingo/client/safereader/email/EmailAccount;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 202
    iput p2, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->accountType:I

    .line 203
    packed-switch p2, :pswitch_data_6c

    .line 239
    :goto_12
    return-object v0

    .line 205
    :pswitch_13
    iput v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    .line 206
    iput v2, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    .line 207
    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    .line 208
    const-string v1, "imap.gmail.com"

    iput-object v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    .line 209
    iput-object p0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iput-object p0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    .line 210
    iput-object p1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    goto :goto_12

    .line 213
    :pswitch_24
    iput v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    .line 214
    iput v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    .line 215
    const/16 v1, 0x8f

    iput v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    .line 216
    const-string v1, "imap.aol.com"

    iput-object v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    .line 217
    iput-object p0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    .line 218
    const-string v1, "@aol.com"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@aim.com"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 219
    iput-object p0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    .line 220
    iput-object p1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    goto :goto_12

    .line 223
    :pswitch_47
    iput v2, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    .line 224
    iput v2, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    .line 225
    const/16 v1, 0x3e3

    iput v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    .line 226
    const-string v1, "pop3.live.com"

    iput-object v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    .line 227
    iput-object p0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iput-object p0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    .line 228
    iput-object p1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    goto :goto_12

    .line 231
    :pswitch_5a
    iput v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    .line 232
    iput v2, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    .line 233
    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    .line 234
    const-string v1, "imap-ssl.mail.yahoo.com"

    iput-object v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    .line 235
    iput-object p0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iput-object p0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    .line 236
    iput-object p1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    goto :goto_12

    .line 203
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_47
        :pswitch_5a
        :pswitch_24
    .end packed-switch
.end method

.method public static getEmailAccounts(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 13
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/safereader/email/EmailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v9, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/EmailAccount;>;"
    new-instance v11, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;

    invoke-direct {v11, p0}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;-><init>(Landroid/content/Context;)V

    .line 115
    .local v11, helper:Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;
    const/4 v10, 0x0

    .line 117
    .local v10, cur:Landroid/database/Cursor;
    :try_start_b
    invoke-virtual {v11}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 118
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "email_accounts"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "email_address DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 119
    invoke-static {v10}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 121
    :cond_28
    invoke-static {v10}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getAccountFromCursor(Landroid/database/Cursor;)Lcom/vlingo/client/safereader/email/EmailAccount;

    move-result-object v8

    .line 122
    .local v8, acc:Lcom/vlingo/client/safereader/email/EmailAccount;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_3e

    move-result v1

    if-nez v1, :cond_28

    .line 127
    .end local v8           #acc:Lcom/vlingo/client/safereader/email/EmailAccount;
    :cond_35
    if-eqz v10, :cond_3a

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_3a
    invoke-virtual {v11}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    .line 132
    return-object v9

    .line 127
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_3e
    move-exception v1

    if-eqz v10, :cond_44

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_44
    invoke-virtual {v11}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    throw v1
.end method

.method public static insert(Lcom/vlingo/client/safereader/email/EmailAccount;Landroid/content/Context;)V
    .registers 7
    .parameter "account"
    .parameter "ctx"

    .prologue
    .line 59
    new-instance v1, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;

    invoke-direct {v1, p1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, helper:Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;
    :try_start_5
    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0, p1, v0}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->insert(Lcom/vlingo/client/safereader/email/EmailAccount;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setFeature(IZ)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    .line 66
    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    .line 68
    return-void

    .line 66
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_19
    move-exception v2

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    throw v2
.end method

.method private static insert(Lcom/vlingo/client/safereader/email/EmailAccount;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "account"
    .parameter "ctx"
    .parameter "db"

    .prologue
    .line 71
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "enabled"

    iget v2, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->enabled:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v1, "account_type"

    iget v2, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->accountType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v1, "email_address"

    iget-object v2, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "username"

    iget-object v2, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "password"

    iget-object v2, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "server"

    iget-object v2, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "port"

    iget v2, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v1, "security_type"

    iget v2, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v1, "server_type"

    iget v2, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v1, "email_accounts"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 82
    return-void
.end method

.method public static setEnabled(IZLandroid/content/Context;)V
    .registers 9
    .parameter "accountId"
    .parameter "enabled"
    .parameter "ctx"

    .prologue
    const/4 v3, 0x1

    .line 98
    new-instance v1, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;

    invoke-direct {v1, p2}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, helper:Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;
    :try_start_6
    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "enabled"

    if-eqz p1, :cond_40

    :goto_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v3, "email_accounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setFeature(IZ)V
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_42

    .line 107
    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    .line 109
    return-void

    .line 102
    :cond_40
    const/4 v3, 0x0

    goto :goto_13

    .line 107
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_42
    move-exception v3

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager$DBHelper;->close()V

    throw v3
.end method
