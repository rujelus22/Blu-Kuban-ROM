.class Lcom/android/task/TaskDeleteListView$AddTask;
.super Landroid/os/AsyncTask;
.source "TaskDeleteListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskDeleteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskDeleteListView;


# direct methods
.method constructor <init>(Lcom/android/task/TaskDeleteListView;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/task/TaskDeleteListView$AddTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "unused"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    iget-object v0, v0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v0}, Lcom/android/task/TaskBaseListAdapter;->deleteCheckedTasks()V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/task/TaskDeleteListView$AddTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "unused"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    iget-object v0, v0, Lcom/android/task/TaskDeleteListView;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    iget-object v0, v0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 94
    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-static {}, Lcom/android/task/TaskDeleteListView;->access$100()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 75
    invoke-static {v3}, Lcom/android/task/TaskDeleteListView;->access$202(Z)Z

    .line 76
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    iget-object v2, v2, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/task/TaskDeleteListView;->pDialog:Landroid/app/ProgressDialog;

    .line 77
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    iget-object v0, v0, Lcom/android/task/TaskDeleteListView;->pDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    invoke-virtual {v1}, Lcom/android/task/TaskDeleteListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    iget-object v0, v0, Lcom/android/task/TaskDeleteListView;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    iget-object v0, v0, Lcom/android/task/TaskDeleteListView;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/task/TaskDeleteListView$AddTask;->this$0:Lcom/android/task/TaskDeleteListView;

    iget-object v0, v0, Lcom/android/task/TaskDeleteListView;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 81
    return-void
.end method
