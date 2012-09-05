.class public Lcom/android/calendar/TimezoneAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimezoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;,
        Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# static fields
.field private static sTimezones:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTimezone:Ljava/lang/String;

.field private mShowingAll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "currentTimezone"

    .prologue
    const/4 v1, 0x0

    .line 205
    const v0, 0x7f030031

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 192
    iput-boolean v1, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 206
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 208
    iput-boolean v1, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 210
    return-void
.end method

.method public static loadFromResources(Landroid/content/res/Resources;)V
    .registers 10
    .parameter "resources"

    .prologue
    .line 415
    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_64

    .line 416
    const v4, 0x7f070021

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, ids:[Ljava/lang/String;
    const v4, 0x7f070020

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, labels:[Ljava/lang/String;
    array-length v3, v1

    .line 420
    .local v3, length:I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    .line 422
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_48

    .line 423
    const-string v4, "TimezoneAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ids length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") and labels length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") should be equal but aren\'t."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_48
    array-length v4, v1

    if-lez v4, :cond_64

    array-length v4, v2

    if-lez v4, :cond_64

    .line 428
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4f
    if-ge v0, v3, :cond_64

    .line 429
    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    aget-object v5, v1, v0

    new-instance v6, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    aget-object v7, v1, v0

    aget-object v8, v2, v0

    invoke-direct {v6, v7, v8}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 433
    .end local v0           #i:I
    .end local v1           #ids:[Ljava/lang/String;
    .end local v2           #labels:[Ljava/lang/String;
    .end local v3           #length:I
    :cond_64
    return-void
.end method

.method public static reloadFromResources(Landroid/content/res/Resources;)V
    .registers 2
    .parameter "resource"

    .prologue
    .line 436
    sget-object v0, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_c

    .line 437
    sget-object v0, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 438
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    .line 440
    :cond_c
    invoke-static {p0}, Lcom/android/calendar/TimezoneAdapter;->loadFromResources(Landroid/content/res/Resources;)V

    .line 441
    return-void
.end method


# virtual methods
.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .registers 12

    .prologue
    .line 347
    const/4 v9, 0x2

    sget-object v10, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    const-class v10, Ljava/lang/CharSequence;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/CharSequence;

    .line 348
    .local v6, timeZones:[[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    .local v3, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    .local v8, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/TimezoneAdapter$TimezoneRow;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v7, timezoneSortedList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    const/4 v1, 0x0

    .line 361
    .local v1, i:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 362
    .local v5, row:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v4, map:Ljava/util/HashMap;
    const-string v9, "id"

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v9, "name"

    invoke-virtual {v5}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v9, "offset"

    iget v10, v5, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v1, v1, 0x1

    .line 368
    goto :goto_33

    .line 370
    .end local v4           #map:Ljava/util/HashMap;
    .end local v5           #row:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    :cond_67
    new-instance v0, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;

    const-string v9, "offset"

    invoke-direct {v0, v9}, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, comparator:Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;
    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 373
    const/4 v1, 0x0

    :goto_72
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_9f

    .line 374
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 375
    .restart local v4       #map:Ljava/util/HashMap;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v10, "id"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 376
    const/4 v9, 0x1

    aget-object v9, v6, v9

    const-string v10, "name"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 378
    .end local v4           #map:Ljava/util/HashMap;
    :cond_9f
    return-object v6
.end method

.method public getRowById(Ljava/lang/String;)I
    .registers 4
    .parameter "id"

    .prologue
    .line 220
    sget-object v1, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 221
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    if-nez v0, :cond_c

    .line 222
    const/4 v1, -0x1

    .line 224
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/calendar/TimezoneAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    goto :goto_b
.end method

.method public saveRecentTimezone(Ljava/lang/String;)V
    .registers 8
    .parameter "id"

    .prologue
    const/4 v5, 0x3

    .line 320
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_recent_timezones"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, recentsString:Ljava/lang/String;
    if-nez v2, :cond_20

    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v1, recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_30

    .line 331
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_15

    .line 326
    .end local v1           #recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1       #recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_15

    .line 333
    :cond_30
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/android/calendar/Utils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "preferences_recent_timezones"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 336
    return-void
.end method

.method public showAllTimezones()V
    .registers 5

    .prologue
    .line 289
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 290
    .local v2, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/TimezoneAdapter$TimezoneRow;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->clear()V

    .line 292
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 293
    .local v1, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    invoke-virtual {p0, v1}, Lcom/android/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_15

    .line 295
    .end local v1           #timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    :cond_25
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 296
    return-void
.end method

.method public showInitialTimezones()V
    .registers 16

    .prologue
    .line 240
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 243
    .local v4, ids:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v11, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 250
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v11, "preferences_recent_timezones"

    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, recentsString:Ljava/lang/String;
    if-eqz v10, :cond_37

    .line 252
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, recents:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2d
    if-ge v2, v5, :cond_37

    aget-object v8, v0, v2

    .line 254
    .local v8, recent:Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v8           #recent:Ljava/lang/String;
    .end local v9           #recents:[Ljava/lang/String;
    :cond_37
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->clear()V

    .line 260
    const-class v12, Lcom/android/calendar/TimezoneAdapter;

    monitor-enter v12

    .line 261
    :try_start_3d
    iget-object v11, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/android/calendar/TimezoneAdapter;->loadFromResources(Landroid/content/res/Resources;)V

    .line 262
    const-string v11, "GMT"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 263
    .local v1, gmt:Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 264
    .local v3, id:Ljava/lang/String;
    sget-object v11, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7c

    .line 266
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 273
    .local v6, newTz:Ljava/util/TimeZone;
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_50

    .line 274
    sget-object v11, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    new-instance v13, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .end local v6           #newTz:Ljava/util/TimeZone;
    :cond_7c
    sget-object v11, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_50

    .line 281
    .end local v1           #gmt:Ljava/util/TimeZone;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Ljava/lang/String;
    :catchall_86
    move-exception v11

    monitor-exit v12
    :try_end_88
    .catchall {:try_start_3d .. :try_end_88} :catchall_86

    throw v11

    .restart local v1       #gmt:Ljava/util/TimeZone;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_89
    :try_start_89
    monitor-exit v12
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_86

    .line 282
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 283
    return-void
.end method
