.class Lcom/android/task/TaskDeleteListView$5;
.super Ljava/lang/Thread;
.source "TaskDeleteListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskDeleteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskDeleteListView;


# direct methods
.method constructor <init>(Lcom/android/task/TaskDeleteListView;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/task/TaskDeleteListView$5;->this$0:Lcom/android/task/TaskDeleteListView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$5;->this$0:Lcom/android/task/TaskDeleteListView;

    #calls: Lcom/android/task/TaskDeleteListView;->deleteTasks()V
    invoke-static {v0}, Lcom/android/task/TaskDeleteListView;->access$300(Lcom/android/task/TaskDeleteListView;)V

    .line 177
    return-void
.end method
