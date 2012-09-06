.class public Lcom/android/calendar/TimezoneAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimezoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .registers 6
    .parameter "context"
    .parameter "currentTimezone"

    .prologue
    const/4 v2, 0x0

    .line 195
    const v0, 0x1090009

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 184
    iput-boolean v2, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 196
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 198
    iput-boolean v2, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 200
    return-void
.end method

.method private loadFromResources(Landroid/content/res/Resources;)V
    .registers 11
    .parameter "resources"

    .prologue
    .line 350
    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_5e

    .line 351
    const v4, 0x7f070009

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, ids:[Ljava/lang/String;
    const v4, 0x7f070008

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, labels:[Ljava/lang/String;
    array-length v3, v1

    .line 355
    .local v3, length:I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    .line 357
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_48

    .line 358
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

    .line 361
    :cond_48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_49
    if-ge v0, v3, :cond_5e

    .line 362
    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    aget-object v5, v1, v0

    new-instance v6, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    aget-object v7, v1, v0

    aget-object v8, v2, v0

    invoke-direct {v6, v7, v8}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 365
    .end local v0           #i:I
    .end local v1           #ids:[Ljava/lang/String;
    .end local v2           #labels:[Ljava/lang/String;
    .end local v3           #length:I
    :cond_5e
    return-void
.end method


# virtual methods
.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .registers 10

    .prologue
    .line 338
    const/4 v7, 0x2

    sget-object v8, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    const-class v8, Ljava/lang/CharSequence;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/CharSequence;

    .line 339
    .local v5, timeZones:[[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    .local v3, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 341
    .local v6, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/TimezoneAdapter$TimezoneRow;>;"
    const/4 v0, 0x0

    .line 342
    .local v0, i:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 343
    .local v4, row:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    aput-object v7, v8, v0

    .line 344
    const/4 v7, 0x1

    aget-object v7, v5, v7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2e

    .line 346
    .end local v4           #row:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    :cond_52
    return-object v5
.end method

.method public getRowById(Ljava/lang/String;)I
    .registers 4
    .parameter "id"

    .prologue
    .line 210
    sget-object v1, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 211
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    if-nez v0, :cond_c

    .line 212
    const/4 v1, -0x1

    .line 214
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

    .line 311
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_recent_timezones"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, recentsString:Ljava/lang/String;
    if-nez v2, :cond_20

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v1, recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_30

    .line 322
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_15

    .line 317
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

    .line 324
    :cond_30
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/android/calendar/Utils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    const-string v4, "preferences_recent_timezones"

    invoke-static {v3, v4, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public setCurrentTimezone(Ljava/lang/String;)V
    .registers 3
    .parameter "currentTimezone"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 297
    iget-boolean v0, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    if-nez v0, :cond_9

    .line 298
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 300
    :cond_9
    return-void
.end method

.method public showAllTimezones()V
    .registers 5

    .prologue
    .line 280
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .local v2, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/TimezoneAdapter$TimezoneRow;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->clear()V

    .line 283
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

    .line 284
    .local v1, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    invoke-virtual {p0, v1}, Lcom/android/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_15

    .line 286
    .end local v1           #timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    :cond_25
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 287
    return-void
.end method

.method public showInitialTimezones()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 230
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 233
    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 234
    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_13
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    const-string v3, "preferences_recent_timezones"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_45

    .line 244
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 245
    array-length v4, v3

    move v0, v1

    :goto_35
    if-ge v0, v4, :cond_45

    aget-object v5, v3, v0

    .line 246
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 247
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 252
    :cond_45
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->clear()V

    .line 254
    const-class v3, Lcom/android/calendar/TimezoneAdapter;

    monitor-enter v3

    .line 255
    :try_start_4b
    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/TimezoneAdapter;->loadFromResources(Landroid/content/res/Resources;)V

    .line 256
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 257
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5e
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    sget-object v5, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    .line 260
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 264
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 265
    sget-object v6, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    new-instance v7, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v0, v5}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_8a
    sget-object v5, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_5e

    .line 272
    :catchall_94
    move-exception v0

    monitor-exit v3
    :try_end_96
    .catchall {:try_start_4b .. :try_end_96} :catchall_94

    throw v0

    :cond_97
    :try_start_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_94

    .line 273
    iput-boolean v1, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 274
    return-void
.end method
