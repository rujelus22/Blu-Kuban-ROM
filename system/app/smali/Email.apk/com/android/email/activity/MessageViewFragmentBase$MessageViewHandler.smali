.class Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
.super Landroid/os/Handler;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter

    .prologue
    .line 11501
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public DeviceAccessError(I)V
    .registers 3
    .parameter "AccessErrorType"

    .prologue
    .line 12560
    const v0, 0x40001

    if-ne p1, v0, :cond_b

    .line 12561
    const/high16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 12564
    :cond_a
    :goto_a
    return-void

    .line 12562
    :cond_b
    const v0, 0x40002

    if-ne p1, v0, :cond_a

    .line 12563
    const v0, 0x80001

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_a
.end method

.method public attachmentProgress(ZJI)V
    .registers 5
    .parameter "progress"
    .parameter "attachmentId"
    .parameter "dialogType"

    .prologue
    .line 12649
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->showSmimeProgressDialog(ZJI)V

    .line 12650
    return-void
.end method

.method public displayToast(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 12481
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 12482
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 12485
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 12486
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12487
    return-void
.end method

.method public errorIrmRemoval()V
    .registers 2

    .prologue
    .line 12637
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 12638
    return-void
.end method

.method public errorLoadMore(I)V
    .registers 4
    .parameter "errorType"

    .prologue
    .line 12594
    sparse-switch p1, :sswitch_data_28

    .line 12617
    const/high16 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 12621
    :goto_8
    return-void

    .line 12596
    :sswitch_9
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 12600
    :sswitch_f
    const/high16 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 12605
    :sswitch_15
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 12611
    :sswitch_1b
    const-string v0, "Email"

    const-string v1, "errorLoadMore : LOADMORE_CANCEL "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12612
    const/high16 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 12594
    :sswitch_data_28
    .sparse-switch
        0x40000 -> :sswitch_15
        0x50000 -> :sswitch_9
        0x70000 -> :sswitch_f
        0x100000 -> :sswitch_1b
    .end sparse-switch
.end method

.method public fetching_attachmentProgress_cancel()V
    .registers 3

    .prologue
    .line 12513
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 12515
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12516
    return-void
.end method

.method public finishIrmRemoval()V
    .registers 2

    .prologue
    .line 12633
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 12634
    return-void
.end method

.method public finishLoadMore()V
    .registers 2

    .prologue
    .line 12624
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 12625
    return-void
.end method

.method public goBackToMessageList()V
    .registers 3

    .prologue
    .line 12490
    const/16 v1, 0xfa0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 12491
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12492
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 37
    .parameter "msg"

    .prologue
    .line 11592
    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v30, :cond_33

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    if-eqz v30, :cond_33

    .line 11597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v30

    if-eqz v30, :cond_33

    .line 11598
    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven;->mZ7Handler:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->handleMessage(Landroid/os/Message;)V

    .line 11604
    :cond_33
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_1150

    .line 12476
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 12478
    :cond_3f
    :goto_3f
    :sswitch_3f
    return-void

    .line 11626
    :sswitch_40
    :try_start_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->showLoadMoreDialog()V
    :try_end_4d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_40 .. :try_end_4d} :catch_4e
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_4d} :catch_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_4d} :catch_69
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_4d} :catch_75

    goto :goto_3f

    .line 11627
    :catch_4e
    move-exception v23

    .line 11628
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException - MSG_LOADMORE_START"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11629
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_3f

    .line 11630
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_5a
    move-exception v23

    .line 11631
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_START"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11632
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 11633
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_3f

    .line 11634
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_69
    move-exception v23

    .line 11635
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11636
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3f

    .line 11638
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :catch_75
    move-exception v23

    .line 11639
    .local v23, e:Ljava/lang/NullPointerException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "NullPointerException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11640
    invoke-virtual/range {v23 .. v23}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3f

    .line 11647
    .end local v23           #e:Ljava/lang/NullPointerException;
    :sswitch_81
    :try_start_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_aa

    .line 11648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_aa
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_aa} :catch_d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_aa} :catch_e7

    .line 11657
    :cond_aa
    :goto_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080347

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 11649
    :catch_d8
    move-exception v23

    .line 11650
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_FINISH - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11651
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 11652
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_aa

    .line 11653
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_e7
    move-exception v23

    .line 11654
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11655
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_aa

    .line 11665
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :sswitch_f3
    :try_start_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_11c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_11c

    .line 11666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_11c
    .catch Ljava/lang/IllegalStateException; {:try_start_f3 .. :try_end_11c} :catch_14a

    .line 11672
    :cond_11c
    :goto_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080348

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 11667
    :catch_14a
    move-exception v23

    .line 11668
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_ERROR - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11669
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 11670
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_11c

    .line 11682
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_159
    :try_start_159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_182

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_182

    .line 11683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_182
    .catch Ljava/lang/IllegalStateException; {:try_start_159 .. :try_end_182} :catch_1b0

    .line 11689
    :cond_182
    :goto_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080349

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 11684
    :catch_1b0
    move-exception v23

    .line 11685
    .restart local v23       #e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_OUTOFMEMORY - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11686
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 11687
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_182

    .line 11699
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_1bf
    :try_start_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_1e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1e8

    .line 11700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1e8
    .catch Ljava/lang/IllegalStateException; {:try_start_1bf .. :try_end_1e8} :catch_216

    .line 11706
    :cond_1e8
    :goto_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08034b

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 11701
    :catch_216
    move-exception v23

    .line 11702
    .restart local v23       #e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_NULLMSG - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11703
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 11704
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_1e8

    .line 11716
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_225
    :try_start_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_24e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_24e

    .line 11717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_24e
    .catch Ljava/lang/IllegalStateException; {:try_start_225 .. :try_end_24e} :catch_27c

    .line 11723
    :cond_24e
    :goto_24e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08034c

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 11718
    :catch_27c
    move-exception v23

    .line 11719
    .restart local v23       #e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_FETCH_FAILURE - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11720
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 11721
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_24e

    .line 11733
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_28b
    const-string v30, "Email"

    const-string v31, "MSG_LOADMORE_CANCEL"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11735
    :try_start_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_3f

    .line 11736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->hide()V
    :try_end_2bb
    .catch Ljava/lang/IllegalStateException; {:try_start_292 .. :try_end_2bb} :catch_2bd

    goto/16 :goto_3f

    .line 11737
    :catch_2bd
    move-exception v23

    .line 11738
    .restart local v23       #e:Ljava/lang/IllegalStateException;
    const-string v30, "Email"

    const-string v31, "IllegalStateException - MSG_LOADMORE_CANCEL - hide()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11739
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 11740
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto/16 :goto_3f

    .line 11749
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0805bc

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 11756
    :sswitch_2fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0805bb

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 11763
    :sswitch_329
    sget v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3b5

    .line 11764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0805bd

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 11769
    const/16 v30, 0x0

    sput v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    .line 11770
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 11771
    .local v20, cv:Landroid/content/ContentValues;
    const-string v30, "IRMRemovalFlag"

    sget v31, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "_id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v33, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static/range {v33 .. v33}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11790
    .end local v20           #cv:Landroid/content/ContentValues;
    :cond_3b5
    :sswitch_3b5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-eqz v30, :cond_52d

    const/16 v28, 0x1

    .line 11793
    .local v28, progress:Z
    :goto_3bf
    if-eqz v28, :cond_5c1

    .line 11796
    :try_start_3c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_531

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    if-nez v30, :cond_531

    .line 11797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 11802
    :cond_3e2
    :goto_3e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-nez v30, :cond_3f

    .line 11822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 11823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 11828
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_56b

    .line 11829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f080281

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 11839
    :goto_43c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7600(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    if-eqz v30, :cond_593

    .line 11840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    if-eqz v30, :cond_47c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    move/from16 v30, v0

    if-eqz v30, :cond_47c

    .line 11841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0804ff

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9402(Ljava/lang/String;)Ljava/lang/String;

    .line 11843
    :cond_47c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    if-eqz v30, :cond_4b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4b0

    .line 11844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f080500

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9402(Ljava/lang/String;)Ljava/lang/String;

    .line 11851
    :cond_4b0
    :goto_4b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9400()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 11857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 11859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_4ef

    .line 11860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 11862
    :cond_4ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 11917
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    if-nez v30, :cond_51a

    .line 11918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->show()V

    .line 11919
    :cond_51a
    const/16 v30, 0x1

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z
    :try_end_51e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3c1 .. :try_end_51e} :catch_520
    .catch Ljava/lang/IllegalStateException; {:try_start_3c1 .. :try_end_51e} :catch_55e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c1 .. :try_end_51e} :catch_586

    goto/16 :goto_3f

    .line 11956
    :catch_520
    move-exception v23

    .line 11957
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11958
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_3f

    .line 11790
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    .end local v28           #progress:Z
    :cond_52d
    const/16 v28, 0x0

    goto/16 :goto_3bf

    .line 11798
    .restart local v28       #progress:Z
    :cond_531
    :try_start_531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-nez v30, :cond_3e2

    .line 11799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    new-instance v31, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;
    :try_end_55c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_531 .. :try_end_55c} :catch_520
    .catch Ljava/lang/IllegalStateException; {:try_start_531 .. :try_end_55c} :catch_55e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_531 .. :try_end_55c} :catch_586

    goto/16 :goto_3e2

    .line 11959
    :catch_55e
    move-exception v23

    .line 11960
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11961
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_3f

    .line 11837
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :cond_56b
    :try_start_56b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_584
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_56b .. :try_end_584} :catch_520
    .catch Ljava/lang/IllegalStateException; {:try_start_56b .. :try_end_584} :catch_55e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56b .. :try_end_584} :catch_586

    goto/16 :goto_43c

    .line 11962
    :catch_586
    move-exception v23

    .line 11963
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11964
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_3f

    .line 11847
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :cond_593
    :try_start_593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f080283

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v34, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9402(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4b0

    .line 11946
    :cond_5c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5de

    .line 11947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 11949
    :cond_5de
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    .line 11950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_3f

    .line 11951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_611
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_593 .. :try_end_611} :catch_520
    .catch Ljava/lang/IllegalStateException; {:try_start_593 .. :try_end_611} :catch_55e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_593 .. :try_end_611} :catch_586

    goto/16 :goto_3f

    .line 11976
    .end local v28           #progress:Z
    :sswitch_613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    invoke-static/range {v30 .. v32}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v10

    .line 11977
    .local v10, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    if-eqz v30, :cond_3f

    .line 11986
    :try_start_632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3f

    .line 11988
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_6d7

    .line 11989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " / "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 11996
    :goto_682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 11997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 11998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 11999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->show()V
    :try_end_6c8
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_632 .. :try_end_6c8} :catch_6ca
    .catch Ljava/lang/IllegalStateException; {:try_start_632 .. :try_end_6c8} :catch_6eb

    goto/16 :goto_3f

    .line 12001
    :catch_6ca
    move-exception v23

    .line 12002
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12003
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_3f

    .line 11994
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :cond_6d7
    :try_start_6d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_6ea
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6d7 .. :try_end_6ea} :catch_6ca
    .catch Ljava/lang/IllegalStateException; {:try_start_6d7 .. :try_end_6ea} :catch_6eb

    goto :goto_682

    .line 12004
    :catch_6eb
    move-exception v23

    .line 12005
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12006
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_3f

    .line 12014
    .end local v10           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_6f8
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    if-eqz v30, :cond_3f

    .line 12019
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FETCHING_ATTACHMENT_PROGRESS_DOWNLOADING TotalCurrent "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12022
    :try_start_71a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3f

    .line 12025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-nez v30, :cond_775

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_775

    .line 12026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->show()V

    .line 12027
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    .line 12028
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mProgressDialog2 no show "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12030
    :cond_775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_78a
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_71a .. :try_end_78a} :catch_78c
    .catch Ljava/lang/IllegalStateException; {:try_start_71a .. :try_end_78a} :catch_799

    goto/16 :goto_3f

    .line 12032
    :catch_78c
    move-exception v23

    .line 12033
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12034
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_3f

    .line 12035
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_799
    move-exception v23

    .line 12036
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12037
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_3f

    .line 12044
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :sswitch_7a6
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    .line 12045
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    .line 12046
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9802(I)I

    .line 12048
    :try_start_7b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7d1

    .line 12049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_7d1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7b4 .. :try_end_7d1} :catch_7ef
    .catch Ljava/lang/IllegalStateException; {:try_start_7b4 .. :try_end_7d1} :catch_7fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b4 .. :try_end_7d1} :catch_807

    .line 12061
    :cond_7d1
    :goto_7d1
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FETCHING_ATTACHMENT_PROGRESS_CANCEL "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 12051
    :catch_7ef
    move-exception v23

    .line 12052
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12053
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_7d1

    .line 12054
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_7fb
    move-exception v23

    .line 12055
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12056
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_7d1

    .line 12057
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_807
    move-exception v23

    .line 12058
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12059
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7d1

    .line 12066
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :sswitch_813
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 12067
    .local v29, uriString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3f

    .line 12068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 12072
    .end local v29           #uriString:Ljava/lang/String;
    :sswitch_83e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 12073
    .local v21, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3f

    .line 12074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    const-string v31, "text/html"

    const-string v32, "utf-8"

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 12078
    .end local v21           #data:Ljava/lang/String;
    :sswitch_871
    const/16 v24, 0x0

    .local v24, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    .local v19, count:I
    :goto_881
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_3f

    .line 12079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/AttachmentInfo;

    .line 12081
    .local v10, attachment:Lcom/android/email/AttachmentInfo;
    iget-object v0, v10, Lcom/android/email/AttachmentInfo;->mAttachmentViewLin:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_8ea

    const/16 v30, 0x1

    :goto_8b3
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 12082
    iget-object v0, v10, Lcom/android/email/AttachmentInfo;->downloadButton:Landroid/widget/ImageButton;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_8ed

    const/16 v30, 0x1

    :goto_8ce
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 12083
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8e7

    .line 12090
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    .line 12078
    :cond_8e7
    add-int/lit8 v24, v24, 0x1

    goto :goto_881

    .line 12081
    :cond_8ea
    const/16 v30, 0x0

    goto :goto_8b3

    .line 12082
    :cond_8ed
    const/16 v30, 0x0

    goto :goto_8ce

    .line 12095
    .end local v10           #attachment:Lcom/android/email/AttachmentInfo;
    .end local v19           #count:I
    .end local v24           #i:I
    :sswitch_8f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f080086

    const/16 v32, 0x1

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_3f

    .line 12099
    :sswitch_900
    sget v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_97a

    .line 12100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f080115

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 12102
    const/16 v30, 0x0

    sput v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    .line 12103
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 12104
    .restart local v20       #cv:Landroid/content/ContentValues;
    const-string v30, "IRMRemovalFlag"

    sget v31, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "_id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v33, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static/range {v33 .. v33}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 12117
    .end local v20           #cv:Landroid/content/ContentValues;
    :cond_97a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_9a9

    .line 12118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12119
    :cond_9a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_9d8

    .line 12122
    :try_start_9c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c9 .. :try_end_9d8} :catch_a16
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9c9 .. :try_end_9d8} :catch_a22
    .catch Ljava/lang/IllegalStateException; {:try_start_9c9 .. :try_end_9d8} :catch_a2e

    .line 12137
    :cond_9d8
    :goto_9d8
    const/16 v24, 0x0

    .restart local v24       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    .restart local v19       #count:I
    :goto_9e8
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_a3a

    .line 12138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/AttachmentInfo;

    .line 12140
    .restart local v10       #attachment:Lcom/android/email/AttachmentInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    check-cast v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .end local v10           #attachment:Lcom/android/email/AttachmentInfo;
    move-object/from16 v0, v30

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    invoke-static {v0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8000(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    .line 12137
    add-int/lit8 v24, v24, 0x1

    goto :goto_9e8

    .line 12123
    .end local v19           #count:I
    .end local v24           #i:I
    :catch_a16
    move-exception v23

    .line 12124
    .restart local v23       #e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12125
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_9d8

    .line 12126
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :catch_a22
    move-exception v23

    .line 12127
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12128
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_9d8

    .line 12129
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_a2e
    move-exception v23

    .line 12130
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12131
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_9d8

    .line 12145
    .end local v23           #e:Ljava/lang/IllegalStateException;
    .restart local v19       #count:I
    .restart local v24       #i:I
    :cond_a3a
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9802(I)I

    .line 12146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v30

    if-eqz v30, :cond_3f

    .line 12147
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_NETWORK_ERROR "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static/range {v32 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3f

    .line 12156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f0800b5

    const/16 v32, 0x1

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_3f

    .line 12161
    .end local v19           #count:I
    .end local v24           #i:I
    :sswitch_a97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f080281

    const/16 v32, 0x0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_3f

    .line 12164
    :sswitch_aa7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f0800be

    const/16 v32, 0x0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_3f

    .line 12168
    :sswitch_ab7
    :try_start_ab7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/email/AttachmentInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->iconView:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/graphics/Bitmap;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_ae6
    .catch Ljava/lang/NullPointerException; {:try_start_ab7 .. :try_end_ae6} :catch_ae8

    goto/16 :goto_3f

    .line 12170
    :catch_ae8
    move-exception v30

    goto/16 :goto_3f

    .line 12179
    :sswitch_aeb
    :try_start_aeb
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_b9f

    .line 12180
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9604()I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_b1a

    .line 12181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b1a

    .line 12182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_b1a
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_aeb .. :try_end_b1a} :catch_bed
    .catch Ljava/lang/IllegalStateException; {:try_start_aeb .. :try_end_b1a} :catch_bfa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_aeb .. :try_end_b1a} :catch_c07

    .line 12204
    :cond_b1a
    :goto_b1a
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FINISH_LOAD_ATTACHMENT  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-boolean v32, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12215
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 12217
    .local v11, attachmentId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7600(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    if-eqz v30, :cond_c14

    .line 12219
    new-instance v30, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12226
    :goto_b82
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_3f

    .line 12227
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3f

    .line 12228
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    .line 12229
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    goto/16 :goto_3f

    .line 12189
    .end local v11           #attachmentId:J
    :cond_b9f
    :try_start_b9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_bce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_bce

    .line 12190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12191
    :cond_bce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b1a

    .line 12192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_beb
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b9f .. :try_end_beb} :catch_bed
    .catch Ljava/lang/IllegalStateException; {:try_start_b9f .. :try_end_beb} :catch_bfa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b9f .. :try_end_beb} :catch_c07

    goto/16 :goto_b1a

    .line 12194
    :catch_bed
    move-exception v23

    .line 12195
    .local v23, e:Landroid/view/WindowManager$BadTokenException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12196
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_b1a

    .line 12197
    .end local v23           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_bfa
    move-exception v23

    .line 12198
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12199
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_b1a

    .line 12200
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_c07
    move-exception v23

    .line 12201
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12202
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_b1a

    .line 12221
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    .restart local v11       #attachmentId:J
    :cond_c14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V
    invoke-static {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_b82

    .line 12241
    .end local v11           #attachmentId:J
    :sswitch_c21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0803eb

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 12247
    :sswitch_c3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 12250
    :sswitch_c58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->messageChanged()V

    goto/16 :goto_3f

    .line 12260
    :sswitch_c63
    :try_start_c63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_c92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_c92

    .line 12261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12263
    :cond_c92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_cbb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_cbb

    .line 12264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12265
    :cond_cbb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_cd8

    .line 12266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_cd8
    .catch Ljava/lang/IllegalStateException; {:try_start_c63 .. :try_end_cd8} :catch_d06
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c63 .. :try_end_cd8} :catch_d15

    .line 12277
    :cond_cd8
    :goto_cd8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/high16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_d21

    .line 12278
    const v22, 0x7f08052d

    .line 12283
    .local v22, displayMsg:I
    :goto_ce9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3f

    .line 12267
    .end local v22           #displayMsg:I
    :catch_d06
    move-exception v23

    .line 12268
    .local v23, e:Ljava/lang/IllegalStateException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_NULLMSG - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12269
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 12270
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_cd8

    .line 12271
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :catch_d15
    move-exception v23

    .line 12272
    .local v23, e:Ljava/lang/IllegalArgumentException;
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12273
    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_cd8

    .line 12280
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :cond_d21
    const v22, 0x7f08052f

    .restart local v22       #displayMsg:I
    goto :goto_ce9

    .line 12290
    .end local v22           #displayMsg:I
    :sswitch_d25
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    if-nez v30, :cond_d41

    .line 12293
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT mAttachmentList == null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 12303
    :cond_d41
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v24

    .restart local v24       #i:I
    :goto_d45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v30

    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_da2

    .line 12304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    if-eqz v30, :cond_dcb

    .line 12305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 12306
    .local v5, _attachmentId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 12307
    .local v7, _messageId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_dbf

    .line 12313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->startAttachmentDownloadForZ7(JJ)V

    .line 12333
    .end local v5           #_attachmentId:J
    .end local v7           #_messageId:J
    :cond_da2
    :goto_da2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3f

    .line 12334
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl :mAttatchmentCount == mAttachmentCnt_saved"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 12320
    .restart local v5       #_attachmentId:J
    .restart local v7       #_messageId:J
    :cond_dbf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->finishAttachmentDownloadForZ7(J)V

    goto :goto_da2

    .line 12303
    .end local v5           #_attachmentId:J
    .end local v7           #_messageId:J
    :cond_dcb
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_d45

    .line 12340
    .end local v24           #i:I
    :sswitch_dcf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 12341
    .local v13, attachmentId1:J
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 12343
    .local v26, messageId:J
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_START"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v9

    .line 12347
    .local v9, attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_e54

    .line 12348
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_START : mContentUri is null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v25

    .line 12350
    .local v25, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v25, :cond_3f

    .line 12351
    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v30, :cond_3f

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3f

    .line 12352
    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lcom/android/email/activity/MessageViewForSeven;->startDownloadAttachment(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto/16 :goto_3f

    .line 12357
    .end local v25           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_e54
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_START : mContentUri is not NULL don\'t start download"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 12364
    .end local v9           #attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v13           #attachmentId1:J
    .end local v26           #messageId:J
    :sswitch_e5d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 12365
    .local v15, attachmentId2:J
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12366
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISHmAttachmentCnt: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mAttachmentCount : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v32 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12368
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_f0e

    .line 12369
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9708()I

    .line 12371
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_106e

    .line 12372
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    .line 12373
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    .line 12378
    :goto_ed8
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-boolean v32, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12392
    :cond_f0e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 12394
    .restart local v11       #attachmentId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7600(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    if-eqz v30, :cond_1073

    .line 12396
    new-instance v30, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12428
    :goto_f40
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3f

    .line 12429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    .line 12430
    .restart local v19       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v17

    .line 12433
    .local v17, attfromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v17, :cond_1131

    .line 12434
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_f6f
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_1011

    .line 12435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    if-eqz v30, :cond_112d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-nez v30, :cond_112d

    .line 12437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_1124

    .line 12438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 12439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 12440
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " -> "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12455
    .end local v24           #i:I
    :cond_1011
    :goto_1011
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISHmAttachmentCnt: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mAttachmentCount : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v32 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mAttachmentCnt_saved : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_113a

    .line 12459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->initAttachmentDownloadForZ7()V

    goto/16 :goto_3f

    .line 12375
    .end local v11           #attachmentId:J
    .end local v17           #attfromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19           #count:I
    :cond_106e
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9608()I

    goto/16 :goto_ed8

    .line 12398
    .restart local v11       #attachmentId:J
    :cond_1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5500(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v10

    .line 12399
    .local v10, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v10, :cond_10d7

    .line 12400
    iget-object v0, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    .line 12401
    .local v18, bar:Landroid/widget/ProgressBar;
    if-eqz v18, :cond_10d7

    .line 12405
    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12406
    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 12407
    const/16 v30, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 12410
    iget-object v0, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 12411
    iget-object v0, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 12412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v30

    if-eqz v30, :cond_10d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

    move/from16 v30, v0

    if-nez v30, :cond_10d7

    .line 12413
    iget-object v0, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 12417
    .end local v18           #bar:Landroid/widget/ProgressBar;
    :cond_10d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentThumbnail(J)V
    invoke-static {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7500(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    .line 12418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_110c

    .line 12419
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "Seven attachment download for save"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V
    invoke-static {v0, v11, v12, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7900(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_f40

    .line 12422
    :cond_110c
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "Seven attachment download for view"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V
    invoke-static {v0, v11, v12, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7900(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_f40

    .line 12444
    .end local v10           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .restart local v17       #attfromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v19       #count:I
    .restart local v24       #i:I
    :cond_1124
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH mContentUri is not null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1011

    .line 12434
    :cond_112d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_f6f

    .line 12451
    .end local v24           #i:I
    :cond_1131
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH : attfromDB is null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1011

    .line 12462
    :cond_113a
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    .line 12463
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    goto/16 :goto_3f

    .line 12469
    .end local v11           #attachmentId:J
    .end local v15           #attachmentId2:J
    .end local v17           #attfromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19           #count:I
    :sswitch_1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->setMessageWebViewHeight()V
    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto/16 :goto_3f

    .line 11604
    :sswitch_data_1150
    .sparse-switch
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_3b5
        0x3 -> :sswitch_813
        0x4 -> :sswitch_871
        0x5 -> :sswitch_8f0
        0x6 -> :sswitch_900
        0xa -> :sswitch_a97
        0xc -> :sswitch_aa7
        0xd -> :sswitch_613
        0xe -> :sswitch_6f8
        0x10 -> :sswitch_7a6
        0x12 -> :sswitch_ab7
        0x13 -> :sswitch_aeb
        0x14 -> :sswitch_c21
        0x15 -> :sswitch_c3b
        0x16 -> :sswitch_c58
        0x17 -> :sswitch_83e
        0x18 -> :sswitch_1145
        0x3e8 -> :sswitch_2cd
        0x3e9 -> :sswitch_2fb
        0x3ea -> :sswitch_329
        0xfa0 -> :sswitch_3f
        0x10000 -> :sswitch_40
        0x186a0 -> :sswitch_d25
        0x186a1 -> :sswitch_dcf
        0x186a2 -> :sswitch_e5d
        0x20000 -> :sswitch_81
        0x30000 -> :sswitch_f3
        0x40000 -> :sswitch_159
        0x50000 -> :sswitch_1bf
        0x60000 -> :sswitch_225
        0x70000 -> :sswitch_28b
        0x80000 -> :sswitch_c63
        0x80001 -> :sswitch_c63
    .end sparse-switch
.end method

.method public loadData(Ljava/lang/String;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 12533
    const/16 v1, 0x17

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 12534
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12535
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12536
    return-void
.end method

.method public messageChanged()V
    .registers 3

    .prologue
    .line 12642
    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 12643
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12644
    return-void
.end method

.method public networkError()V
    .registers 2

    .prologue
    .line 12549
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 12550
    return-void
.end method

.method public progress(Z)V
    .registers 4
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 12521
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 12522
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_d

    :goto_7
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 12523
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12524
    return-void

    .line 12522
    :cond_d
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public securityRequiredError()V
    .registers 2

    .prologue
    .line 12554
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 12555
    return-void
.end method

.method public setAttachmentsEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 12539
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 12540
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :goto_8
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 12541
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12542
    return-void

    .line 12540
    :cond_e
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public setMessageWebView()V
    .registers 4

    .prologue
    const/16 v2, 0x18

    .line 12732
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->removeMessages(I)V

    .line 12733
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 12734
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12735
    return-void
.end method

.method public showLoadMoreDialog()V
    .registers 7

    .prologue
    .line 12703
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 12704
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 12705
    .local v1, ft:Landroid/app/FragmentTransaction;
    const-string v4, "LoadMoreDialog"

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 12707
    .local v3, prev:Landroid/app/Fragment;
    if-eqz v3, :cond_1c

    .line 12709
    const-string v4, "Email"

    const-string v5, "Inside if (prev != null)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12711
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 12713
    :cond_1c
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 12715
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_60

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_60

    .line 12716
    :cond_36
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_60

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_60

    .line 12720
    :cond_4c
    const v4, 0x7f080251

    const/16 v5, 0xe

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    move-result-object v2

    .line 12723
    .local v2, newFragment:Landroid/app/DialogFragment;
    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 12724
    const-string v4, "LoadMoreDialog"

    invoke-virtual {v2, v0, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 12727
    .end local v2           #newFragment:Landroid/app/DialogFragment;
    :cond_60
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 12729
    return-void
.end method

.method public showSmimeProgressDialog(ZJI)V
    .registers 9
    .parameter "progress"
    .parameter "attachmentId"
    .parameter "DialogType"

    .prologue
    .line 12661
    if-eqz p1, :cond_39

    .line 12662
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_35

    .line 12666
    :cond_18
    const/4 v2, 0x2

    if-ne p4, v2, :cond_36

    const/16 v0, 0xb

    .line 12668
    .local v0, dType:I
    :goto_1d
    const v2, 0x7f080250

    invoke-static {v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    move-result-object v1

    .line 12670
    .local v1, newFragment:Landroid/app/DialogFragment;
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 12671
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "MessageViewFragmentBase >>"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 12679
    .end local v0           #dType:I
    .end local v1           #newFragment:Landroid/app/DialogFragment;
    :cond_35
    :goto_35
    return-void

    .line 12666
    :cond_36
    const/16 v0, 0xc

    goto :goto_1d

    .line 12675
    :cond_39
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 12676
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_35
.end method

.method public showSmimeUserChoiceDialog()V
    .registers 7

    .prologue
    .line 12682
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 12683
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "SmimeUserChoice"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 12684
    .local v3, prev:Landroid/app/Fragment;
    if-eqz v3, :cond_22

    .line 12685
    const-string v4, "SMIME"

    const-string v5, "REMOVING FRAGMENT Dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12687
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 12689
    :cond_22
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 12690
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_71

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_71

    .line 12691
    :cond_3c
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_58

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_71

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_71

    .line 12693
    :cond_58
    const v4, 0x7f080251

    const/16 v5, 0xf

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    move-result-object v2

    .line 12695
    .local v2, newFragment:Landroid/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12696
    .local v0, arg:Landroid/os/Bundle;
    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 12697
    const-string v4, "SmimeUserChoice"

    invoke-virtual {v2, v1, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 12700
    .end local v0           #arg:Landroid/os/Bundle;
    .end local v2           #newFragment:Landroid/app/DialogFragment;
    :cond_71
    return-void
.end method

.method public startIrmRemoval()V
    .registers 2

    .prologue
    .line 12629
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 12630
    return-void
.end method

.method public startLoadMore()V
    .registers 2

    .prologue
    .line 12589
    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    .line 12590
    return-void
.end method
