.class Lcom/android/email/activity/MessageCompose$39;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowPriorityDialog()V
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
    .line 11396
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 11399
    packed-switch p2, :pswitch_data_54

    .line 11411
    :pswitch_6
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->mPriority:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$4602(Lcom/android/email/activity/MessageCompose;I)I

    .line 11412
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11413
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11416
    :goto_1e
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 11417
    return-void

    .line 11401
    :pswitch_22
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x2

    #setter for: Lcom/android/email/activity/MessageCompose;->mPriority:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$4602(Lcom/android/email/activity/MessageCompose;I)I

    .line 11402
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11403
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 11406
    :pswitch_3b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mPriority:I
    invoke-static {v0, v3}, Lcom/android/email/activity/MessageCompose;->access$4602(Lcom/android/email/activity/MessageCompose;I)I

    .line 11407
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11408
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 11399
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_22
        :pswitch_6
        :pswitch_3b
    .end packed-switch
.end method
