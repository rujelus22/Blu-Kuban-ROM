.class Lcom/android/task/TaskViewByActivity$4;
.super Ljava/lang/Object;
.source "TaskViewByActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/task/TaskViewByActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/task/TaskViewByActivity$4;->this$0:Lcom/android/task/TaskViewByActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 214
    const-string v0, "TasksViewByListActivity"

    const-string v1, "========  mUpdateAllCheckRunnable run ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/task/TaskViewByActivity$4;->this$0:Lcom/android/task/TaskViewByActivity;

    #calls: Lcom/android/task/TaskViewByActivity;->updateAllCheckState()V
    invoke-static {v0}, Lcom/android/task/TaskViewByActivity;->access$100(Lcom/android/task/TaskViewByActivity;)V

    .line 217
    return-void
.end method
