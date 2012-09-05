.class Lcom/android/email/activity/MessageCompose$48;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$qrString:[Ljava/lang/String;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 12743
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$48;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I
    invoke-static {v0, p2}, Lcom/android/email/activity/MessageCompose;->access$13102(Lcom/android/email/activity/MessageCompose;I)I

    .line 12747
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$48;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 12748
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$48;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$48;->val$qrString:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$48;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$13100(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 12755
    :goto_26
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12756
    return-void

    .line 12751
    :cond_2a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$48;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$48;->val$qrString:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$48;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$13100(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_26
.end method
