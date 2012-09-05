.class Lcom/android/task/TaskBaseListView$2;
.super Landroid/database/ContentObserver;
.source "TaskBaseListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskBaseListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskBaseListView;


# direct methods
.method constructor <init>(Lcom/android/task/TaskBaseListView;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/task/TaskBaseListView$2;->this$0:Lcom/android/task/TaskBaseListView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 141
    const-string v0, "TaskBaseListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange - selfChange= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/task/TaskBaseListView$2;->this$0:Lcom/android/task/TaskBaseListView;

    invoke-virtual {v0, p1}, Lcom/android/task/TaskBaseListView;->onChangeTasks(Z)V

    .line 144
    return-void
.end method
