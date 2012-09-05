.class Lcom/android/mms/ui/ConversationListFragment$5;
.super Landroid/os/Handler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
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
    .line 481
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 485
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 493
    :goto_5
    return-void

    .line 487
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->onDeleteStart()V

    goto :goto_5

    .line 490
    :pswitch_c
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$5;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->onDeleteCompleted()V

    goto :goto_5

    .line 485
    :pswitch_data_12
    .packed-switch 0xc8
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
