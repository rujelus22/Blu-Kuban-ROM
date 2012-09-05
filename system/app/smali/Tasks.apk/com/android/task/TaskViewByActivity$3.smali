.class Lcom/android/task/TaskViewByActivity$3;
.super Landroid/database/ContentObserver;
.source "TaskViewByActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskViewByActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskViewByActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskViewByActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/task/TaskViewByActivity$3;->this$0:Lcom/android/task/TaskViewByActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 119
    const-string v0, "TasksViewByListActivity"

    const-string v1, "======== onChange ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/task/TaskViewByActivity$3;->this$0:Lcom/android/task/TaskViewByActivity;

    invoke-virtual {v0}, Lcom/android/task/TaskViewByActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_18

    .line 122
    iget-object v0, p0, Lcom/android/task/TaskViewByActivity$3;->this$0:Lcom/android/task/TaskViewByActivity;

    #getter for: Lcom/android/task/TaskViewByActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/task/TaskViewByActivity;->access$200(Lcom/android/task/TaskViewByActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 124
    :cond_18
    return-void
.end method
