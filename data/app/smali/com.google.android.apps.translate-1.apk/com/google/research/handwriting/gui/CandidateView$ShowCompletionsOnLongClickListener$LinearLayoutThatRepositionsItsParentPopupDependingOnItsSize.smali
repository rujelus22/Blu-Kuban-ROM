.class Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;
.super Landroid/widget/LinearLayout;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize"
.end annotation


# instance fields
.field anchor:Landroid/view/View;

.field popup:Landroid/widget/PopupWindow;

.field final synthetic this$1:Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->this$1:Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;

    .line 244
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 245
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->this$1:Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;

    iget-object v0, v0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    #getter for: Lcom/google/research/handwriting/gui/CandidateView;->mShowCompletionListBelowCandidates:Z
    invoke-static {v0}, Lcom/google/research/handwriting/gui/CandidateView;->access$000(Lcom/google/research/handwriting/gui/CandidateView;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 256
    :goto_a
    return-void

    .line 254
    :cond_b
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->anchor:Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->anchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x4

    iget-object v4, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    goto :goto_a
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 2
    .parameter "anchor"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->anchor:Landroid/view/View;

    .line 264
    return-void
.end method

.method public setPopup(Landroid/widget/PopupWindow;)V
    .registers 2
    .parameter "popup"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->popup:Landroid/widget/PopupWindow;

    .line 260
    return-void
.end method
