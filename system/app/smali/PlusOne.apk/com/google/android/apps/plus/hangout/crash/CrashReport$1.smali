.class Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;
.super Landroid/os/AsyncTask;
.source "CrashReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/crash/CrashReport;->send(Landroid/app/Activity;Z)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/crash/CrashReport;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finishActivity:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/crash/CrashReport;Landroid/app/Activity;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->this$0:Lcom/google/android/apps/plus/hangout/crash/CrashReport;

    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->val$finishActivity:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 6
    .parameter "args"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->this$0:Lcom/google/android/apps/plus/hangout/crash/CrashReport;

    #getter for: Lcom/google/android/apps/plus/hangout/crash/CrashReport;->reportText:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->access$000(Lcom/google/android/apps/plus/hangout/crash/CrashReport;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->this$0:Lcom/google/android/apps/plus/hangout/crash/CrashReport;

    #getter for: Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->access$100(Lcom/google/android/apps/plus/hangout/crash/CrashReport;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "comments"

    const-string v2, "Report unavailable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->this$0:Lcom/google/android/apps/plus/hangout/crash/CrashReport;

    #getter for: Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->access$100(Lcom/google/android/apps/plus/hangout/crash/CrashReport;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "filtered_log"

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->this$0:Lcom/google/android/apps/plus/hangout/crash/CrashReport;

    #getter for: Lcom/google/android/apps/plus/hangout/crash/CrashReport;->crashProcessingError:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->access$200(Lcom/google/android/apps/plus/hangout/crash/CrashReport;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/crash/CrashSender;->sendReport(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;[B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 75
    :goto_31
    return-object v0

    :cond_32
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->this$0:Lcom/google/android/apps/plus/hangout/crash/CrashReport;

    #getter for: Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->access$100(Lcom/google/android/apps/plus/hangout/crash/CrashReport;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "filtered_log"

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->this$0:Lcom/google/android/apps/plus/hangout/crash/CrashReport;

    #getter for: Lcom/google/android/apps/plus/hangout/crash/CrashReport;->reportText:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->access$000(Lcom/google/android/apps/plus/hangout/crash/CrashReport;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/crash/CrashSender;->sendReport(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;[B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_31
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "sendResult"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x7f0702c3

    :goto_d
    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->val$finishActivity:Z

    if-eqz v0, :cond_22

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 91
    :cond_22
    return-void

    .line 82
    :cond_23
    const v0, 0x7f0702c4

    goto :goto_d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
