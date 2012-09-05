.class Lcom/android/inputmethod/latin/CandidateView$1;
.super Landroid/os/Handler;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/CandidateView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/CandidateView;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/inputmethod/latin/CandidateView$1;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/16 v1, 0x8

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 106
    :cond_7
    :goto_7
    return-void

    .line 96
    :pswitch_8
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$1;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$000(Lcom/android/inputmethod/latin/CandidateView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 99
    :pswitch_12
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$1;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$000(Lcom/android/inputmethod/latin/CandidateView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$1;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$100(Lcom/android/inputmethod/latin/CandidateView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 101
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$1;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #calls: Lcom/android/inputmethod/latin/CandidateView;->removeHighlight()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$200(Lcom/android/inputmethod/latin/CandidateView;)V

    goto :goto_7

    .line 94
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method
