.class public Lcom/google/research/handwriting/gui/CandidateViewHandler;
.super Ljava/lang/Object;
.source "CandidateViewHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;
    }
.end annotation


# static fields
.field public static final NONE_SELECTED:Ljava/lang/String; = ""


# instance fields
.field private final askTheCloudButton:Landroid/widget/Button;

.field private final candidateScrollView:Landroid/widget/HorizontalScrollView;

.field private final candidatesView:Lcom/google/research/handwriting/gui/CandidateView;

.field private final container:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .registers 4
    .parameter "inflater"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Lcom/google/research/handwriting/gui/R$layout;->candidates:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->container:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->container:Landroid/view/View;

    sget v1, Lcom/google/research/handwriting/gui/R$id;->candidates:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/gui/CandidateView;

    iput-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->candidatesView:Lcom/google/research/handwriting/gui/CandidateView;

    .line 55
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->container:Landroid/view/View;

    sget v1, Lcom/google/research/handwriting/gui/R$id;->candidates_scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->candidateScrollView:Landroid/widget/HorizontalScrollView;

    .line 57
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->container:Landroid/view/View;

    sget v1, Lcom/google/research/handwriting/gui/R$id;->ask_the_cloud:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->askTheCloudButton:Landroid/widget/Button;

    .line 58
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->candidatesView:Lcom/google/research/handwriting/gui/CandidateView;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/CandidateView;->clear()V

    .line 103
    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->container:Landroid/view/View;

    return-object v0
.end method

.method public scrollCandidatesToBeginning()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->candidateScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 96
    return-void
.end method

.method public setAskTheCloudAction(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->askTheCloudButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->askTheCloudButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_9
    return-void
.end method

.method public setCandidateSuggestions(Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V
    .registers 4
    .parameter "suggestions"
    .parameter "completions"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->candidatesView:Lcom/google/research/handwriting/gui/CandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/google/research/handwriting/gui/CandidateView;->setSuggestions(Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V

    .line 80
    return-void
.end method

.method public setCompletionListLocationBelowCandidates(Z)V
    .registers 3
    .parameter "showBelow"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->candidatesView:Lcom/google/research/handwriting/gui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/google/research/handwriting/gui/CandidateView;->setCompletionListLocationBelowCandidates(Z)V

    .line 110
    return-void
.end method

.method public setListener(Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->candidatesView:Lcom/google/research/handwriting/gui/CandidateView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/research/handwriting/gui/CandidateView;->setListener(Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;Z)V

    .line 67
    return-void
.end method

.method public setSelectedWord(Ljava/lang/String;)V
    .registers 3
    .parameter "sel"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->candidatesView:Lcom/google/research/handwriting/gui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/google/research/handwriting/gui/CandidateView;->setSelectedWord(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public showAskTheCloudButton(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->askTheCloudButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    .line 117
    if-eqz p1, :cond_d

    .line 118
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->askTheCloudButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    :cond_c
    :goto_c
    return-void

    .line 120
    :cond_d
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateViewHandler;->askTheCloudButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_c
.end method
