.class Lcom/android/email/activity/MessageCompose$27$2;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$27;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$27;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$27;)V
    .registers 2
    .parameter

    .prologue
    .line 8363
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$27$2;->this$1:Lcom/android/email/activity/MessageCompose$27;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "event"

    .prologue
    .line 8366
    const-string v0, "MessageCompose Loadmore"

    const-string v1, "Inside onKey:"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8367
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 8368
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$27$2;->this$1:Lcom/android/email/activity/MessageCompose$27;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Controller;->loadMoreCancel()V

    .line 8369
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$27$2;->this$1:Lcom/android/email/activity/MessageCompose$27;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8370
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$27$2;->this$1:Lcom/android/email/activity/MessageCompose$27;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$27;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 8372
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method
