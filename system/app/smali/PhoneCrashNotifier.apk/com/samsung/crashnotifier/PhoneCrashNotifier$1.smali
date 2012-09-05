.class Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneCrashNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/crashnotifier/PhoneCrashNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;


# direct methods
.method constructor <init>(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    :try_start_0
    const-string v1, "CrashNotifier"

    const-string v2, "receive CP CRASH Information"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    iget-object v2, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    invoke-virtual {v2}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->title:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    iget-object v2, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    invoke-virtual {v2}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->errorInfo:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    #getter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$000(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 79
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    #getter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$000(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 80
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    #getter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$100(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x44c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    :cond_43
    const-string v1, "cpcrash"

    iget-object v2, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    iget-object v2, v2, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 85
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    iget-object v2, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    #getter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$100(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #setter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;
    invoke-static {v1, v2}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$202(Lcom/samsung/crashnotifier/PhoneCrashNotifier;Landroid/os/Message;)Landroid/os/Message;

    .line 86
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    #getter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;
    invoke-static {v1}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$200(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 100
    :cond_69
    :goto_69
    return-void

    .line 88
    :cond_6a
    const-string v1, "hsiccrash"

    iget-object v2, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    iget-object v2, v2, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 90
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    iget-object v2, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    #getter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$100(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #setter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;
    invoke-static {v1, v2}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$202(Lcom/samsung/crashnotifier/PhoneCrashNotifier;Landroid/os/Message;)Landroid/os/Message;

    .line 91
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    #getter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->msg:Landroid/os/Message;
    invoke-static {v1}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$200(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_91

    goto :goto_69

    .line 97
    :catch_91
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    :cond_96
    :try_start_96
    const-string v1, "DeviceReset"

    iget-object v2, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    iget-object v2, v2, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->errorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 95
    iget-object v1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$1;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    invoke-virtual {v1}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->DeviceReset()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a7} :catch_91

    goto :goto_69
.end method
