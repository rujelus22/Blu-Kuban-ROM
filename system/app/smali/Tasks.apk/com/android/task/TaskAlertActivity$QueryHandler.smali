.class Lcom/android/task/TaskAlertActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TaskAlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskAlertActivity;


# direct methods
.method public constructor <init>(Lcom/android/task/TaskAlertActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    .line 118
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 13
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 147
    if-eqz p3, :cond_41

    move-object v1, p2

    .line 148
    check-cast v1, Ljava/lang/Long;

    .line 151
    .local v1, alarmTime:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_41

    .line 152
    iget-object v4, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Lcom/android/task/TaskAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 153
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.task.ACTION_REFERESH_ALARM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, in:Landroid/content/Intent;
    const-string v4, "content://tasks/tasks"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 155
    iget-object v4, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    const/high16 v5, 0x1000

    invoke-static {v4, v8, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 158
    .local v3, sender:Landroid/app/PendingIntent;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v8, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 161
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #alarmTime:Ljava/lang/Long;
    .end local v2           #in:Landroid/content/Intent;
    .end local v3           #sender:Landroid/app/PendingIntent;
    :cond_41
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    invoke-virtual {v1}, Lcom/android/task/TaskAlertActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_56

    .line 126
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    #setter for: Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/android/task/TaskAlertActivity;->access$002(Lcom/android/task/TaskAlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 127
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    #getter for: Lcom/android/task/TaskAlertActivity;->mAdapter:Lcom/android/task/TaskAlertAdapter;
    invoke-static {v1}, Lcom/android/task/TaskAlertActivity;->access$100(Lcom/android/task/TaskAlertActivity;)Lcom/android/task/TaskAlertAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/task/TaskAlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 130
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_43

    .line 131
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/task/TaskAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 132
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 133
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    #getter for: Lcom/android/task/TaskAlertActivity;->mSnoozeAllButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/task/TaskAlertActivity;->access$200(Lcom/android/task/TaskAlertActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    #getter for: Lcom/android/task/TaskAlertActivity;->mDismissAllButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/task/TaskAlertActivity;->access$300(Lcom/android/task/TaskAlertActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    invoke-virtual {v1}, Lcom/android/task/TaskAlertActivity;->finish()V

    .line 143
    .end local v0           #nm:Landroid/app/NotificationManager;
    :goto_42
    return-void

    .line 137
    :cond_43
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    #getter for: Lcom/android/task/TaskAlertActivity;->mSnoozeAllButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/task/TaskAlertActivity;->access$200(Lcom/android/task/TaskAlertActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$QueryHandler;->this$0:Lcom/android/task/TaskAlertActivity;

    #getter for: Lcom/android/task/TaskAlertActivity;->mDismissAllButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/task/TaskAlertActivity;->access$300(Lcom/android/task/TaskAlertActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_42

    .line 141
    :cond_56
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_42
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 166
    return-void
.end method
