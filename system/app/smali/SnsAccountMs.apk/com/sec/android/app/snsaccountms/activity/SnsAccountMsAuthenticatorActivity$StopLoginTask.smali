.class Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$StopLoginTask;
.super Ljava/util/TimerTask;
.source "SnsAccountMsAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StopLoginTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$StopLoginTask;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 766
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$StopLoginTask;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 768
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$StopLoginTask;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 769
    new-instance v0, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;

    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$StopLoginTask;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 771
    .local v0, another:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$StopLoginTask;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1600(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    .end local v0           #another:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    :cond_26
    return-void
.end method
