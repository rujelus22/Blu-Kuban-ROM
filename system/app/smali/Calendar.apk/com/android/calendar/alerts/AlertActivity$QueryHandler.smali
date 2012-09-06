.class Lcom/android/calendar/alerts/AlertActivity$QueryHandler;
.super Lcom/android/calendar/AsyncQueryService;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    .line 120
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 121
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 10
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 141
    if-eqz p3, :cond_22

    move-object v1, p2

    .line 142
    check-cast v1, Ljava/lang/Long;

    .line 144
    .local v1, alarmTime:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 148
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/calendar/alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 150
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendar/alerts/AlertActivity;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 153
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #alarmTime:Ljava/lang/Long;
    :cond_22
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v0}, Lcom/android/calendar/alerts/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_39

    .line 127
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    #setter for: Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/calendar/alerts/AlertActivity;->access$002(Lcom/android/calendar/alerts/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 128
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    #getter for: Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$100(Lcom/android/calendar/alerts/AlertActivity;)Lcom/android/calendar/alerts/AlertAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/alerts/AlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 129
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    #getter for: Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$200(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 132
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    #getter for: Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$300(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    #getter for: Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$400(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    :goto_38
    return-void

    .line 135
    :cond_39
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_38
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 158
    return-void
.end method
