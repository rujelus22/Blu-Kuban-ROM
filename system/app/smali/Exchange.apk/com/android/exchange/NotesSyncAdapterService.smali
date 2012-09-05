.class public Lcom/android/exchange/NotesSyncAdapterService;
.super Landroid/app/Service;
.source "NotesSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/NotesSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/NotesSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 23
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 105
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 109
    .local v8, accountCursorNotes:Landroid/database/Cursor;
    :try_start_5
    sget-object v2, Lcom/android/emailcommon/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "mailBoxId"

    aput-object v5, v3, v4

    const-string v4, "emailAddress=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 115
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    .line 116
    .local v13, nextMailbox:Z
    :cond_2b
    :goto_2b
    if-eqz v13, :cond_102

    .line 118
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 119
    .local v9, accountId:J
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 121
    .local v11, mailboxId:J
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 124
    .local v2, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 126
    .local v7, accountCursor:Landroid/database/Cursor;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->CONTROLED_SYNC_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_e8

    move-result-object v7

    .line 129
    :try_start_4b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 130
    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 132
    .local v14, syncInterval:J
    const-wide/16 v3, -0x1

    cmp-long v3, v14, v3

    if-nez v3, :cond_ad

    .line 133
    const-string v3, "force"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ad

    const-string v3, "ignore_settings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 136
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_96

    .line 137
    const-string v3, "NotesSyncAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is in manual mode, not performing notes sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_4b .. :try_end_96} :catchall_f5

    .line 151
    :cond_96
    if-eqz v7, :cond_a1

    :try_start_98
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_e8

    .line 159
    :cond_a1
    if-eqz v8, :cond_ac

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_ac

    .line 160
    .end local v2           #uri:Landroid/net/Uri;
    .end local v7           #accountCursor:Landroid/database/Cursor;
    .end local v9           #accountId:J
    .end local v11           #mailboxId:J
    .end local v14           #syncInterval:J
    :goto_a9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_ac
    return-void

    .line 144
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v7       #accountCursor:Landroid/database/Cursor;
    .restart local v9       #accountId:J
    .restart local v11       #mailboxId:J
    :cond_ad
    :try_start_ad
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_d3

    .line 145
    const-string v3, "Notes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotesSyncAdapterService -  Account ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MailboxId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_d3
    const/4 v3, 0x0

    invoke-static {v11, v12, v3}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V

    .line 149
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_da
    .catchall {:try_start_ad .. :try_end_da} :catchall_f5

    move-result v13

    .line 151
    if-eqz v7, :cond_2b

    :try_start_dd
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_e8

    goto/16 :goto_2b

    .line 159
    .end local v2           #uri:Landroid/net/Uri;
    .end local v7           #accountCursor:Landroid/database/Cursor;
    .end local v9           #accountId:J
    .end local v11           #mailboxId:J
    .end local v13           #nextMailbox:Z
    :catchall_e8
    move-exception v3

    if-eqz v8, :cond_f4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_f4

    .line 160
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_f4
    throw v3

    .line 151
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v7       #accountCursor:Landroid/database/Cursor;
    .restart local v9       #accountId:J
    .restart local v11       #mailboxId:J
    .restart local v13       #nextMailbox:Z
    :catchall_f5
    move-exception v3

    if-eqz v7, :cond_101

    :try_start_f8
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_101

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_101
    throw v3
    :try_end_102
    .catchall {:try_start_f8 .. :try_end_102} :catchall_e8

    .line 159
    .end local v2           #uri:Landroid/net/Uri;
    .end local v7           #accountCursor:Landroid/database/Cursor;
    .end local v9           #accountId:J
    .end local v11           #mailboxId:J
    :cond_102
    if-eqz v8, :cond_ac

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_ac

    goto :goto_a9
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 90
    sget-object v0, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    sget-object v1, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_6
    sget-object v0, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_15

    .line 83
    new-instance v0, Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/NotesSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    .line 85
    :cond_15
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method
