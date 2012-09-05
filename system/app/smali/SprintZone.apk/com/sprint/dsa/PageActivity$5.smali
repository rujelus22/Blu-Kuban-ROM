.class Lcom/sprint/dsa/PageActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "PageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 980
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 984
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/dsa/widget/ContentListAdapter;->getTestConnectionView()Lcom/sprint/dsa/widget/TestConnectionView;

    move-result-object v1

    .line 986
    .local v1, tcView:Lcom/sprint/dsa/widget/TestConnectionView;
    if-eqz v1, :cond_5f

    .line 987
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$7(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->stopProgress()V

    .line 988
    invoke-virtual {v1}, Lcom/sprint/dsa/widget/TestConnectionView;->is4G()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 989
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    new-instance v3, Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    iget-object v4, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    iget-object v5, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v5}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v5

    const v6, 0x7f0b0017

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/sprint/dsa/PageActivity$ProgressRunnable;-><init>(Lcom/sprint/dsa/PageActivity;Lcom/sprint/dsa/widget/TestConnectionView;Lcom/sprint/dsa/widget/ContentListAdapter;I)V

    #setter for: Lcom/sprint/dsa/PageActivity;->mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;
    invoke-static {v2, v3}, Lcom/sprint/dsa/PageActivity;->access$8(Lcom/sprint/dsa/PageActivity;Lcom/sprint/dsa/PageActivity$ProgressRunnable;)V

    .line 994
    :goto_32
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity$5;->getResultCode()I

    move-result v0

    .line 995
    .local v0, resultCode:I
    const-string v2, "SmsError"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 996
    const/4 v0, 0x1

    .line 999
    :cond_3f
    packed-switch v0, :pswitch_data_102

    .line 1031
    :pswitch_42
    invoke-virtual {v1, v7, v7, v8}, Lcom/sprint/dsa/widget/TestConnectionView;->setVoiceTestingResult(ZIZ)V

    .line 1032
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #setter for: Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z
    invoke-static {v2, v7}, Lcom/sprint/dsa/PageActivity;->access$9(Lcom/sprint/dsa/PageActivity;Z)V

    .line 1033
    new-instance v2, Lcom/sprint/dsa/PageActivity$TestDataTask;

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-direct {v2, v3}, Lcom/sprint/dsa/PageActivity$TestDataTask;-><init>(Lcom/sprint/dsa/PageActivity;)V

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/PageActivity$TestDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1035
    :goto_56
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    .line 1037
    .end local v0           #resultCode:I
    :cond_5f
    return-void

    .line 992
    :cond_60
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    new-instance v3, Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    iget-object v4, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    iget-object v5, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;
    invoke-static {v5}, Lcom/sprint/dsa/PageActivity;->access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;

    move-result-object v5

    const v6, 0x7f0b0014

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/sprint/dsa/PageActivity$ProgressRunnable;-><init>(Lcom/sprint/dsa/PageActivity;Lcom/sprint/dsa/widget/TestConnectionView;Lcom/sprint/dsa/widget/ContentListAdapter;I)V

    #setter for: Lcom/sprint/dsa/PageActivity;->mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;
    invoke-static {v2, v3}, Lcom/sprint/dsa/PageActivity;->access$8(Lcom/sprint/dsa/PageActivity;Lcom/sprint/dsa/PageActivity$ProgressRunnable;)V

    goto :goto_32

    .line 1001
    .restart local v0       #resultCode:I
    :pswitch_76
    invoke-virtual {v1, v8, v7, v7}, Lcom/sprint/dsa/widget/TestConnectionView;->setVoiceTestingResult(ZIZ)V

    .line 1002
    new-instance v2, Lcom/sprint/dsa/PageActivity$TestDataTask;

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-direct {v2, v3}, Lcom/sprint/dsa/PageActivity$TestDataTask;-><init>(Lcom/sprint/dsa/PageActivity;)V

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/PageActivity$TestDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_56

    .line 1005
    :pswitch_86
    invoke-virtual {v1, v7, v7, v7}, Lcom/sprint/dsa/widget/TestConnectionView;->setVoiceTestingResult(ZIZ)V

    .line 1006
    new-instance v2, Lcom/sprint/dsa/PageActivity$TestDataTask;

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-direct {v2, v3}, Lcom/sprint/dsa/PageActivity$TestDataTask;-><init>(Lcom/sprint/dsa/PageActivity;)V

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/PageActivity$TestDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1007
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$4(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v2

    .line 1008
    const v3, 0x7f080043

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1007
    invoke-static {v2, v3}, Lcom/sprint/dsa/Reporting;->reportNoVoice(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    goto :goto_56

    .line 1011
    :pswitch_a6
    invoke-virtual {v1, v7, v8, v8}, Lcom/sprint/dsa/widget/TestConnectionView;->setVoiceTestingResult(ZIZ)V

    .line 1012
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #setter for: Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z
    invoke-static {v2, v7}, Lcom/sprint/dsa/PageActivity;->access$9(Lcom/sprint/dsa/PageActivity;Z)V

    .line 1013
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$4(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v2

    .line 1014
    const v3, 0x7f080044

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1013
    invoke-static {v2, v3}, Lcom/sprint/dsa/Reporting;->reportNoVoice(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 1015
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v2}, Lcom/sprint/dsa/PageActivity;->showTryTestAgainDialog()V

    goto :goto_56

    .line 1018
    :pswitch_c4
    invoke-virtual {v1, v7, v7, v7}, Lcom/sprint/dsa/widget/TestConnectionView;->setVoiceTestingResult(ZIZ)V

    .line 1019
    new-instance v2, Lcom/sprint/dsa/PageActivity$TestDataTask;

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-direct {v2, v3}, Lcom/sprint/dsa/PageActivity$TestDataTask;-><init>(Lcom/sprint/dsa/PageActivity;)V

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/PageActivity$TestDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1020
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$4(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v2

    .line 1021
    const v3, 0x7f080046

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1020
    invoke-static {v2, v3}, Lcom/sprint/dsa/Reporting;->reportNoVoice(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 1023
    :pswitch_e3
    invoke-virtual {v1, v7, v7, v8}, Lcom/sprint/dsa/widget/TestConnectionView;->setVoiceTestingResult(ZIZ)V

    .line 1024
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #setter for: Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z
    invoke-static {v2, v7}, Lcom/sprint/dsa/PageActivity;->access$9(Lcom/sprint/dsa/PageActivity;Z)V

    .line 1025
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageActivity;->access$4(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v2

    .line 1026
    const v3, 0x7f080045

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1025
    invoke-static {v2, v3}, Lcom/sprint/dsa/Reporting;->reportNoVoice(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 1027
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity$5;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v2}, Lcom/sprint/dsa/PageActivity;->showTryTestAgainDialog()V

    goto/16 :goto_56

    .line 999
    :pswitch_data_102
    .packed-switch -0x1
        :pswitch_76
        :pswitch_42
        :pswitch_86
        :pswitch_e3
        :pswitch_c4
        :pswitch_a6
    .end packed-switch
.end method
