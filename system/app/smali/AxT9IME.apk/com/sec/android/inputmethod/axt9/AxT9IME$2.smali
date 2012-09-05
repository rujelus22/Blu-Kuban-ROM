.class Lcom/sec/android/inputmethod/axt9/AxT9IME$2;
.super Landroid/os/Handler;
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
    .line 627
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 629
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 639
    :cond_5
    :goto_5
    return-void

    .line 631
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleVoiceResults()V
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    goto :goto_5

    .line 634
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKeyTime:J
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSwipeTriggerTimeMillis:J
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 635
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->startListening(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    goto :goto_5

    .line 629
    nop

    :pswitch_data_24
    .packed-switch 0x3
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
