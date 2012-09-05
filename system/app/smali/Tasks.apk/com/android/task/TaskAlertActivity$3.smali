.class Lcom/android/task/TaskAlertActivity$3;
.super Ljava/lang/Object;
.source "TaskAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 322
    iput-object p1, p0, Lcom/android/task/TaskAlertActivity$3;->this$0:Lcom/android/task/TaskAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$3;->this$0:Lcom/android/task/TaskAlertActivity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/task/TaskAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 325
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 327
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$3;->this$0:Lcom/android/task/TaskAlertActivity;

    #calls: Lcom/android/task/TaskAlertActivity;->dismissFiredAlarms()V
    invoke-static {v1}, Lcom/android/task/TaskAlertActivity;->access$900(Lcom/android/task/TaskAlertActivity;)V

    .line 329
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity$3;->this$0:Lcom/android/task/TaskAlertActivity;

    invoke-virtual {v1}, Lcom/android/task/TaskAlertActivity;->finish()V

    .line 330
    return-void
.end method
