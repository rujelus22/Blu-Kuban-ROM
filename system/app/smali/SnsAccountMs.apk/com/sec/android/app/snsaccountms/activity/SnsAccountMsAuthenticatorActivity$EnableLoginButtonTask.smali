.class Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$EnableLoginButtonTask;
.super Ljava/util/TimerTask;
.source "SnsAccountMsAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableLoginButtonTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$EnableLoginButtonTask;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$EnableLoginButtonTask;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1100(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 779
    return-void
.end method
