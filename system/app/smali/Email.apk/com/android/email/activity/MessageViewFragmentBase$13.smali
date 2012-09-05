.class Lcom/android/email/activity/MessageViewFragmentBase$13;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->saveRecipientAsGroupDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter

    .prologue
    .line 8052
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

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

    .line 8054
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 8055
    packed-switch p2, :pswitch_data_3c

    .line 8071
    :goto_7
    return-void

    .line 8057
    :pswitch_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6300(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v2

    const v3, 0x7f0802e7

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V
    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6400(Lcom/android/email/activity/MessageViewFragmentBase;IIII)V

    goto :goto_7

    .line 8062
    :pswitch_1d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v1

    const v2, 0x7f0802ef

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V
    invoke-static {v0, v1, v3, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6400(Lcom/android/email/activity/MessageViewFragmentBase;IIII)V

    goto :goto_7

    .line 8066
    :pswitch_2c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6300(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v1

    const v2, 0x7f0802f0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V
    invoke-static {v0, v3, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6400(Lcom/android/email/activity/MessageViewFragmentBase;IIII)V

    goto :goto_7

    .line 8055
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1d
        :pswitch_2c
    .end packed-switch
.end method
