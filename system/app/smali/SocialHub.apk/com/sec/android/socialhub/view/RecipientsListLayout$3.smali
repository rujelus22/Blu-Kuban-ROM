.class Lcom/sec/android/socialhub/view/RecipientsListLayout$3;
.super Ljava/lang/Object;
.source "RecipientsListLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/RecipientsListLayout;->showAlertDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

.field final synthetic val$ButtonIndex:I

.field final synthetic val$button:Lcom/sec/android/socialhub/view/RecipientButton;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;Lcom/sec/android/socialhub/view/RecipientButton;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$3;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    iput-object p2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$3;->val$button:Lcom/sec/android/socialhub/view/RecipientButton;

    iput p3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$3;->val$ButtonIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "index"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$3;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->isOpenedPopup:Z

    .line 238
    packed-switch p2, :pswitch_data_18

    .line 244
    :goto_8
    return-void

    .line 241
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$3;->val$button:Lcom/sec/android/socialhub/view/RecipientButton;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$3;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    #getter for: Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->access$000(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$3;->val$ButtonIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/view/RecipientButton;->delete(Landroid/os/Handler;I)V

    goto :goto_8

    .line 238
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
