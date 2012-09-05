.class Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscardDraftListener"
.end annotation


# instance fields
.field private mContinueIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1080
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1091
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 1093
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1097
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1098
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1109
    :goto_22
    return-void

    .line 1100
    :cond_23
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    if-eqz v0, :cond_34

    .line 1101
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1102
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onResume()V

    goto :goto_22

    .line 1105
    :cond_34
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2500(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_22
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;
    .registers 2
    .parameter "intent"

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->mContinueIntent:Landroid/content/Intent;

    .line 1086
    return-object p0
.end method
