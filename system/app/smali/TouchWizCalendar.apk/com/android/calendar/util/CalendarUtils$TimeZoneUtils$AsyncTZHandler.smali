.class Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    .line 113
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 16
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    .line 118
    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 119
    const/4 v8, 0x0

    .line 122
    .local v8, writePrefs:Z
    if-nez p3, :cond_b

    .line 126
    :try_start_9
    monitor-exit v10

    .line 166
    .end local p2
    :goto_a
    return-void

    .line 130
    .restart local p2
    :cond_b
    const-string v11, "key"

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 131
    .local v3, keyColumn:I
    const-string v11, "value"

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 132
    .local v7, valueColumn:I
    :cond_17
    :goto_17
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_63

    .line 133
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, key:Ljava/lang/String;
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, value:Ljava/lang/String;
    const-string v11, "timezoneType"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 136
    const-string v11, "auto"

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_44

    const/4 v5, 0x1

    .line 138
    .local v5, useHomeTZ:Z
    :goto_36
    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$100()Z

    move-result v11

    if-eq v5, v11, :cond_17

    .line 139
    const/4 v8, 0x1

    .line 140
    invoke-static {v5}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    goto :goto_17

    .line 165
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyColumn:I
    .end local v5           #useHomeTZ:Z
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #valueColumn:I
    .end local p2
    :catchall_41
    move-exception v9

    monitor-exit v10
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_41

    throw v9

    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #keyColumn:I
    .restart local v6       #value:Ljava/lang/String;
    .restart local v7       #valueColumn:I
    .restart local p2
    :cond_44
    move v5, v9

    .line 136
    goto :goto_36

    .line 142
    :cond_46
    :try_start_46
    const-string v11, "timezoneInstancesPrevious"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 144
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 145
    const/4 v8, 0x1

    .line 146
    invoke-static {v6}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_17

    .line 150
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_63
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 151
    if-eqz v8, :cond_86

    .line 152
    check-cast p2, Landroid/content/Context;

    .end local p2
    iget-object v9, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;

    #getter for: Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$300(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p2, v9}, Lcom/android/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 154
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v9, "preferences_home_tz_enabled"

    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$100()Z

    move-result v11

    invoke-static {v4, v9, v11}, Lcom/android/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 155
    const-string v9, "preferences_home_tz"

    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v9, v11}, Lcom/android/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_86
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$402(Z)Z

    .line 159
    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_92
    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 160
    .local v0, callback:Ljava/lang/Runnable;
    if-eqz v0, :cond_92

    .line 161
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_92

    .line 164
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_a4
    invoke-static {}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 165
    monitor-exit v10
    :try_end_ac
    .catchall {:try_start_46 .. :try_end_ac} :catchall_41

    goto/16 :goto_a
.end method
