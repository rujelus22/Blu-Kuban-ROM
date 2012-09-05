.class Lcom/android/exchange/ExchangeService$CalendarObserver$1;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$CalendarObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$CalendarObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 2110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v1, v1, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->access$1400(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sync_events"

    aput-object v5, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-wide v15, v15, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2115
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_2e

    .line 2186
    :goto_2d
    return-void

    .line 2120
    :cond_2e
    :try_start_2e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 2121
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2122
    .local v12, newSyncEvents:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-wide v1, v1, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J

    cmp-long v1, v12, v1

    if-eqz v1, :cond_6f

    .line 2123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_sync_events changed for calendar in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2124
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-wide v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountId:J

    const/16 v4, 0x41

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_6c
    .catchall {:try_start_2e .. :try_end_6c} :catchall_104

    move-result-object v11

    .line 2127
    .local v11, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v11, :cond_73

    .line 2184
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v12           #newSyncEvents:J
    :cond_6f
    :goto_6f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2d

    .line 2129
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v12       #newSyncEvents:J
    :cond_73
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-nez v1, :cond_109

    .line 2133
    :try_start_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting events and setting syncKey to 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2136
    iget-wide v1, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    .line 2138
    new-instance v14, Lcom/android/exchange/EasSyncService;

    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-direct {v14, v1, v11}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 2140
    .local v14, service:Lcom/android/exchange/EasSyncService;
    new-instance v7, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v7, v14}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_a6
    .catchall {:try_start_79 .. :try_end_a6} :catchall_104

    .line 2143
    .local v7, adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    :try_start_a6
    const-string v1, "0"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_104
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ac} :catch_11e

    .line 2149
    :goto_ac
    :try_start_ac
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2150
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "syncKey"

    const-string v2, "0"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v1, v1, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->access$1400(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2164
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-static {v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2167
    .local v10, eventsAsSyncAdapter:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v1, v1, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->access$1400(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "calendar_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-wide v5, v5, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v10, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2180
    .end local v7           #adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #eventsAsSyncAdapter:Landroid/net/Uri;
    .end local v14           #service:Lcom/android/exchange/EasSyncService;
    :goto_fc
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iput-wide v12, v1, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J
    :try_end_102
    .catchall {:try_start_ac .. :try_end_102} :catchall_104

    goto/16 :goto_6f

    .line 2184
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v12           #newSyncEvents:J
    :catchall_104
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2175
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v12       #newSyncEvents:J
    :cond_109
    :try_start_109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v1, v1, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-wide v2, v2, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountId:J

    #calls: Lcom/android/exchange/ExchangeService;->stopPing(J)V
    invoke-static {v1, v2, v3}, Lcom/android/exchange/ExchangeService;->access$1500(Lcom/android/exchange/ExchangeService;J)V

    .line 2176
    const-string v1, "calendar sync changed"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_11d
    .catchall {:try_start_109 .. :try_end_11d} :catchall_104

    goto :goto_fc

    .line 2144
    .restart local v7       #adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    .restart local v14       #service:Lcom/android/exchange/EasSyncService;
    :catch_11e
    move-exception v1

    goto :goto_ac
.end method
