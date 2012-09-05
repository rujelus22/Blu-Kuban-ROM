.class Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
.super Landroid/os/Handler;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSetupBasicsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .registers 2
    .parameter

    .prologue
    .line 2226
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2231
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_9e

    .line 2268
    :cond_7
    :goto_7
    return-void

    .line 2233
    :pswitch_8
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_4a

    move v2, v3

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2234
    .local v1, state:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2235
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const v4, 0x7f0801d7

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2236
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2238
    :try_start_35
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_3f

    goto :goto_7

    .line 2240
    :catch_3f
    move-exception v0

    .line 2241
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Z7App"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #state:Ljava/lang/Boolean;
    :cond_4a
    move v2, v4

    .line 2233
    goto :goto_d

    .line 2250
    .restart local v1       #state:Ljava/lang/Boolean;
    :cond_4c
    sput-boolean v3, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    .line 2252
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    move-result-object v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_73

    .line 2254
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->cancel(Z)Z

    .line 2255
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1002(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 2258
    :cond_73
    :try_start_73
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2259
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2260
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->removeDialog(I)V
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_96} :catch_98

    goto/16 :goto_7

    .line 2262
    :catch_98
    move-exception v0

    .line 2263
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_7

    .line 2231
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public progress(Z)V
    .registers 4
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 2271
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2272
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2273
    if-eqz p1, :cond_f

    :goto_9
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2274
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2275
    return-void

    .line 2273
    :cond_f
    const/4 v1, 0x0

    goto :goto_9
.end method
