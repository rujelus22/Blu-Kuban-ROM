.class Lcom/sec/android/inputmethod/axt9/AxT9IME$15;
.super Landroid/content/BroadcastReceiver;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 2
    .parameter

    .prologue
    .line 4350
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x4

    .line 4354
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4383
    :cond_9
    :goto_9
    return-void

    .line 4358
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4359
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.samsung.sec.android.inputmethod.axt9.EDIT_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4360
    const-string v2, "com.samsung.sec.android.inputmethod.axt9.EDIT_ACTION"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4362
    .local v1, handlerMessage:Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 4365
    const-string v2, "START_SELECTING_TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 4366
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 4369
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 4370
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 4371
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_9

    .line 4374
    :cond_49
    const-string v2, "STOP_SELECTING_TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4375
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 4376
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 4377
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 4378
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_9
.end method
