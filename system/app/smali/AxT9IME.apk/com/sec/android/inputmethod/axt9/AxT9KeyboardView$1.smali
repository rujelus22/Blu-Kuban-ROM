.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;
.super Landroid/os/Handler;
.source "AxT9KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V
    .registers 2
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 594
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_6a

    .line 617
    :cond_5
    :goto_5
    return-void

    .line 596
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 597
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 602
    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 603
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 608
    :pswitch_2c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->repeatKey()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 609
    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 610
    .local v0, repeat:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_5d

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRecaptureOn()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    if-eqz v1, :cond_5d

    :cond_57
    const-wide/16 v1, 0xc8

    :goto_59
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_5d
    const-wide/16 v1, 0x32

    goto :goto_59

    .line 614
    .end local v0           #repeat:Landroid/os/Message;
    :pswitch_60
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z
    invoke-static {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/view/MotionEvent;)Z

    goto :goto_5

    .line 594
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_19
        :pswitch_2c
        :pswitch_60
    .end packed-switch
.end method
