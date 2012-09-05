.class Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$2;
.super Landroid/os/Handler;
.source "SnsAccountLiAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->initMainThreadHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$2;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 169
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_28

    .line 191
    :goto_5
    return-void

    .line 172
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$2;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->loginSuccess()V

    goto :goto_5

    .line 176
    :pswitch_c
    const/4 v0, 0x0

    .line 178
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 179
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 181
    .restart local v0       #reason:Ljava/lang/String;
    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$2;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->loginFail(IILjava/lang/String;)V

    goto :goto_5

    .line 185
    .end local v0           #reason:Ljava/lang/String;
    :pswitch_21
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$2;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->addUsernameList()V

    goto :goto_5

    .line 169
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_21
    .end packed-switch
.end method
