.class Lcom/sec/android/inputmethod/axt9/AxT9IME$21;
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
    .line 5582
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$21;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5586
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$21;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateRingerMode()V
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    .line 5587
    return-void
.end method
