.class Lcom/sprint/dsa/PowerConfigActivity$2;
.super Landroid/os/AsyncTask;
.source "PowerConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PowerConfigActivity;->showProgressThenRefresh(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/sprint/dsa/PowerConfigActivity;

.field private final synthetic val$timeout:J


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PowerConfigActivity;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PowerConfigActivity$2;->this$0:Lcom/sprint/dsa/PowerConfigActivity;

    iput-wide p2, p0, Lcom/sprint/dsa/PowerConfigActivity$2;->val$timeout:J

    .line 204
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

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/PowerConfigActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "arg0"

    .prologue
    .line 208
    :try_start_0
    iget-wide v0, p0, Lcom/sprint/dsa/PowerConfigActivity$2;->val$timeout:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_7

    .line 211
    :goto_5
    const/4 v0, 0x0

    return-object v0

    .line 209
    :catch_7
    move-exception v0

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/PowerConfigActivity$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity$2;->this$0:Lcom/sprint/dsa/PowerConfigActivity;

    invoke-virtual {v0}, Lcom/sprint/dsa/PowerConfigActivity;->refresh()V

    .line 219
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity$2;->this$0:Lcom/sprint/dsa/PowerConfigActivity;

    #getter for: Lcom/sprint/dsa/PowerConfigActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sprint/dsa/PowerConfigActivity;->access$0(Lcom/sprint/dsa/PowerConfigActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 220
    return-void
.end method
