.class Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$EnableLoginButtonTask;
.super Ljava/util/TimerTask;
.source "SnsAccountTwAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableLoginButtonTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$EnableLoginButtonTask;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$EnableLoginButtonTask;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1100(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 744
    return-void
.end method
