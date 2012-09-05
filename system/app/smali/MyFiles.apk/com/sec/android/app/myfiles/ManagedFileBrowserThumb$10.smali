.class Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;
.super Landroid/os/Handler;
.source "ManagedFileBrowserThumb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 2
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 864
    monitor-enter p0

    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_8b

    packed-switch v1, :pswitch_data_14e

    .line 953
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 866
    :pswitch_8
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2202(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Z)Z

    .line 867
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$502(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 868
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->operationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$600(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 870
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 872
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 873
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$1;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 884
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->cancelMsg:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2300(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10$2;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 893
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_89
    .catchall {:try_start_8 .. :try_end_89} :catchall_8b

    goto/16 :goto_6

    .line 864
    :catchall_8b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 897
    :pswitch_8e
    :try_start_8e
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    .line 898
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationCanceled:Z
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2200(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 899
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 900
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$700(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 901
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setResult(ILandroid/content/Intent;)V

    .line 903
    .end local v0           #i:Landroid/content/Intent;
    :cond_b3
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->finish()V

    goto/16 :goto_6

    .line 907
    :pswitch_ba
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    .line 909
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)I

    move-result v1

    packed-switch v1, :pswitch_data_15a

    .line 923
    :goto_c8
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2202(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Z)Z

    .line 924
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2600(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 925
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2600(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 911
    :pswitch_e8
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2602(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Ljava/lang/String;)Ljava/lang/String;

    .line 912
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mErrorType:I
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2702(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;I)I

    goto :goto_c8

    .line 915
    :pswitch_101
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2602(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Ljava/lang/String;)Ljava/lang/String;

    .line 916
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    const/4 v2, 0x2

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mErrorType:I
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2702(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;I)I

    goto :goto_c8

    .line 919
    :pswitch_11a
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2602(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Ljava/lang/String;)Ljava/lang/String;

    .line 920
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    const/4 v2, 0x3

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mErrorType:I
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2702(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;I)I

    goto :goto_c8

    .line 930
    :pswitch_133
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    .line 931
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2202(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Z)Z

    .line 944
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    const v2, 0x7f090048

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_14b
    .catchall {:try_start_8e .. :try_end_14b} :catchall_8b

    goto/16 :goto_6

    .line 864
    nop

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8e
        :pswitch_ba
        :pswitch_133
    .end packed-switch

    .line 909
    :pswitch_data_15a
    .packed-switch 0x2
        :pswitch_11a
        :pswitch_e8
        :pswitch_101
    .end packed-switch
.end method
