.class Lcom/android/task/TaskEditActivity$4;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->initNoDueDateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskEditActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 554
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_36

    .line 555
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartDateButtonMillis:J
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$300(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #setter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/task/TaskEditActivity;->access$202(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 556
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueDateButtonMillis:J
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$400(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #setter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/task/TaskEditActivity;->access$102(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 562
    :goto_27
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v0, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_41

    const/4 v0, 0x1

    :goto_32
    #calls: Lcom/android/task/TaskEditActivity;->updateNoDueDateStatus(Z)V
    invoke-static {v1, v0}, Lcom/android/task/TaskEditActivity;->access$500(Lcom/android/task/TaskEditActivity;Z)V

    .line 563
    return-void

    .line 558
    :cond_36
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    #setter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/task/TaskEditActivity;->access$202(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 559
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$4;->this$0:Lcom/android/task/TaskEditActivity;

    #setter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/task/TaskEditActivity;->access$102(Lcom/android/task/TaskEditActivity;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_27

    .line 562
    :cond_41
    const/4 v0, 0x0

    goto :goto_32
.end method
