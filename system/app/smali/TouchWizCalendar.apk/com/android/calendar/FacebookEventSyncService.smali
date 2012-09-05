.class public Lcom/android/calendar/FacebookEventSyncService;
.super Landroid/app/Service;
.source "FacebookEventSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;
    }
.end annotation


# instance fields
.field private mPhotoUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mServiceHandler:Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/FacebookEventSyncService;->mPhotoUrls:Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method private downloadPhoto()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/calendar/FacebookEventSyncService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 326
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v12, p0, Lcom/android/calendar/FacebookEventSyncService;->mPhotoUrls:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 327
    .local v3, eventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 328
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_e
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 330
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 331
    .local v2, eventId:Ljava/lang/Long;
    new-instance v10, Ljava/net/URL;

    iget-object v12, p0, Lcom/android/calendar/FacebookEventSyncService;->mPhotoUrls:Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 332
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 334
    .local v0, conn:Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    .line 335
    .local v7, length:I
    if-lez v7, :cond_e

    .line 339
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 341
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 343
    .local v5, is:Ljava/io/InputStream;
    if-eqz v5, :cond_e

    .line 344
    new-array v9, v7, [B

    .line 345
    .local v9, receivedData:[B
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 346
    .local v8, read:I
    if-ne v8, v7, :cond_e

    .line 350
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, "event_id"

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    const-string v12, "photo"

    invoke-virtual {v11, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 355
    :try_start_51
    sget-object v12, Lcom/android/calendar/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    invoke-virtual {v1, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_51 .. :try_end_56} :catch_5a

    .line 360
    :goto_56
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_e

    .line 356
    :catch_5a
    move-exception v4

    .line 357
    .local v4, ex:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_56

    .line 363
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v2           #eventId:Ljava/lang/Long;
    .end local v4           #ex:Landroid/database/sqlite/SQLiteFullException;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #length:I
    .end local v8           #read:I
    .end local v9           #receivedData:[B
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_5f
    return-void
.end method


# virtual methods
.method public createFacebookCalendar()J
    .registers 22

    .prologue
    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/FacebookEventSyncService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 260
    .local v2, cr:Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 261
    .local v16, calendarUri:Landroid/net/Uri;
    const-wide/16 v14, -0x1

    .line 262
    .local v14, calendarId:J
    const/4 v9, 0x0

    .line 263
    .local v9, accountName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 265
    .local v10, accountType:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v11

    .line 266
    .local v11, accounts:[Landroid/accounts/Account;
    move-object v12, v11

    .local v12, arr$:[Landroid/accounts/Account;
    array-length v0, v12

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_18
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_32

    aget-object v8, v12, v18

    .line 267
    .local v8, account:Landroid/accounts/Account;
    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v3, :cond_41

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 268
    iget-object v9, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 269
    iget-object v10, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 274
    .end local v8           #account:Landroid/accounts/Account;
    :cond_32
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 275
    :cond_3e
    const-wide/16 v3, -0x1

    .line 320
    :goto_40
    return-wide v3

    .line 266
    .restart local v8       #account:Landroid/accounts/Account;
    :cond_41
    add-int/lit8 v18, v18, 0x1

    goto :goto_18

    .line 279
    .end local v8           #account:Landroid/accounts/Account;
    :cond_44
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "account_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name=\'Facebook\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 283
    .local v13, calendarCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_97

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_f5

    .line 284
    :cond_97
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v20, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v3, "account_type"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v3, "name"

    const-string v4, "Facebook"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v3, "calendar_displayName"

    const-string v4, "Facebook"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v3, "visible"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v3, "sync_events"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    :try_start_d4
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_db
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d4 .. :try_end_db} :catch_f0

    move-result-object v16

    .line 305
    :goto_dc
    if-eqz v16, :cond_e2

    .line 306
    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 313
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_e2
    :goto_e2
    if-eqz v13, :cond_e7

    .line 314
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_e7
    const-wide/16 v3, -0x1

    cmp-long v3, v14, v3

    if-nez v3, :cond_ed

    :cond_ed
    move-wide v3, v14

    .line 320
    goto/16 :goto_40

    .line 301
    .restart local v20       #values:Landroid/content/ContentValues;
    :catch_f0
    move-exception v17

    .line 302
    .local v17, ex:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_dc

    .line 309
    .end local v17           #ex:Landroid/database/sqlite/SQLiteFullException;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_f5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 310
    const-string v3, "_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v14, v3

    goto :goto_e2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FacebookEventSyncService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 82
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/FacebookEventSyncService;->mServiceLooper:Landroid/os/Looper;

    .line 85
    new-instance v1, Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;

    iget-object v2, p0, Lcom/android/calendar/FacebookEventSyncService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;-><init>(Lcom/android/calendar/FacebookEventSyncService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/calendar/FacebookEventSyncService;->mServiceHandler:Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;

    .line 86
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 90
    if-eqz p1, :cond_10

    .line 91
    iget-object v1, p0, Lcom/android/calendar/FacebookEventSyncService;->mServiceHandler:Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 95
    iget-object v1, p0, Lcom/android/calendar/FacebookEventSyncService;->mServiceHandler:Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    .end local v0           #msg:Landroid/os/Message;
    :cond_10
    const/4 v1, 0x3

    return v1
.end method

.method public syncEventsPartial()V
    .registers 24

    .prologue
    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/FacebookEventSyncService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 181
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/calendar/Utils;->SNS_EVENT_COUNT_URI:Landroid/net/Uri;

    .line 182
    .local v3, fbEventCountUri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 184
    .local v13, countCursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 185
    .local v12, count:I
    if-eqz v13, :cond_22

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_22

    .line 186
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 187
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 190
    :cond_22
    if-eqz v13, :cond_27

    .line 191
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_27
    if-nez v12, :cond_2a

    .line 256
    :cond_29
    :goto_29
    return-void

    .line 198
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/FacebookEventSyncService;->createFacebookCalendar()J

    move-result-wide v6

    long-to-int v11, v6

    .line 199
    .local v11, calendarId:I
    const/4 v4, -0x1

    if-eq v11, v4, :cond_29

    .line 203
    sget-object v4, Lcom/android/calendar/Utils;->CONTACT_EVENTS_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calendar_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4c
    div-int/lit8 v4, v12, 0x64

    add-int/lit8 v4, v4, 0x1

    if-ge v15, v4, :cond_1a9

    .line 206
    const-string v4, "content://com.sec.android.app.provider.sns/event/from/%d/to/%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    mul-int/lit8 v8, v15, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 208
    .local v5, fbEventUri:Landroid/net/Uri;
    sget-object v6, Lcom/android/calendar/Utils;->SNS_EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 209
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_19b

    .line 210
    :cond_7d
    :goto_7d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_18b

    .line 211
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v22, values:Landroid/content/ContentValues;
    const-string v4, "calendar_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v4, "eventTimezone"

    const-string v6, "UTC"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v4, "title"

    const-string v6, "title"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v4, "allDay"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v4, "dtstart"

    const-string v6, "start_time"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    const-string v4, "dtend"

    const-string v6, "end_time"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    const-string v4, "description"

    const-string v6, "content"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v4, "eventLocation"

    const-string v6, "place"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v4, "facebook_schedule_id"

    const-string v6, "event_id"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-string v4, "facebook_service_provider"

    const-string v6, "service_provider"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v4, "facebook_owner"

    const-string v6, "owner"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v4, "post_time"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 228
    .local v19, postTime:J
    const-string v4, "facebook_post_time"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    const-string v4, "photo_url"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 231
    .local v18, photoUrl:Ljava/lang/String;
    const-string v4, "facebook_photo_url"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 234
    .local v21, uri:Landroid/net/Uri;
    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 236
    .local v16, id:J
    if-eqz v18, :cond_7d

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7d

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/FacebookEventSyncService;->mPhotoUrls:Ljava/util/HashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7d

    .line 241
    .end local v16           #id:J
    .end local v18           #photoUrl:Ljava/lang/String;
    .end local v19           #postTime:J
    .end local v21           #uri:Landroid/net/Uri;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_18b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/FacebookEventSyncService;->mPhotoUrls:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_19b

    .line 245
    :try_start_198
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/FacebookEventSyncService;->downloadPhoto()V
    :try_end_19b
    .catch Ljava/net/MalformedURLException; {:try_start_198 .. :try_end_19b} :catch_19f
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_1a4

    .line 205
    :cond_19b
    :goto_19b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4c

    .line 246
    :catch_19f
    move-exception v14

    .line 247
    .local v14, e:Ljava/net/MalformedURLException;
    invoke-virtual {v14}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_19b

    .line 248
    .end local v14           #e:Ljava/net/MalformedURLException;
    :catch_1a4
    move-exception v14

    .line 249
    .local v14, e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19b

    .line 255
    .end local v5           #fbEventUri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v14           #e:Ljava/io/IOException;
    :cond_1a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/FacebookEventSyncService;->stopSelf()V

    goto/16 :goto_29
.end method
