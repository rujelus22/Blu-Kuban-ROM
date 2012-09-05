.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreAccountsLogin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchListenerClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_d8

    :goto_9
    :pswitch_9
    move v0, v1

    .line 224
    :goto_a
    return v0

    .line 175
    :pswitch_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_e4

    goto :goto_a

    .line 177
    :pswitch_13
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 182
    :pswitch_1d
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 185
    :pswitch_27
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 188
    :pswitch_31
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 189
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 190
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    :goto_4f
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 194
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->showHidePassword(Z)V
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$300(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Z)V

    .line 195
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    goto :goto_a

    .line 192
    :cond_6d
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4f

    .line 200
    :pswitch_77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_f0

    goto :goto_9

    .line 202
    :pswitch_7f
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 207
    :pswitch_89
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_a

    .line 210
    :pswitch_94
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_a

    .line 213
    :pswitch_9f
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 214
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 215
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    :goto_bd
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 219
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    goto/16 :goto_a

    .line 217
    :cond_cd
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_bd

    .line 173
    nop

    :pswitch_data_d8
    .packed-switch 0x7f100044
        :pswitch_77
        :pswitch_9
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 175
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_31
        :pswitch_1d
        :pswitch_27
    .end packed-switch

    .line 200
    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_9f
        :pswitch_89
        :pswitch_94
    .end packed-switch
.end method
