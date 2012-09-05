.class Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$2;
.super Landroid/os/Handler;
.source "SnsAccountMsAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->initMainThreadHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$2;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 167
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_28

    .line 189
    :goto_5
    return-void

    .line 170
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$2;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->loginSuccess()V

    goto :goto_5

    .line 174
    :pswitch_c
    const/4 v0, 0x0

    .line 176
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 177
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 179
    .restart local v0       #reason:Ljava/lang/String;
    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$2;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->loginFail(IILjava/lang/String;)V

    goto :goto_5

    .line 183
    .end local v0           #reason:Ljava/lang/String;
    :pswitch_21
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$2;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->addUsernameList()V

    goto :goto_5

    .line 167
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_21
    .end packed-switch
.end method
