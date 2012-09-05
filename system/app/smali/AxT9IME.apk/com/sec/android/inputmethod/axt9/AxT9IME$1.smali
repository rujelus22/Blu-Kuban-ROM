.class Lcom/sec/android/inputmethod/axt9/AxT9IME$1;
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
    .line 611
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 613
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14

    .line 622
    :goto_5
    return-void

    .line 615
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 616
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->playKeyClick(I)V

    goto :goto_5

    .line 619
    .end local v0           #keyCode:I
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->vibrate()V

    goto :goto_5

    .line 613
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method
