.class public Lcom/google/android/apps/googlevoice/MessageTask;
.super Lcom/googlex/common/task/Task;
.source "MessageTask.java"


# instance fields
.field private message:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/googlex/common/task/TaskRunner;Landroid/os/Message;)V
    .registers 3
    .parameter "taskRunner"
    .parameter "message"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/googlex/common/task/Task;-><init>(Lcom/googlex/common/task/TaskRunner;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/MessageTask;->message:Landroid/os/Message;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/MessageTask;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    return-void
.end method
