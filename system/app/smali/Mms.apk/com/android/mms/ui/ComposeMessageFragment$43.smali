.class Lcom/android/mms/ui/ComposeMessageFragment$43;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$append:Z

.field final synthetic val$dataUri:Landroid/net/Uri;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I

.field final synthetic val$reqCode:I

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4863
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$error:I

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$dataUri:Landroid/net/Uri;

    iput p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$reqCode:I

    iput-boolean p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$append:Z

    iput-boolean p7, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$sendMultiple:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 4865
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_12

    .line 4866
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "getActivity is null so Fragment not available!!!"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4937
    :cond_11
    :goto_11
    return-void

    .line 4869
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 4870
    .local v7, res:Landroid/content/res/Resources;
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$mediaTypeStringId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4873
    .local v6, mediaType:Ljava/lang/String;
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$error:I

    packed-switch v0, :pswitch_data_170

    .line 4916
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$error:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4875
    :pswitch_3e
    const v0, 0x7f090183

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4876
    .local v2, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_11

    .line 4879
    .end local v2           #message:Ljava/lang/String;
    :pswitch_54
    const v0, 0x7f090184

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4880
    .local v1, title:Ljava/lang/String;
    const v0, 0x7f090185

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4920
    .restart local v2       #message:Ljava/lang/String;
    :cond_62
    :goto_62
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$sendMultiple:Z

    if-eqz v0, :cond_138

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_138

    .line 4922
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v3, v4, v11}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v5, v11}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v5, v10, v11}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7002(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4927
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_11

    .line 4884
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_99
    const v0, 0x7f090045

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4885
    .restart local v1       #title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v3, 0x7f090199

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6800(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 4886
    const v0, 0x7f09017d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4888
    .restart local v2       #message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 4889
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    .line 4893
    .local v8, text:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4894
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_62

    .line 4897
    .end local v2           #message:Ljava/lang/String;
    .end local v8           #text:Ljava/lang/String;
    :cond_102
    const v0, 0x7f09018b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4900
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_62

    .line 4902
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_10b
    const v0, 0x7f090047

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4903
    .restart local v1       #title:Ljava/lang/String;
    const v0, 0x7f090048

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4904
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_62

    .line 4907
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_11b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$dataUri:Landroid/net/Uri;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$reqCode:I

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$append:Z

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V
    invoke-static {v0, v6, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6900(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    goto/16 :goto_11

    .line 4911
    :pswitch_128
    const v0, 0x7f0901b8

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4912
    .restart local v1       #title:Ljava/lang/String;
    const v0, 0x7f0901b9

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4913
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_62

    .line 4928
    :cond_138
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$sendMultiple:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4930
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v3, v4, v11}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v5, v11}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v5, v10, v11}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7002(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4935
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_11

    .line 4873
    nop

    :pswitch_data_170
    .packed-switch -0x7
        :pswitch_99
        :pswitch_128
        :pswitch_11b
        :pswitch_10b
        :pswitch_54
        :pswitch_99
        :pswitch_3e
    .end packed-switch
.end method
