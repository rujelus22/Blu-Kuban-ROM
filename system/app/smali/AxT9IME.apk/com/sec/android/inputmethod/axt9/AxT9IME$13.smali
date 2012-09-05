.class Lcom/sec/android/inputmethod/axt9/AxT9IME$13;
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
    .line 4331
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$13;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4335
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$13;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4336
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$13;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2502(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z

    .line 4337
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$13;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 4338
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$13;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 4340
    :cond_18
    return-void
.end method
