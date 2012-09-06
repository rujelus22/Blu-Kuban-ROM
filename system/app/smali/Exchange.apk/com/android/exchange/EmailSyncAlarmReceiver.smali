.class public Lcom/android/exchange/EmailSyncAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailSyncAlarmReceiver.java"


# instance fields
.field final MAILBOX_DATA_PROJECTION:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/EmailSyncAlarmReceiver;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/exchange/EmailSyncAlarmReceiver;->handleReceive(Landroid/content/Context;)V

    return-void
.end method

.method private handleReceive(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    .line 64
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v11, mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 69
    .local v12, messageCount:I
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getEasAccountSelector()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, selector:Ljava/lang/String;
    :try_start_e
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_29

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1
    :try_end_20
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_e .. :try_end_20} :catch_20

    .line 110
    .end local v6           #c:Landroid/database/Cursor;
    :catch_20
    move-exception v7

    .line 111
    .local v7, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    const-string v1, "EmailSyncAlarmReceiver"

    const-string v2, "EmailProvider unavailable; aborting alarm receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v7           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :cond_28
    return-void

    .line 78
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_29
    :goto_29
    :try_start_29
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 79
    add-int/lit8 v12, v12, 0x1

    .line 80
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 81
    .local v9, mailboxId:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 82
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_48

    goto :goto_29

    .line 86
    .end local v9           #mailboxId:J
    :catchall_48
    move-exception v1

    :try_start_49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    if-nez v6, :cond_62

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1
    :try_end_62
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_49 .. :try_end_62} :catch_20

    .line 95
    :cond_62
    :goto_62
    :try_start_62
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 96
    add-int/lit8 v12, v12, 0x1

    .line 97
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 98
    .restart local v9       #mailboxId:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 99
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_81

    goto :goto_62

    .line 103
    .end local v9           #mailboxId:J
    :catchall_81
    move-exception v1

    :try_start_82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 107
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_8d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 108
    .local v9, mailboxId:Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V
    :try_end_a1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_82 .. :try_end_a1} :catch_20

    goto :goto_8d
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/EmailSyncAlarmReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/exchange/EmailSyncAlarmReceiver$1;-><init>(Lcom/android/exchange/EmailSyncAlarmReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method
