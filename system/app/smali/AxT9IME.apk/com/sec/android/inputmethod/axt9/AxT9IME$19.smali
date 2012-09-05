.class Lcom/sec/android/inputmethod/axt9/AxT9IME$19;
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
    .line 4433
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 4438
    const-string v1, "com.broadcom.bt.service.hid.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4440
    .local v0, state:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_13

    .line 4441
    :cond_d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->settingHWKeyboardConnection(Z)V
    invoke-static {v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2700(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    .line 4445
    :cond_12
    :goto_12
    return-void

    .line 4442
    :cond_13
    if-eqz v0, :cond_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 4443
    :cond_18
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v2, 0x0

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->settingHWKeyboardConnection(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2700(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    goto :goto_12
.end method
