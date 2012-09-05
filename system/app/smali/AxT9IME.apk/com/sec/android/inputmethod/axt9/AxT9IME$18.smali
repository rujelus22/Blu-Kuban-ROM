.class Lcom/sec/android/inputmethod/axt9/AxT9IME$18;
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
    .line 4421
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$18;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4427
    const-string v1, "altenative_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4429
    .local v0, code:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$18;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlternativeChar:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2602(Lcom/sec/android/inputmethod/axt9/AxT9IME;Ljava/lang/String;)Ljava/lang/String;

    .line 4430
    return-void
.end method
