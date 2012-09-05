.class public Lcom/android/exchange/NotesSyncAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotesSyncAlarmReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mMailboxId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "TaskSyncAlarmReceiver"

    sput-object v0, Lcom/android/exchange/NotesSyncAlarmReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/NotesSyncAlarmReceiver;->mMailboxId:J

    return-void
.end method


# virtual methods
.method public handleEvent()V
    .registers 15

    .prologue
    const/4 v0, 0x1

    const/4 v13, 0x0

    .line 26
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v8, mailBoxs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mailBoxId"

    aput-object v0, v2, v13

    .line 30
    .local v2, projection_acc:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 32
    .local v6, c_acc:Landroid/database/Cursor;
    :try_start_e
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncNeeded=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v11, 0x4

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 36
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 37
    .local v10, next:Z
    :goto_2d
    if-eqz v10, :cond_b6

    .line 38
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_7a

    move-result v10

    goto :goto_2d

    .line 51
    .end local v10           #next:Z
    .local v7, i$:Ljava/util/Iterator;
    :cond_40
    sget-object v1, Lcom/android/exchange/NotesSyncAlarmReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Notes Changed/Deleted/Updated messages: , mailboxes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    throw v0

    .line 51
    .restart local v10       #next:Z
    :cond_5d
    sget-object v0, Lcom/android/exchange/NotesSyncAlarmReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Notes Changed/Deleted/Updated messages: , mailboxes: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 42
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #next:Z
    :catchall_7a
    move-exception v0

    if-eqz v6, :cond_86

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_86

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_86
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_8a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 48
    .local v9, mailboxId:Ljava/lang/Long;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goign to notifify Notes mailboxes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v13}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V

    goto :goto_8a

    .line 42
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #mailboxId:Ljava/lang/Long;
    .restart local v10       #next:Z
    :cond_b6
    if-eqz v6, :cond_c1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_c1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_c5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 48
    .restart local v9       #mailboxId:Ljava/lang/Long;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goign to notifify Notes mailboxes "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v13}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V

    goto :goto_c5
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    sget-object v0, Lcom/android/exchange/NotesSyncAlarmReceiver;->TAG:Ljava/lang/String;

    const-string v1, "NotesSyncAlarmReciever::onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/android/exchange/NotesSyncAlarmReceiver;->handleEvent()V

    .line 23
    return-void
.end method
