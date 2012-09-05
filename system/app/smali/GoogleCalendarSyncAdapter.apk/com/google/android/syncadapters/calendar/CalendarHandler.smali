.class public Lcom/google/android/syncadapters/calendar/CalendarHandler;
.super Ljava/lang/Object;
.source "CalendarHandler.java"

# interfaces
.implements Lcom/google/android/syncadapters/EntryAndEntityHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static entryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;Landroid/content/ContentValues;)I
    .registers 15
    .parameter "account"
    .parameter "entry"
    .parameter "map"

    .prologue
    .line 257
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 259
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, title:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 261
    const-string v9, "name"

    invoke-virtual {p2, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_12
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEditUri()Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, version:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 267
    const-string v9, "cal_sync7"

    invoke-static {p0, v8}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_25
    const-string v9, "_sync_id"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getSelfUri()Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, selfUri:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 276
    const/4 v9, 0x2

    .line 360
    :goto_39
    return v9

    .line 278
    :cond_3a
    const-string v9, "cal_sync3"

    invoke-static {v5}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEditUri()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, editUri:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_56

    .line 282
    const-string v9, "cal_sync2"

    invoke-static {v3}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_56
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEventsUri()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, eventsUri:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 288
    const/4 v9, 0x2

    goto :goto_39

    .line 290
    :cond_62
    const-string v9, "cal_sync1"

    invoke-static {v4}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v9, "cal_sync8"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v9, "dirty"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result v9

    packed-switch v9, :pswitch_data_148

    .line 330
    const-string v9, "CalendarHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid Calendar access level: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v9, 0x2

    goto :goto_39

    .line 299
    :pswitch_a3
    const-string v9, "calendar_access_level"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    :goto_ad
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getColor()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, colorStr:Ljava/lang/String;
    if-nez v1, :cond_f1

    .line 336
    const/4 v9, 0x2

    goto :goto_39

    .line 304
    .end local v1           #colorStr:Ljava/lang/String;
    :pswitch_b5
    const-string v9, "calendar_access_level"

    const/16 v10, 0xc8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_ad

    .line 309
    :pswitch_c1
    const-string v9, "calendar_access_level"

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_ad

    .line 314
    :pswitch_cd
    const-string v9, "calendar_access_level"

    const/16 v10, 0x258

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_ad

    .line 319
    :pswitch_d9
    const-string v9, "calendar_access_level"

    const/16 v10, 0x2bc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_ad

    .line 324
    :pswitch_e5
    const-string v9, "calendar_access_level"

    const/16 v10, 0x320

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_ad

    .line 340
    .restart local v1       #colorStr:Ljava/lang/String;
    :cond_f1
    :try_start_f1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f1 .. :try_end_f4} :catch_10a

    move-result v0

    .line 342
    .local v0, color:I
    const/high16 v9, -0x100

    or-int/2addr v0, v9

    .line 346
    const-string v9, "calendar_color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTimezone()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, timezone:Ljava/lang/String;
    if-nez v6, :cond_10e

    .line 350
    const/4 v9, 0x2

    goto/16 :goto_39

    .line 343
    .end local v0           #color:I
    .end local v6           #timezone:Ljava/lang/String;
    :catch_10a
    move-exception v2

    .line 344
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v9, 0x2

    goto/16 :goto_39

    .line 352
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #color:I
    .restart local v6       #timezone:Ljava/lang/String;
    :cond_10e
    const-string v9, "calendar_timezone"

    invoke-virtual {p2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v10, "cal_sync4"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_144

    const/4 v9, 0x1

    :goto_11c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v10, "cal_sync5"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isHidden()Z

    move-result v9

    if-eqz v9, :cond_146

    const/4 v9, 0x1

    :goto_12c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v9, "account_name"

    iget-object v10, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v9, "account_type"

    iget-object v10, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v9, 0x0

    goto/16 :goto_39

    .line 354
    :cond_144
    const/4 v9, 0x0

    goto :goto_11c

    .line 355
    :cond_146
    const/4 v9, 0x0

    goto :goto_12c

    .line 297
    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_b5
        :pswitch_c1
        :pswitch_cd
        :pswitch_d9
        :pswitch_e5
    .end packed-switch
.end method


# virtual methods
.method public applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    .registers 29
    .parameter
    .parameter "account"
    .parameter "client"
    .parameter
    .parameter "entry"
    .parameter "entity"
    .parameter "clearDirtyFlag"
    .parameter "syncResult"
    .parameter "junk2"
    .parameter "junk3"
    .parameter "junk4"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            "Landroid/content/Entity;",
            "Z",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, junk1:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "CalendarHandler"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 183
    const-string v1, "CalendarHandler"

    const-string v2, "============= applyEntryToEntity ============="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v1, "CalendarHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calendarEntry is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v1, "CalendarHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entity is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_44
    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-nez v1, :cond_6e

    .line 189
    const-string v1, "CalendarHandler"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 190
    const-string v1, "CalendarHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got invalid entry from server: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    move-object/from16 v7, p5

    .line 194
    check-cast v7, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 196
    .local v7, calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    if-eqz v7, :cond_7a

    invoke-virtual {v7}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_ce

    :cond_7a
    const/4 v10, 0x1

    .line 197
    .local v10, isDelete:Z
    :goto_7b
    if-nez v10, :cond_d0

    if-nez p6, :cond_d0

    const/4 v11, 0x1

    .line 199
    .local v11, isInsert:Z
    :goto_80
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v3, calendarValuesServer:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 202
    .local v9, entryState:I
    if-nez v10, :cond_9a

    .line 203
    move-object/from16 v0, p2

    invoke-static {v0, v7, v3}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->entryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;Landroid/content/ContentValues;)I

    move-result v9

    .line 204
    if-eqz p7, :cond_9a

    .line 205
    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    :cond_9a
    if-nez v10, :cond_9f

    const/4 v1, 0x1

    if-ne v9, v1, :cond_d2

    .line 209
    :cond_9f
    if-eqz p6, :cond_6d

    .line 210
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 212
    .local v8, calendarId:Ljava/lang/Long;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 214
    .local v13, uri:Landroid/net/Uri;
    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 218
    move-object/from16 v0, p8

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v1, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v14, 0x1

    add-long/2addr v5, v14

    iput-wide v5, v1, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_6d

    .line 196
    .end local v3           #calendarValuesServer:Landroid/content/ContentValues;
    .end local v8           #calendarId:Ljava/lang/Long;
    .end local v9           #entryState:I
    .end local v10           #isDelete:Z
    .end local v11           #isInsert:Z
    .end local v13           #uri:Landroid/net/Uri;
    :cond_ce
    const/4 v10, 0x0

    goto :goto_7b

    .line 197
    .restart local v10       #isDelete:Z
    :cond_d0
    const/4 v11, 0x0

    goto :goto_80

    .line 220
    .restart local v3       #calendarValuesServer:Landroid/content/ContentValues;
    .restart local v9       #entryState:I
    .restart local v11       #isInsert:Z
    :cond_d2
    if-nez v9, :cond_145

    .line 221
    const-string v1, "CalendarHandler"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 222
    const-string v1, "CalendarHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got eventEntry from server: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_f5
    if-eqz v11, :cond_11f

    .line 227
    const-string v1, "cal_sync4"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 229
    .local v12, selectedOnServerInteger:Ljava/lang/Integer;
    const-string v1, "visible"

    invoke-virtual {v3, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 234
    move-object/from16 v0, p8

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v1, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v14, 0x1

    add-long/2addr v5, v14

    iput-wide v5, v1, Landroid/content/SyncStats;->numInserts:J

    goto/16 :goto_6d

    .line 236
    .end local v12           #selectedOnServerInteger:Ljava/lang/Integer;
    :cond_11f
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 238
    .local v4, calendarIdIfUpdate:Ljava/lang/Long;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 241
    move-object/from16 v0, p8

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v1, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v14, 0x1

    add-long/2addr v5, v14

    iput-wide v5, v1, Landroid/content/SyncStats;->numUpdates:J

    goto/16 :goto_6d

    .line 244
    .end local v4           #calendarIdIfUpdate:Ljava/lang/Long;
    :cond_145
    const-string v1, "CalendarHandler"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 245
    const-string v1, "CalendarHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got invalid Calendar Entry from server: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d
.end method

.method public convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;
    .registers 24
    .parameter "entity"
    .parameter "account"
    .parameter "client"
    .parameter "validate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v9, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    invoke-direct {v9}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;-><init>()V

    .line 121
    .local v9, entry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    .line 123
    .local v17, values:Landroid/content/ContentValues;
    const-string v18, "name"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setTitle(Ljava/lang/String;)V

    .line 125
    const-string v18, "cal_sync3"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 126
    .local v15, selfUri:Ljava/lang/String;
    invoke-virtual {v9, v15}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setId(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v9, v15}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelfUri(Ljava/lang/String;)V

    .line 130
    const-string v18, "cal_sync2"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, editUri:Ljava/lang/String;
    invoke-virtual {v9, v8}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setEditUri(Ljava/lang/String;)V

    .line 133
    const-string v18, "cal_sync1"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, eventsUri:Ljava/lang/String;
    invoke-virtual {v9, v10}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setEventsUri(Ljava/lang/String;)V

    .line 136
    const-string v18, "deleted"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 137
    .local v6, deletedInteger:Ljava/lang/Integer;
    if-eqz v6, :cond_b3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_b3

    const/4 v5, 0x1

    .line 138
    .local v5, deleted:Z
    :goto_41
    invoke-virtual {v9, v5}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setDeleted(Z)V

    .line 140
    const-string v18, "calendar_access_level"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 142
    .local v2, accessLevelInteger:Ljava/lang/Integer;
    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 145
    .local v1, accessLevel:I
    :goto_50
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->getCalendarEntryAccessLevelFromEntityAccessLevel(I)B

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 148
    const-string v18, "calendar_color"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 149
    .local v4, colorInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_6c

    .line 150
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->getCalendarHexColorFromInt(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, color:Ljava/lang/String;
    invoke-virtual {v9, v3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    .line 156
    .end local v3           #color:Ljava/lang/String;
    :cond_6c
    const-string v18, "cal_sync4"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 157
    .local v14, selectedInteger:Ljava/lang/Integer;
    if-eqz v14, :cond_b7

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_b7

    const/4 v13, 0x1

    .line 158
    .local v13, selected:Z
    :goto_7b
    invoke-virtual {v9, v13}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelected(Z)V

    .line 161
    const-string v18, "cal_sync5"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 162
    .local v12, hiddenInteger:Ljava/lang/Integer;
    if-eqz v12, :cond_b9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_b9

    const/4 v11, 0x1

    .line 163
    .local v11, hidden:Z
    :goto_8d
    invoke-virtual {v9, v11}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 165
    const-string v18, "calendar_timezone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 166
    .local v16, timezone:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    .line 168
    const-string v18, "calendar_displayName"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, displayName:Ljava/lang/String;
    if-eqz v7, :cond_b2

    invoke-virtual {v9}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTitle()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b2

    .line 170
    invoke-virtual {v9, v7}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setOverrideName(Ljava/lang/String;)V

    .line 173
    :cond_b2
    return-object v9

    .line 137
    .end local v1           #accessLevel:I
    .end local v2           #accessLevelInteger:Ljava/lang/Integer;
    .end local v4           #colorInteger:Ljava/lang/Integer;
    .end local v5           #deleted:Z
    .end local v7           #displayName:Ljava/lang/String;
    .end local v11           #hidden:Z
    .end local v12           #hiddenInteger:Ljava/lang/Integer;
    .end local v13           #selected:Z
    .end local v14           #selectedInteger:Ljava/lang/Integer;
    .end local v16           #timezone:Ljava/lang/String;
    :cond_b3
    const/4 v5, 0x0

    goto :goto_41

    .line 142
    .restart local v2       #accessLevelInteger:Ljava/lang/Integer;
    .restart local v5       #deleted:Z
    :cond_b5
    const/4 v1, 0x0

    goto :goto_50

    .line 157
    .restart local v1       #accessLevel:I
    .restart local v4       #colorInteger:Ljava/lang/Integer;
    .restart local v14       #selectedInteger:Ljava/lang/Integer;
    :cond_b7
    const/4 v13, 0x0

    goto :goto_7b

    .line 162
    .restart local v12       #hiddenInteger:Ljava/lang/Integer;
    .restart local v13       #selected:Z
    :cond_b9
    const/4 v11, 0x0

    goto :goto_8d
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string v0, "deleted"

    return-object v0
.end method

.method public getEntitySelection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    const-string v0, "dirty != 0 OR deleted != 0"

    return-object v0
.end method

.method public getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .registers 3
    .parameter "account"

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 74
    const-class v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    return-object v0
.end method

.method public getEtagColumnName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string v0, "cal_sync7"

    return-object v0
.end method

.method public getSourceIdColumnName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    const-string v0, "_sync_id"

    return-object v0
.end method

.method public idToSourceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "id"

    .prologue
    .line 70
    return-object p1
.end method

.method public newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    .registers 12
    .parameter "provider"
    .parameter "account"
    .parameter "id"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    sget-object v0, Landroid/provider/CalendarContract$CalendarEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, v2

    .line 113
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/CalendarContract$CalendarEntity;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method
