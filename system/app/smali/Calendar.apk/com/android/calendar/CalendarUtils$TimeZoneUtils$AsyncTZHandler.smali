.class Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarUtils$TimeZoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    .line 89
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 16
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 94
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 95
    if-nez p3, :cond_11

    .line 96
    const/4 v9, 0x0

    :try_start_8
    invoke-static {v9}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    .line 97
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$202(Z)Z

    .line 98
    monitor-exit v10

    .line 139
    .end local p2
    :goto_10
    return-void

    .line 101
    .restart local p2
    :cond_11
    const/4 v8, 0x0

    .line 103
    .local v8, writePrefs:Z
    const-string v9, "key"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 104
    .local v3, keyColumn:I
    const-string v9, "value"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 105
    .local v7, valueColumn:I
    :cond_1e
    :goto_1e
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 106
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, key:Ljava/lang/String;
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, value:Ljava/lang/String;
    const-string v9, "timezoneType"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 109
    const-string v9, "auto"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4b

    const/4 v5, 0x1

    .line 111
    .local v5, useHomeTZ:Z
    :goto_3d
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$300()Z

    move-result v9

    if-eq v5, v9, :cond_1e

    .line 112
    const/4 v8, 0x1

    .line 113
    invoke-static {v5}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$302(Z)Z

    goto :goto_1e

    .line 138
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyColumn:I
    .end local v5           #useHomeTZ:Z
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #valueColumn:I
    .end local v8           #writePrefs:Z
    .end local p2
    :catchall_48
    move-exception v9

    monitor-exit v10
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_48

    throw v9

    .line 109
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #keyColumn:I
    .restart local v6       #value:Ljava/lang/String;
    .restart local v7       #valueColumn:I
    .restart local v8       #writePrefs:Z
    .restart local p2
    :cond_4b
    const/4 v5, 0x0

    goto :goto_3d

    .line 115
    :cond_4d
    :try_start_4d
    const-string v9, "timezoneInstancesPrevious"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 117
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$400()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 118
    const/4 v8, 0x1

    .line 119
    invoke-static {v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$402(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e

    .line 123
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_6a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 124
    if-eqz v8, :cond_8d

    .line 125
    check-cast p2, Landroid/content/Context;

    .end local p2
    iget-object v9, p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    #getter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$500(Lcom/android/calendar/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p2, v9}, Lcom/android/calendar/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 127
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v9, "preferences_home_tz_enabled"

    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$300()Z

    move-result v11

    invoke-static {v4, v9, v11}, Lcom/android/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 128
    const-string v9, "preferences_home_tz"

    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$400()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v9, v11}, Lcom/android/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_8d
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    .line 132
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_99
    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 133
    .local v0, callback:Ljava/lang/Runnable;
    if-eqz v0, :cond_99

    .line 134
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_99

    .line 137
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_ab
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 138
    monitor-exit v10
    :try_end_b3
    .catchall {:try_start_4d .. :try_end_b3} :catchall_48

    goto/16 :goto_10
.end method
