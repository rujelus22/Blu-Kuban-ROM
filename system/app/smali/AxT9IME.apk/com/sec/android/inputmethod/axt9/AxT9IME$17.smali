.class Lcom/sec/android/inputmethod/axt9/AxT9IME$17;
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
    .line 4411
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$17;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 4415
    const-string v2, "caps_status"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4416
    .local v0, capslock:Z
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$17;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    if-eqz v0, :cond_18

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$17;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-virtual {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setForcedCapslock(Z)V

    .line 4418
    return-void
.end method
