.class Lcom/android/mms/ui/TranslateActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "TranslateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TranslateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 782
    const-string v7, "type"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 783
    .local v4, type:I
    const-string v7, "error_type"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 784
    .local v1, errorType:I
    packed-switch v4, :pswitch_data_1b8

    .line 848
    :cond_14
    :goto_14
    return-void

    .line 786
    :pswitch_15
    const-string v7, "detect_result"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, mDetectResultCode:Ljava/lang/String;
    if-nez v2, :cond_46

    .line 788
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z
    invoke-static {v8}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v8

    if-nez v8, :cond_28

    move v5, v6

    :cond_28
    #calls: Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V
    invoke-static {v7, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V

    .line 790
    :try_start_2b
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/TranslateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901db

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3c} :catch_3d

    goto :goto_14

    .line 792
    :catch_3d
    move-exception v0

    .line 793
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Mms/TranslateActivity"

    const-string v6, "cannot create toast popup"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 795
    .end local v0           #e:Ljava/lang/Exception;
    :cond_46
    if-eqz v2, :cond_9a

    if-nez v1, :cond_9a

    .line 796
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 797
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, v8, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v8, v2}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v7, v7, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v7, v2}, Lcom/android/mms/util/LanguageControl;->setToLanguageKey(Ljava/lang/String;)V

    .line 806
    :goto_6a
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->translate()V
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$000(Lcom/android/mms/ui/TranslateActivity;)V

    .line 807
    if-eqz v2, :cond_14

    .line 808
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z
    invoke-static {v8}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v8

    if-nez v8, :cond_98

    :goto_7b
    #calls: Lcom/android/mms/ui/TranslateActivity;->setRecentLanguage(Ljava/lang/String;Z)V
    invoke-static {v7, v2, v6}, Lcom/android/mms/ui/TranslateActivity;->access$600(Lcom/android/mms/ui/TranslateActivity;Ljava/lang/String;Z)V

    goto :goto_14

    .line 802
    :cond_7f
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, v8, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v8, v2}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v7, v7, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v7, v2}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    goto :goto_6a

    :cond_98
    move v6, v5

    .line 808
    goto :goto_7b

    .line 809
    :cond_9a
    if-ne v1, v9, :cond_b1

    .line 810
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z
    invoke-static {v8}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v8

    if-nez v8, :cond_a7

    move v5, v6

    :cond_a7
    #calls: Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V
    invoke-static {v7, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V

    .line 811
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V
    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$700(Lcom/android/mms/ui/TranslateActivity;)V

    goto/16 :goto_14

    .line 812
    :cond_b1
    if-ne v1, v8, :cond_c8

    .line 813
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z
    invoke-static {v8}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v8

    if-nez v8, :cond_be

    move v5, v6

    :cond_be
    #calls: Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V
    invoke-static {v7, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V

    .line 814
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->createAndShowErrorDialog(I)V
    invoke-static {v5, v6}, Lcom/android/mms/ui/TranslateActivity;->access$800(Lcom/android/mms/ui/TranslateActivity;I)V

    goto/16 :goto_14

    .line 816
    :cond_c8
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z
    invoke-static {v8}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v8

    if-nez v8, :cond_d3

    move v5, v6

    :cond_d3
    #calls: Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V
    invoke-static {v7, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V

    .line 817
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->createAndShowErrorDialog(I)V
    invoke-static {v5, v6}, Lcom/android/mms/ui/TranslateActivity;->access$800(Lcom/android/mms/ui/TranslateActivity;I)V

    goto/16 :goto_14

    .line 821
    .end local v2           #mDetectResultCode:Ljava/lang/String;
    :pswitch_dd
    const-string v7, "result_string"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, transResult:Ljava/lang/String;
    if-eqz v3, :cond_ed

    if-eqz v3, :cond_f4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-gez v7, :cond_f4

    .line 823
    :cond_ed
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->createAndShowErrorDialog(I)V
    invoke-static {v5, v10}, Lcom/android/mms/ui/TranslateActivity;->access$800(Lcom/android/mms/ui/TranslateActivity;I)V

    goto/16 :goto_14

    .line 824
    :cond_f4
    if-nez v1, :cond_1a6

    .line 825
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-eqz v7, :cond_152

    .line 826
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 827
    if-eqz v3, :cond_116

    .line 828
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 829
    :cond_116
    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1000(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v9

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-eqz v7, :cond_150

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->isMms:Z
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-nez v7, :cond_150

    move v7, v6

    :goto_12f
    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v8, v9, v7, v6}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 830
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/TranslateActivity;->access$1400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z
    invoke-static {v9}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v9

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v7, v8, v9, v6}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 831
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v8

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v7, v8, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto/16 :goto_14

    :cond_150
    move v7, v5

    .line 829
    goto :goto_12f

    .line 834
    :cond_152
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 835
    if-eqz v3, :cond_16a

    .line 836
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 837
    :cond_16a
    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1000(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v9

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-eqz v7, :cond_1a4

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->isMms:Z
    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-nez v7, :cond_1a4

    move v7, v6

    :goto_183
    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v8, v9, v7, v6}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 838
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/TranslateActivity;->access$1400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z
    invoke-static {v9}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v9

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v7, v8, v9, v6}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 839
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v8

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v7, v8, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto/16 :goto_14

    :cond_1a4
    move v7, v5

    .line 837
    goto :goto_183

    .line 842
    :cond_1a6
    if-ne v1, v9, :cond_1af

    .line 843
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V
    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$700(Lcom/android/mms/ui/TranslateActivity;)V

    goto/16 :goto_14

    .line 844
    :cond_1af
    if-ne v1, v8, :cond_14

    .line 845
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->createAndShowErrorDialog(I)V
    invoke-static {v5, v10}, Lcom/android/mms/ui/TranslateActivity;->access$800(Lcom/android/mms/ui/TranslateActivity;I)V

    goto/16 :goto_14

    .line 784
    :pswitch_data_1b8
    .packed-switch 0x1
        :pswitch_15
        :pswitch_dd
    .end packed-switch
.end method
