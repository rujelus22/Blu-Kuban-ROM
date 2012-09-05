.class Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;
.super Landroid/os/AsyncTask;
.source "MemoryUsageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/MemoryUsageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoryAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/MemoryUsageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/MemoryUsageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;->this$0:Lcom/sprint/dsa/MemoryUsageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;->this$0:Lcom/sprint/dsa/MemoryUsageActivity;

    #getter for: Lcom/sprint/dsa/MemoryUsageActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;
    invoke-static {v0}, Lcom/sprint/dsa/MemoryUsageActivity;->access$0(Lcom/sprint/dsa/MemoryUsageActivity;)Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->collectData()V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;->this$0:Lcom/sprint/dsa/MemoryUsageActivity;

    #getter for: Lcom/sprint/dsa/MemoryUsageActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;
    invoke-static {v0}, Lcom/sprint/dsa/MemoryUsageActivity;->access$0(Lcom/sprint/dsa/MemoryUsageActivity;)Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->notifyDataSetChanged()V

    .line 96
    iget-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;->this$0:Lcom/sprint/dsa/MemoryUsageActivity;

    #getter for: Lcom/sprint/dsa/MemoryUsageActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sprint/dsa/MemoryUsageActivity;->access$1(Lcom/sprint/dsa/MemoryUsageActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 97
    return-void
.end method
