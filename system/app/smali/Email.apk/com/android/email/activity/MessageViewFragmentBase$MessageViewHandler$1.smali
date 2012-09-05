.class Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 11863
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11868
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_85

    .line 11869
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->dialogCancelled:Z
    invoke-static {v3, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9502(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 11872
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7600(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 11874
    :try_start_1a
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2b

    .line 11875
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_38
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1a .. :try_end_2b} :catch_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_2b} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_2b} :catch_46

    .line 11913
    :cond_2b
    :goto_2b
    return v1

    .line 11877
    :catch_2c
    move-exception v0

    .line 11878
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_2d
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "BadTokenException!!!!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11880
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_38

    goto :goto_2b

    .line 11888
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_38
    move-exception v1

    throw v1

    .line 11881
    :catch_3a
    move-exception v0

    .line 11882
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3b
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "IllegalStateException!!!!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11884
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2b

    .line 11885
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_46
    move-exception v0

    .line 11886
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11887
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_38

    goto :goto_2b

    .line 11893
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_52
    sget-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    if-ne v3, v1, :cond_78

    .line 11894
    sput-boolean v2, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    .line 11899
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 11900
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 11902
    :cond_6d
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->fetching_attachmentProgress_cancel()V

    .line 11909
    :cond_78
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->setAttachmentsEnabled(Z)V

    move v1, v2

    .line 11910
    goto :goto_2b

    :cond_85
    move v1, v2

    .line 11913
    goto :goto_2b
.end method
