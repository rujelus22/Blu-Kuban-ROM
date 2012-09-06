.class Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$2;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;

.field final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;Landroid/widget/PopupWindow;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$2;->this$1:Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;

    iput-object p2, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$2;->val$popup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$2;->this$1:Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;

    iget-object v0, v0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    #getter for: Lcom/google/research/handwriting/gui/CandidateView;->mListener:Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;
    invoke-static {v0}, Lcom/google/research/handwriting/gui/CandidateView;->access$400(Lcom/google/research/handwriting/gui/CandidateView;)Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;

    move-result-object v0

    const/16 v1, 0x64

    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;->onPickSuggestion(ILjava/lang/CharSequence;Z)V

    .line 296
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$2;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 297
    return-void
.end method
