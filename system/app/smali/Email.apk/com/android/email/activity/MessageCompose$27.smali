.class Lcom/android/email/activity/MessageCompose$27;
.super Landroid/os/Handler;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 8195
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 8198
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_560

    .line 8495
    :cond_8
    :goto_8
    :sswitch_8
    return-void

    .line 8200
    :sswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 8201
    .local v7, string:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_25

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_62

    .line 8202
    :cond_25
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3500(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8203
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3802(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8204
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8205
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/activity/AddressTextView;->setSelection(I)V

    .line 8206
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 8207
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 8208
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$3802(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8236
    :cond_5c
    :goto_5c
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V
    invoke-static {v8, v6}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;Z)V

    goto :goto_8

    .line 8211
    :cond_62
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_7a

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_b2

    .line 8213
    :cond_7a
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3600(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8214
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3802(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8215
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8216
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/activity/AddressTextView;->setSelection(I)V

    .line 8217
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 8218
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 8219
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$3802(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_5c

    .line 8222
    :cond_b2
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_ca

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5c

    .line 8224
    :cond_ca
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3700(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8225
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v6}, Lcom/android/email/activity/MessageCompose;->access$3802(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8226
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8227
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/email/activity/AddressTextView;->setSelection(I)V

    .line 8232
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 8233
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 8234
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$3802(Lcom/android/email/activity/MessageCompose;Z)Z

    goto/16 :goto_5c

    .line 8239
    .end local v7           #string:Ljava/lang/String;
    :sswitch_103
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_11b

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_126

    .line 8240
    :cond_11b
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    goto/16 :goto_8

    .line 8241
    :cond_126
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_13e

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_149

    .line 8243
    :cond_13e
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    goto/16 :goto_8

    .line 8244
    :cond_149
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v9

    if-nez v9, :cond_161

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_8

    .line 8246
    :cond_161
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    goto/16 :goto_8

    .line 8250
    :sswitch_16c
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_1ff

    .line 8251
    .local v6, progress:Z
    :goto_170
    if-eqz v6, :cond_21f

    .line 8253
    const/4 v4, 0x0

    .line 8254
    .local v4, message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v9

    if-eqz v9, :cond_1f8

    .line 8255
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_202

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v9, :cond_202

    .line 8256
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    const v10, 0x7f0804ff

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8261
    :cond_196
    :goto_196
    :try_start_196
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_1b3

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_1b3

    .line 8263
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1b3} :catch_55d

    .line 8268
    :cond_1b3
    :goto_1b3
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-nez v9, :cond_1c7

    .line 8269
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Landroid/app/ProgressDialog;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v10, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$9802(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 8272
    :cond_1c7
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_1f8

    .line 8273
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    new-instance v10, Lcom/android/email/activity/MessageCompose$27$1;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MessageCompose$27$1;-><init>(Lcom/android/email/activity/MessageCompose$27;)V

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 8287
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8288
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 8289
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 8293
    :cond_1f8
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v8, v6}, Lcom/android/email/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto/16 :goto_8

    .end local v4           #message:Ljava/lang/String;
    .end local v6           #progress:Z
    :cond_1ff
    move v6, v8

    .line 8250
    goto/16 :goto_170

    .line 8257
    .restart local v4       #message:Ljava/lang/String;
    .restart local v6       #progress:Z
    :cond_202
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_196

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v9, :cond_196

    .line 8258
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    const v10, 0x7f080500

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_196

    .line 8296
    .end local v4           #message:Ljava/lang/String;
    :cond_21f
    :try_start_21f
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_230

    .line 8297
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8298
    :cond_230
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v9, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8, v9}, Lcom/android/email/activity/MessageCompose;->access$9802(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_236} :catch_238

    goto/16 :goto_8

    .line 8299
    :catch_238
    move-exception v8

    goto/16 :goto_8

    .line 8304
    .end local v6           #progress:Z
    :sswitch_23b
    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v9

    .line 8307
    .local v0, attachmentId:J
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 8308
    const-wide/16 v9, -0x1

    cmp-long v9, v0, v9

    if-nez v9, :cond_2a6

    .line 8310
    :try_start_24c
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_25d

    .line 8311
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8312
    :cond_25d
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v10, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$9802(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_263} :catch_55a

    .line 8316
    :goto_263
    const/4 v4, 0x0

    .line 8317
    .restart local v4       #message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_28a

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v9, :cond_28a

    .line 8318
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    const v10, 0x7f080502

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8322
    :cond_27f
    :goto_27f
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 8319
    :cond_28a
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_27f

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v9, :cond_27f

    .line 8320
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    const v10, 0x7f080501

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_27f

    .line 8324
    .end local v4           #message:Ljava/lang/String;
    :cond_2a6
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    if-eqz v9, :cond_2c4

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v9

    sget-object v10, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v9, v10, :cond_8

    .line 8326
    :cond_2c4
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v10, v11, v0, v1}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$5002(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    .line 8327
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v8}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_8

    .line 8333
    .end local v0           #attachmentId:J
    :sswitch_2dd
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 8336
    :sswitch_2ea
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$9902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    .line 8337
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$9900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v8}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_8

    .line 8342
    :sswitch_303
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;)I

    move-result v9

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)I

    move-result v10

    if-lt v9, v10, :cond_8

    .line 8343
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$5302(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 8344
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$5502(Lcom/android/email/activity/MessageCompose;I)I

    .line 8345
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$5402(Lcom/android/email/activity/MessageCompose;I)I

    .line 8346
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8348
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10000(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    if-eqz v9, :cond_34e

    .line 8349
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10000(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 8351
    :cond_34e
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$10100(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v10, v8}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$10002(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_8

    .line 8360
    :sswitch_368
    :try_start_368
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_384

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_8

    .line 8362
    :cond_384
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v9, Landroid/app/ProgressDialog;

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v9, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8, v9}, Lcom/android/email/activity/MessageCompose;->access$10202(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 8363
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    new-instance v9, Lcom/android/email/activity/MessageCompose$27$2;

    invoke-direct {v9, p0}, Lcom/android/email/activity/MessageCompose$27$2;-><init>(Lcom/android/email/activity/MessageCompose$27;)V

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 8375
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800b4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8377
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 8378
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V
    :try_end_3c7
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_3c7} :catch_3c9

    goto/16 :goto_8

    .line 8380
    :catch_3c9
    move-exception v3

    .line 8381
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "Compose >>"

    const-string v9, "MSG_LOADMORE_START - Exception"

    invoke-static {v8, v9}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8382
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 8401
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_3d6
    const-string v9, "Compose >>"

    const-string v10, "MSG_MESSAGE_CHANGED"

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8402
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10000(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    if-eqz v9, :cond_3ee

    .line 8403
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10000(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 8405
    :cond_3ee
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$10100(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v10, v8}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$10002(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_8

    .line 8409
    :sswitch_408
    const-string v9, "Compose >>"

    const-string v10, "MSG_LOADMORE_FINISH"

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8411
    :try_start_40f
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_42c

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_42c

    .line 8412
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_42c
    .catch Ljava/lang/Exception; {:try_start_40f .. :try_end_42c} :catch_467

    .line 8422
    :cond_42c
    :goto_42c
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    if-eqz v9, :cond_473

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v9, :cond_473

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v9, :cond_473

    .line 8423
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$5002(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    .line 8424
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v8}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_8

    .line 8417
    :catch_467
    move-exception v3

    .line 8418
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v9, "Compose >>"

    const-string v10, "Exception - MSG_LOADMORE_FINISH"

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8419
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42c

    .line 8426
    .end local v3           #e:Ljava/lang/Exception;
    :cond_473
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10000(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    if-eqz v9, :cond_484

    .line 8427
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10000(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;

    move-result-object v9

    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 8429
    :cond_484
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v10, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$10100(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v10, v8}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;
    invoke-static {v9, v8}, Lcom/android/email/activity/MessageCompose;->access$10002(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_8

    .line 8437
    :sswitch_49e
    const/4 v5, 0x0

    .line 8439
    .local v5, misspelledWordCount:I
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 8441
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_4be

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_4be

    .line 8442
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8445
    :cond_4be
    if-nez v5, :cond_8

    .line 8447
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->getComposerActivityContext()Landroid/content/Context;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$10400(Lcom/android/email/activity/MessageCompose;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8449
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0805dd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8451
    new-array v9, v6, [Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v10}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0805e0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v8

    new-instance v10, Lcom/android/email/activity/MessageCompose$27$3;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MessageCompose$27$3;-><init>(Lcom/android/email/activity/MessageCompose$27;)V

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8459
    const v9, 0x7f080042

    new-instance v10, Lcom/android/email/activity/MessageCompose$27$4;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MessageCompose$27$4;-><init>(Lcom/android/email/activity/MessageCompose$27;)V

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8466
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 8468
    sput-boolean v8, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    .line 8474
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$10500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {v8, v9}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    .line 8476
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {v8, v9}, Lcom/android/email/activity/ToolBarScrollView;->changeSpellcheckBtnState(Z)V

    goto/16 :goto_8

    .line 8483
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #misspelledWordCount:I
    :sswitch_528
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/HtmlComposerView;->hasWindowFocus()Z

    move-result v8

    if-ne v6, v8, :cond_54c

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-boolean v8, v8, Lcom/android/email/activity/MessageCompose;->mPageFinished:Z

    if-ne v6, v8, :cond_54c

    .line 8484
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 8485
    const-string v8, "TEST"

    const-string v9, "MSG_HTMLCOMPOSER_DELAYED_FOCUS request focus"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 8487
    :cond_54c
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v8}, Lcom/android/email/activity/MessageCompose;->delayedFocusForHtmlComposerView()V

    .line 8488
    const-string v8, "TEST"

    const-string v9, "MSG_HTMLCOMPOSER_DELAYED_FOCUS delayed again"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 8313
    .restart local v0       #attachmentId:J
    :catch_55a
    move-exception v9

    goto/16 :goto_263

    .line 8265
    .end local v0           #attachmentId:J
    .restart local v4       #message:Ljava/lang/String;
    .restart local v6       #progress:Z
    :catch_55d
    move-exception v9

    goto/16 :goto_1b3

    .line 8198
    :sswitch_data_560
    .sparse-switch
        0x8f -> :sswitch_16c
        0x90 -> :sswitch_23b
        0x91 -> :sswitch_2dd
        0x92 -> :sswitch_2ea
        0x93 -> :sswitch_303
        0x94 -> :sswitch_368
        0x95 -> :sswitch_408
        0x96 -> :sswitch_8
        0x97 -> :sswitch_3d6
        0x98 -> :sswitch_49e
        0x9a -> :sswitch_528
        0x7011214 -> :sswitch_9
        0x7011215 -> :sswitch_103
    .end sparse-switch
.end method
