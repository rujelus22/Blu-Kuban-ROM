.class Lcom/sec/android/inputmethod/axt9/AxT9IME$6;
.super Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;
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
    .registers 3
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearLastKey()V

    .line 716
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    .line 717
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 718
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    .line 719
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    move-result-object v1

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 720
    return-void
.end method
