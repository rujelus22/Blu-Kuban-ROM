.class Lcom/android/exchange/ExchangeService$CalendarObserver;
.super Landroid/database/ContentObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarObserver"
.end annotation


# instance fields
.field mAccountId:J

.field mAccountName:Ljava/lang/String;

.field mCalendarId:J

.field mSyncEvents:J

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 13
    .parameter
    .parameter "handler"
    .parameter "account"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2079
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/android/exchange/ExchangeService;

    .line 2080
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2081
    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountId:J

    .line 2082
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    .line 2086
    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/exchange/ExchangeService;->access$1400(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "sync_events"

    aput-object v3, v2, v8

    const-string v3, "account_name=? AND account_type=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string v5, "com.android.exchange"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2091
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4a

    .line 2094
    :try_start_33
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2095
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    .line 2096
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_4b

    .line 2099
    :cond_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2102
    :cond_4a
    return-void

    .line 2099
    :catchall_4b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 2107
    monitor-enter p0

    if-nez p1, :cond_12

    .line 2108
    :try_start_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/ExchangeService$CalendarObserver$1;

    invoke-direct {v1, p0}, Lcom/android/exchange/ExchangeService$CalendarObserver$1;-><init>(Lcom/android/exchange/ExchangeService$CalendarObserver;)V

    const-string v2, "Calendar Observer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 2189
    :cond_12
    monitor-exit p0

    return-void

    .line 2107
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
