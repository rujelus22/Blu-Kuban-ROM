.class Lcom/android/task/TaskEditActivity$9;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->initViews()V
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
    .line 713
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$9;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$9;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mBSaveExitFlg:Z
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$700(Lcom/android/task/TaskEditActivity;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 717
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$9;->this$0:Lcom/android/task/TaskEditActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/task/TaskEditActivity;->mBSaveExitFlg:Z
    invoke-static {v0, v1}, Lcom/android/task/TaskEditActivity;->access$702(Lcom/android/task/TaskEditActivity;Z)Z

    .line 718
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$9;->this$0:Lcom/android/task/TaskEditActivity;

    #calls: Lcom/android/task/TaskEditActivity;->saveTask()V
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$800(Lcom/android/task/TaskEditActivity;)V

    .line 720
    :cond_13
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$9;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-virtual {v0}, Lcom/android/task/TaskEditActivity;->finish()V

    .line 721
    return-void
.end method
