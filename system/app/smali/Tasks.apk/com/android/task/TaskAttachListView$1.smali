.class Lcom/android/task/TaskAttachListView$1;
.super Ljava/lang/Object;
.source "TaskAttachListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskAttachListView;->setupSoftkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskAttachListView;


# direct methods
.method constructor <init>(Lcom/android/task/TaskAttachListView;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/task/TaskAttachListView$1;->this$0:Lcom/android/task/TaskAttachListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/task/TaskAttachListView$1;->this$0:Lcom/android/task/TaskAttachListView;

    #calls: Lcom/android/task/TaskAttachListView;->attachTasks()V
    invoke-static {v0}, Lcom/android/task/TaskAttachListView;->access$000(Lcom/android/task/TaskAttachListView;)V

    .line 40
    iget-object v0, p0, Lcom/android/task/TaskAttachListView$1;->this$0:Lcom/android/task/TaskAttachListView;

    iget-object v0, v0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 41
    return-void
.end method
