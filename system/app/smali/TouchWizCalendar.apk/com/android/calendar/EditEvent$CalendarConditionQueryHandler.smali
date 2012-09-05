.class Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarConditionQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    .line 2371
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2372
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 2376
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 2379
    if-eqz p3, :cond_6d

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6d

    .line 2380
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2381
    iget-object v0, p0, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2383
    .local v7, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 2385
    .local v6, e:Landroid/content/SharedPreferences$Editor;
    const-string v0, "preference_default_calendar_sync_account"

    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2387
    const-string v0, "preference_default_calendar_owner_account"

    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2389
    const-string v0, "preference_default_calendar_sync_account_type"

    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2392
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2393
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "_id=%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v10

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2395
    .local v3, where:Ljava/lang/String;
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2406
    .end local v6           #e:Landroid/content/SharedPreferences$Editor;
    .end local v7           #prefs:Landroid/content/SharedPreferences;
    :goto_53
    iget-object v8, p0, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v0, p0, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    #setter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v8, v0}, Lcom/android/calendar/EditEvent;->access$6402(Lcom/android/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2408
    iget-object v0, p0, Lcom/android/calendar/EditEvent$CalendarConditionQueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->setCalendarData(I)V
    invoke-static {v0, v10}, Lcom/android/calendar/EditEvent;->access$6600(Lcom/android/calendar/EditEvent;I)V

    .line 2410
    return-void

    .line 2397
    .end local v3           #where:Ljava/lang/String;
    :cond_6d
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "_id=%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v10

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_53
.end method
