.class public Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;
.super Landroid/os/Handler;
.source "LooperThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/thread/LooperThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sec/android/app/ve/thread/LooperThread;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/thread/LooperThread;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;->this$0:Lcom/sec/android/app/ve/thread/LooperThread;

    .line 66
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 71
    :try_start_1
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_25

    .line 72
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 73
    .local v2, objArry:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, str:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v0, v2, v4

    check-cast v0, Landroid/content/Context;

    .line 75
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;->pd:Landroid/app/ProgressDialog;

    if-nez v4, :cond_24

    .line 78
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v4, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;->pd:Landroid/app/ProgressDialog;

    .line 80
    const-string v4, "Showing progress dialog"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 92
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #objArry:[Ljava/lang/Object;
    .end local v3           #str:Ljava/lang/String;
    :cond_24
    :goto_24
    return-void

    .line 82
    :cond_25
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    .line 83
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;->pd:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_33

    .line 84
    iget-object v4, p0, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 85
    :cond_33
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;->pd:Landroid/app/ProgressDialog;

    .line 86
    const-string v4, "Hiding progress dialog"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3c

    goto :goto_24

    .line 89
    :catch_3c
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LooperThread Ignore >>> :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_24
.end method
