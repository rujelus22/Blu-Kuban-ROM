.class Lcom/android/task/TaskSelectListView$2;
.super Ljava/lang/Object;
.source "TaskSelectListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskSelectListView;->setupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskSelectListView;


# direct methods
.method constructor <init>(Lcom/android/task/TaskSelectListView;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/task/TaskSelectListView$2;->this$0:Lcom/android/task/TaskSelectListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 203
    const-string v0, "TaskSelectListView"

    const-string v1, "======== doneTaskView onClick========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/task/TaskSelectListView$2;->this$0:Lcom/android/task/TaskSelectListView;

    #calls: Lcom/android/task/TaskSelectListView;->setDoneTaskCheck()V
    invoke-static {v0}, Lcom/android/task/TaskSelectListView;->access$100(Lcom/android/task/TaskSelectListView;)V

    .line 205
    return-void
.end method
