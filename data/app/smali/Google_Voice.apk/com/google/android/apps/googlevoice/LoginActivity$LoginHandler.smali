.class Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;Lcom/google/android/apps/googlevoice/LoginActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "message"

    .prologue
    const/16 v13, 0x6b

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/16 v9, 0x3ec

    const/4 v10, 0x0

    .line 679
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_23

    .line 680
    const-string v6, "LoginActivity.handleMessage(%d, %s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 685
    :cond_23
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->finished:Z
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1500(Lcom/google/android/apps/googlevoice/LoginActivity;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 686
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_34

    .line 687
    const-string v6, "LoginActivity.handleMessage(): activity already finished, ignoring"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 858
    :cond_34
    :goto_34
    return-void

    .line 700
    :cond_35
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_2be

    goto :goto_34

    .line 702
    :sswitch_3b
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4f

    .line 704
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v6

    const/16 v7, 0xb

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_34

    .line 705
    :cond_4f
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingPassword:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1600(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_69

    .line 708
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingPassword:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1600(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->submit(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$500(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 711
    :cond_69
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.google.android.apps.googlevoice.LoginActivity.LOGIN_SERVICE"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 713
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$302(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v6

    const/16 v7, 0x65

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_34

    .line 717
    :cond_8e
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v7, 0x3ea

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto :goto_34

    .line 723
    :sswitch_96
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1700(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v8, 0xb

    invoke-interface {v6, v7, v8}, Lcom/google/android/apps/googlevoice/AuthenticationHelper;->getAccount(Landroid/app/Activity;I)V

    goto :goto_34

    .line 728
    :sswitch_a4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 729
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_c3

    const/4 v0, 0x0

    .line 731
    .local v0, accounts:[Ljava/lang/String;
    :goto_ab
    if-eqz v0, :cond_b4

    array-length v6, v0

    if-eqz v6, :cond_b4

    aget-object v6, v0, v10

    if-nez v6, :cond_ca

    .line 735
    :cond_b4
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/4 v7, 0x0

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$302(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 736
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v7, 0x3ea

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 729
    .end local v0           #accounts:[Ljava/lang/String;
    :cond_c3
    const-string v6, "accounts"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    .line 740
    .restart local v0       #accounts:[Ljava/lang/String;
    :cond_ca
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    aget-object v7, v0, v10

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$302(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v7, 0x3e9

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 746
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_da
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->showAuthenticatingDialog()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1300(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    .line 748
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1700(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v8, 0x65

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$300(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/google/android/apps/googlevoice/AuthenticationHelper;->getCredentials(Landroid/app/Activity;ILjava/lang/String;Z)V

    goto/16 :goto_34

    .line 754
    :sswitch_f4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 755
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const-string v7, "authtoken"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1802(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 756
    const/16 v6, 0x68

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1800(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_34

    .line 762
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_114
    invoke-virtual {p0, v13}, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_34

    .line 766
    :sswitch_119
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1802(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 767
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1700(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v8, 0x68

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1800(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lcom/google/android/apps/googlevoice/AuthenticationHelper;->invalidateAuthToken(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_34

    .line 773
    :sswitch_137
    invoke-virtual {p0, v13}, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_34

    .line 777
    :sswitch_13c
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->dismissAuthenticatingDialog()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1900(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    .line 778
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1700(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$300(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v13, v8, v11}, Lcom/google/android/apps/googlevoice/AuthenticationHelper;->getCredentials(Landroid/app/Activity;ILjava/lang/String;Z)V

    goto/16 :goto_34

    .line 784
    :sswitch_154
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->dismissAuthenticatingDialog()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1900(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    .line 785
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 786
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const-string v7, "authAccount"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$702(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 787
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const-string v7, "authtoken"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1802(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 788
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1000(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$700(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1800(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v11}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useCredentials(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 789
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6, v12}, Lcom/google/android/apps/googlevoice/LoginActivity;->setResult(I)V

    .line 792
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->finish()V

    goto/16 :goto_34

    .line 796
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_194
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 797
    .local v4, replyIntent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 798
    .local v3, replyBundle:Landroid/os/Bundle;
    if-eqz v3, :cond_1a6

    const-string v6, "errorCode"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c5

    .line 800
    :cond_1a6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a bundle to be associated with message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 801
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 803
    :cond_1c5
    const-string v6, "errorCode"

    invoke-virtual {v3, v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 804
    .local v1, errorCode:I
    packed-switch v1, :pswitch_data_2fc

    .line 813
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected error code from login service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 814
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 806
    :pswitch_1eb
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 809
    :pswitch_1f2
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v7, 0x3ee

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 822
    .end local v1           #errorCode:I
    .end local v3           #replyBundle:Landroid/os/Bundle;
    .end local v4           #replyIntent:Landroid/content/Intent;
    :sswitch_1fb
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->dismissAuthenticatingDialog()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1900(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    .line 823
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/googlex/common/async/LoginRequest;

    .line 824
    .local v5, request:Lcom/googlex/common/async/LoginRequest;
    invoke-interface {v5}, Lcom/googlex/common/async/LoginRequest;->getResponseCode()I

    move-result v6

    const/16 v7, 0x193

    if-ne v6, v7, :cond_236

    .line 825
    invoke-interface {v5}, Lcom/googlex/common/async/LoginRequest;->getCaptchaImageUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_22d

    .line 826
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-interface {v5}, Lcom/googlex/common/async/LoginRequest;->getCaptchaImageUrl()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->captchaImageUrl:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$2002(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 827
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-interface {v5}, Lcom/googlex/common/async/LoginRequest;->getCaptchaToken()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->captchaToken:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1202(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 828
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v7, 0x3ed

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 830
    :cond_22d
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v7, 0x3ee

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 832
    :cond_236
    invoke-interface {v5}, Lcom/googlex/common/async/LoginRequest;->hasException()Z

    move-result v6

    if-eqz v6, :cond_243

    .line 833
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 834
    :cond_243
    invoke-interface {v5}, Lcom/googlex/common/async/LoginRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2aa

    .line 835
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-interface {v5}, Lcom/googlex/common/async/LoginRequest;->getUserName()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$702(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 836
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-interface {v5}, Lcom/googlex/common/async/LoginRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1802(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 837
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1000(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$700(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1800(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v10}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useCredentials(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 838
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6, v12}, Lcom/google/android/apps/googlevoice/LoginActivity;->setResult(I)V

    .line 839
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$2200(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/UnreadNotifier;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$2100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/UnreadNotifier;->onUserSignedIn(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    .line 842
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->unregisterSuccessReceiver()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$2300(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    .line 843
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.google.android.apps.googlevoice.LoginActivity.BROADCAST_SUCCESS"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2a3

    .line 844
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.android.apps.googlevoice.LoginActivity.SUCCESS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/LoginActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 846
    :cond_2a3
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->finish()V

    goto/16 :goto_34

    .line 849
    :cond_2aa
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    goto/16 :goto_34

    .line 854
    .end local v5           #request:Lcom/googlex/common/async/LoginRequest;
    :sswitch_2b1
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6, v10}, Lcom/google/android/apps/googlevoice/LoginActivity;->setResult(I)V

    .line 855
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/LoginActivity;->finish()V

    goto/16 :goto_34

    .line 700
    nop

    :sswitch_data_2be
    .sparse-switch
        0x1 -> :sswitch_3b
        0xb -> :sswitch_96
        0xc -> :sswitch_a4
        0xd -> :sswitch_a4
        0x65 -> :sswitch_da
        0x66 -> :sswitch_f4
        0x67 -> :sswitch_114
        0x68 -> :sswitch_119
        0x69 -> :sswitch_137
        0x6a -> :sswitch_137
        0x6b -> :sswitch_13c
        0x6c -> :sswitch_154
        0x6d -> :sswitch_194
        0xc8 -> :sswitch_1fb
        0x12c -> :sswitch_2b1
    .end sparse-switch

    .line 804
    :pswitch_data_2fc
    .packed-switch 0x0
        :pswitch_1eb
        :pswitch_1f2
    .end packed-switch
.end method
