.class Lcom/android/calendar/AlertActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AlertActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    .line 153
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 10
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 191
    if-eqz p3, :cond_22

    move-object v1, p2

    .line 192
    check-cast v1, Ljava/lang/Long;

    .line 194
    .local v1, alarmTime:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 196
    iget-object v2, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 197
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v0, v3, v4}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 200
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #alarmTime:Ljava/lang/Long;
    :cond_22
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 161
    if-eqz p3, :cond_9

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_f

    .line 163
    :cond_9
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AlertActivity;->finish()V

    .line 187
    :cond_e
    :goto_e
    return-void

    .line 167
    :cond_f
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AlertActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_40

    .line 168
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    iput-object p3, v1, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    .line 169
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    #getter for: Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;
    invoke-static {v1}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/calendar/AlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 177
    iget-object v1, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "new_alert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "new_alert"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_e

    .line 185
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_40
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_e
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 205
    return-void
.end method
