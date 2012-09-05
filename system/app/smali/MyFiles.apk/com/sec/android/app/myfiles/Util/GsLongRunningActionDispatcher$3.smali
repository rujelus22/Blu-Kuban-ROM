.class Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;
.super Ljava/lang/Object;
.source "GsLongRunningActionDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, result:Ljava/lang/Void;
    const/4 v2, 0x0

    .line 119
    .local v2, error:Ljava/lang/Exception;
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Void;

    move-object v5, v0

    .line 120
    iget-object v6, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->dismiss()V

    .line 122
    move-object v4, v5

    .line 123
    .local v4, finalResult:Ljava/lang/Void;
    move-object v3, v2

    .line 125
    .local v3, finalError:Ljava/lang/Object;
    iget-object v6, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    #getter for: Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->finishedHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->access$100(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3$1;

    invoke-direct {v7, p0, v4, v3}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3$1;-><init>(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;Ljava/lang/Void;Ljava/lang/Exception;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_22

    .line 139
    .end local v3           #finalError:Ljava/lang/Object;
    .end local v4           #finalResult:Ljava/lang/Void;
    :cond_21
    :goto_21
    return-void

    .line 130
    :catch_22
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[MyFiles]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "interrupt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v6, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    #getter for: Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->access$200(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 135
    iget-object v6, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    #getter for: Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->access$200(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    iget-object v6, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;->this$0:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->access$202(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_21
.end method
