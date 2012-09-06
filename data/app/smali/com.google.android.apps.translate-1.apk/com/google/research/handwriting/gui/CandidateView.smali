.class public Lcom/google/research/handwriting/gui/CandidateView;
.super Landroid/widget/LinearLayout;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;
    }
.end annotation


# static fields
.field private static final MAX_SUGGESTIONS:I = 0x20


# instance fields
.field private final mColorCandidateBackground:I

.field private final mColorCompletionDivider:I

.field private final mColorCompletionNormal:I

.field private final mColorFirstCandidate:I

.field private final mColorIncorrect:I

.field private final mColorNonSelectable:I

.field private final mColorNormal:I

.field private final mColorSelected:I

.field private mCompletion:Z

.field private mCompletions:Lcom/google/research/handwriting/gui/SuggestedWords;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;

.field mScrollView:Landroid/widget/HorizontalScrollView;

.field private mShowCompletionListBelowCandidates:Z

.field private mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

.field private final mWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private selectedWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v9, 0x64

    const/4 v7, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mWords:Ljava/util/ArrayList;

    .line 49
    iput-boolean v7, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletion:Z

    .line 53
    sget-object v6, Lcom/google/research/handwriting/gui/SuggestedWords;->EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;

    iput-object v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    .line 54
    sget-object v6, Lcom/google/research/handwriting/gui/SuggestedWords;->EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;

    iput-object v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletions:Lcom/google/research/handwriting/gui/SuggestedWords;

    .line 55
    iput-boolean v7, p0, Lcom/google/research/handwriting/gui/CandidateView;->mShowCompletionListBelowCandidates:Z

    .line 66
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 68
    .local v3, res:Landroid/content/res/Resources;
    sget v6, Lcom/google/research/handwriting/gui/R$color;->candidate_normal:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorNormal:I

    .line 69
    sget v6, Lcom/google/research/handwriting/gui/R$color;->candidate_selected:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorSelected:I

    .line 70
    sget v6, Lcom/google/research/handwriting/gui/R$color;->candidate_incorrect:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorIncorrect:I

    .line 71
    sget v6, Lcom/google/research/handwriting/gui/R$color;->candidate_not_selectable:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorNonSelectable:I

    .line 72
    sget v6, Lcom/google/research/handwriting/gui/R$color;->candidate_first:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorFirstCandidate:I

    .line 73
    sget v6, Lcom/google/research/handwriting/gui/R$color;->completion_normal:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorCompletionNormal:I

    .line 74
    sget v6, Lcom/google/research/handwriting/gui/R$color;->completion_divider:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorCompletionDivider:I

    .line 75
    sget v6, Lcom/google/research/handwriting/gui/R$color;->candidate_background:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorCandidateBackground:I

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 78
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_64
    const/16 v6, 0x20

    if-ge v1, v6, :cond_a0

    .line 79
    sget v6, Lcom/google/research/handwriting/gui/R$layout;->candidate:I

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 80
    .local v5, v:Landroid/view/View;
    sget v6, Lcom/google/research/handwriting/gui/R$id;->candidate_word:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 84
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setHeight(I)V

    .line 85
    invoke-virtual {p0, v9}, Lcom/google/research/handwriting/gui/CandidateView;->setMinimumHeight(I)V

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v6, Lcom/google/research/handwriting/gui/R$id;->candidate_divider:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, divider:Landroid/widget/ImageView;
    if-nez v1, :cond_9e

    const/16 v6, 0x8

    :goto_93
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v6, p0, Lcom/google/research/handwriting/gui/CandidateView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_9e
    move v6, v7

    .line 91
    goto :goto_93

    .line 94
    .end local v0           #divider:Landroid/widget/ImageView;
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_a0
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/CandidateView;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v7, v6}, Lcom/google/research/handwriting/gui/CandidateView;->scrollTo(II)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/google/research/handwriting/gui/CandidateView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/CandidateView;->mShowCompletionListBelowCandidates:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/research/handwriting/gui/CandidateView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/research/handwriting/gui/CandidateView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorCandidateBackground:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/research/handwriting/gui/CandidateView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorCompletionNormal:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/research/handwriting/gui/CandidateView;)Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateView;->mListener:Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/research/handwriting/gui/CandidateView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorCompletionDivider:I

    return v0
.end method

.method private updateSuggestions(Ljava/lang/String;)V
    .registers 16
    .parameter "selectedWord"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/CandidateView;->clear()V

    .line 158
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v2, completionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_9
    iget-object v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v10}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v10

    if-ge v5, v10, :cond_6a

    .line 160
    iget-object v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v10, v5}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, completion:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v10, v5}, Lcom/google/research/handwriting/gui/SuggestedWords;->getExtra(I)Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->getInfo()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, base:Ljava/lang/String;
    const/4 v10, 0x2

    const-string v11, "CandidateView.updateSuggestions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Completion = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " base = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 165
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedList;

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 167
    :cond_5e
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 168
    .local v6, ll:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    .line 173
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #completion:Ljava/lang/String;
    .end local v6           #ll:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_6a
    iget-object v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v10}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v3

    .line 174
    .local v3, count:I
    const/16 v10, 0x1f

    if-le v3, v10, :cond_7e

    .line 175
    const/4 v10, 0x1

    const-string v11, "CandidateView"

    const-string v12, "Got more results than I can display. Cutting to 31."

    invoke-static {v10, v11, v12}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    const/16 v3, 0x1f

    .line 179
    :cond_7e
    const/4 v5, 0x0

    :goto_7f
    if-ge v5, v3, :cond_13d

    .line 180
    iget-object v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v10, v5}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 181
    .local v9, word:Ljava/lang/CharSequence;
    if-nez v9, :cond_8c

    .line 179
    :goto_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    .line 185
    :cond_8c
    iget-object v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 186
    .local v8, v:Landroid/view/View;
    sget v10, Lcom/google/research/handwriting/gui/R$id;->candidate_word:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 187
    .local v7, tv:Landroid/widget/TextView;
    sget v10, Lcom/google/research/handwriting/gui/R$id;->candidate_extra_info:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 188
    .local v4, dv:Landroid/widget/TextView;
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorNormal:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    if-nez v5, :cond_b9

    iget-boolean v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletion:Z

    if-nez v10, :cond_b9

    .line 193
    iget v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorFirstCandidate:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    :cond_b9
    invoke-virtual {p1, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_115

    .line 197
    iget v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorSelected:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    :cond_c4
    :goto_c4
    iget-object v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v10}, Lcom/google/research/handwriting/gui/SuggestedWords;->clickable()Z

    move-result v10

    if-nez v10, :cond_d5

    iget-boolean v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletion:Z

    if-nez v10, :cond_d5

    .line 203
    iget v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorNonSelectable:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    :cond_d5
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_133

    .line 207
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 208
    new-instance v11, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedList;

    invoke-direct {v11, p0, v10, v7}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;-><init>(Lcom/google/research/handwriting/gui/CandidateView;Ljava/util/LinkedList;Landroid/widget/TextView;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 210
    iget-object v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/research/handwriting/gui/R$drawable;->sym_keyboard_ellipsis:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :goto_104
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v10}, Lcom/google/research/handwriting/gui/SuggestedWords;->clickable()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 219
    invoke-virtual {p0, v8}, Lcom/google/research/handwriting/gui/CandidateView;->addView(Landroid/view/View;)V

    goto/16 :goto_89

    .line 198
    :cond_115
    const-string v10, "\u2205[incorrect]"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12d

    const-string v10, "\u2205[no recognition results]"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c4

    .line 200
    :cond_12d
    iget v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorIncorrect:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c4

    .line 213
    :cond_133
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 214
    iget v10, p0, Lcom/google/research/handwriting/gui/CandidateView;->mColorCandidateBackground:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_104

    .line 221
    .end local v4           #dv:Landroid/widget/TextView;
    .end local v7           #tv:Landroid/widget/TextView;
    .end local v8           #v:Landroid/view/View;
    .end local v9           #word:Ljava/lang/CharSequence;
    :cond_13d
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/CandidateView;->getScrollY()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/google/research/handwriting/gui/CandidateView;->scrollTo(II)V

    .line 222
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/CandidateView;->requestLayout()V

    .line 223
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/CandidateView;->removeAllViews()V

    .line 325
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 330
    .local v0, index:I
    iget-object v2, p0, Lcom/google/research/handwriting/gui/CandidateView;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v2, v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 331
    .local v1, word:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/research/handwriting/gui/CandidateView;->mListener:Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;

    iget-boolean v3, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletion:Z

    invoke-interface {v2, v0, v1, v3}, Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;->onPickSuggestion(ILjava/lang/CharSequence;Z)V

    .line 332
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 336
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 337
    return-void
.end method

.method public setCompletionListLocationBelowCandidates(Z)V
    .registers 2
    .parameter "showBelow"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/CandidateView;->mShowCompletionListBelowCandidates:Z

    .line 344
    return-void
.end method

.method public setListener(Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;Z)V
    .registers 3
    .parameter "listener"
    .parameter "completion"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView;->mListener:Lcom/google/research/handwriting/gui/CandidateViewHandler$OnPickSuggestionListener;

    .line 131
    iput-boolean p2, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletion:Z

    .line 132
    return-void
.end method

.method public setSelectedWord(Ljava/lang/String;)V
    .registers 2
    .parameter "selectedWord"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView;->selectedWord:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setSuggestions(Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V
    .registers 4
    .parameter "suggestions"
    .parameter "completions"

    .prologue
    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/gui/CandidateView;->selectedWord:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    .line 143
    iput-object p2, p0, Lcom/google/research/handwriting/gui/CandidateView;->mCompletions:Lcom/google/research/handwriting/gui/SuggestedWords;

    .line 144
    iget-object v0, p0, Lcom/google/research/handwriting/gui/CandidateView;->selectedWord:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/research/handwriting/gui/CandidateView;->updateSuggestions(Ljava/lang/String;)V

    .line 145
    return-void
.end method
