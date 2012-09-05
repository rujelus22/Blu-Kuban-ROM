.class Lcom/android/mms/ui/ConversationListFragment$14;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1347
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 1348
    packed-switch p2, :pswitch_data_20

    .line 1367
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 1350
    :pswitch_b
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "mNewComposeKeyListener(),KEYCODE_DPAD_RIGHT"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    move-result v0

    goto :goto_a

    .line 1348
    nop

    :pswitch_data_20
    .packed-switch 0x16
        :pswitch_b
    .end packed-switch
.end method
