.class Lcom/android/task/TaskEditActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TaskEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 189
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$1;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$1;->this$0:Lcom/android/task/TaskEditActivity;

    #calls: Lcom/android/task/TaskEditActivity;->initReminderView()V
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$000(Lcom/android/task/TaskEditActivity;)V

    .line 194
    return-void
.end method
