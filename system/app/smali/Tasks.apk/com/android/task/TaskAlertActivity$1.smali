.class Lcom/android/task/TaskAlertActivity$1;
.super Ljava/lang/Object;
.source "TaskAlertActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskAlertActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/task/TaskAlertActivity$1;->this$0:Lcom/android/task/TaskAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 185
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$1;->this$0:Lcom/android/task/TaskAlertActivity;

    .line 186
    invoke-virtual {v1, p2}, Lcom/android/task/TaskAlertActivity;->getItemForView(Landroid/view/View;)Landroid/database/Cursor;

    move-result-object v2

    .line 188
    if-nez v2, :cond_a

    .line 207
    :goto_9
    return-void

    .line 191
    :cond_a
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    .line 193
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity$1;->this$0:Lcom/android/task/TaskAlertActivity;

    const-string v5, "notification"

    invoke-virtual {v0, v5}, Lcom/android/task/TaskAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 194
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 197
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity$1;->this$0:Lcom/android/task/TaskAlertActivity;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    #calls: Lcom/android/task/TaskAlertActivity;->dismissAlarm(J)V
    invoke-static {v0, v5, v6}, Lcom/android/task/TaskAlertActivity;->access$400(Lcom/android/task/TaskAlertActivity;J)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/task/TaskAlertActivity$1;->this$0:Lcom/android/task/TaskAlertActivity;

    const-class v6, Lcom/android/task/TaskViewActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    iget-object v5, p0, Lcom/android/task/TaskAlertActivity$1;->this$0:Lcom/android/task/TaskAlertActivity;

    iget-object v6, p0, Lcom/android/task/TaskAlertActivity$1;->this$0:Lcom/android/task/TaskAlertActivity;

    #calls: Lcom/android/task/TaskAlertActivity;->getSortedTaskIds(Landroid/database/Cursor;)[I
    invoke-static {v6, v2}, Lcom/android/task/TaskAlertActivity;->access$600(Lcom/android/task/TaskAlertActivity;Landroid/database/Cursor;)[I

    move-result-object v2

    #setter for: Lcom/android/task/TaskAlertActivity;->mSortedIds:[I
    invoke-static {v5, v2}, Lcom/android/task/TaskAlertActivity;->access$502(Lcom/android/task/TaskAlertActivity;[I)[I

    .line 201
    const-string v2, "selected"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    const-string v2, "sortedIds"

    iget-object v3, p0, Lcom/android/task/TaskAlertActivity$1;->this$0:Lcom/android/task/TaskAlertActivity;

    #getter for: Lcom/android/task/TaskAlertActivity;->mSortedIds:[I
    invoke-static {v3}, Lcom/android/task/TaskAlertActivity;->access$500(Lcom/android/task/TaskAlertActivity;)[I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lcom/android/task/TaskAlertActivity$1;->this$0:Lcom/android/task/TaskAlertActivity;

    invoke-virtual {v2, v0}, Lcom/android/task/TaskAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    invoke-virtual {v1}, Lcom/android/task/TaskAlertActivity;->finish()V

    goto :goto_9
.end method
