.class Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowCompletionsOnLongClickListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;
    }
.end annotation


# instance fields
.field private final completions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textview:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/research/handwriting/gui/CandidateView;


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/CandidateView;Ljava/util/LinkedList;Landroid/widget/TextView;)V
    .registers 4
    .parameter
    .parameter
    .parameter "tv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, completions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->completions:Ljava/util/LinkedList;

    .line 231
    iput-object p3, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->textview:Landroid/widget/TextView;

    .line 232
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 15
    .parameter "v"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 269
    const-string v7, "ShowCompletionsOnLongClickListener"

    const-string v8, "Long clicked with completions"

    invoke-static {v12, v7, v8}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    #getter for: Lcom/google/research/handwriting/gui/CandidateView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/research/handwriting/gui/CandidateView;->access$100(Lcom/google/research/handwriting/gui/CandidateView;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 271
    .local v5, popup:Landroid/widget/PopupWindow;
    new-instance v3, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;

    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    #getter for: Lcom/google/research/handwriting/gui/CandidateView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/research/handwriting/gui/CandidateView;->access$100(Lcom/google/research/handwriting/gui/CandidateView;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, p0, v7}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;-><init>(Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;Landroid/content/Context;)V

    .line 273
    .local v3, completionLayout:Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;
    invoke-virtual {v3, v5}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->setPopup(Landroid/widget/PopupWindow;)V

    .line 274
    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->textview:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->setAnchor(Landroid/view/View;)V

    .line 275
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {v3, v10}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->setBackgroundColor(I)V

    .line 278
    invoke-virtual {v3, v11}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->setOrientation(I)V

    .line 279
    invoke-virtual {v5, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 280
    new-instance v7, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$1;

    invoke-direct {v7, p0}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$1;-><init>(Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;)V

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, cCounter:I
    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->completions:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, c:Ljava/lang/String;
    new-instance v0, Landroid/widget/Button;

    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    #getter for: Lcom/google/research/handwriting/gui/CandidateView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/research/handwriting/gui/CandidateView;->access$100(Lcom/google/research/handwriting/gui/CandidateView;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    #getter for: Lcom/google/research/handwriting/gui/CandidateView;->mColorCandidateBackground:I
    invoke-static {v7}, Lcom/google/research/handwriting/gui/CandidateView;->access$200(Lcom/google/research/handwriting/gui/CandidateView;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 291
    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    #getter for: Lcom/google/research/handwriting/gui/CandidateView;->mColorCompletionNormal:I
    invoke-static {v7}, Lcom/google/research/handwriting/gui/CandidateView;->access$300(Lcom/google/research/handwriting/gui/CandidateView;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 292
    new-instance v7, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$2;

    invoke-direct {v7, p0, v5}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$2;-><init>(Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    invoke-virtual {v3, v0}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->addView(Landroid/view/View;)V

    .line 300
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x3

    if-le v2, v7, :cond_94

    .line 312
    .end local v0           #b:Landroid/widget/Button;
    .end local v1           #c:Ljava/lang/String;
    :cond_85
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 313
    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 314
    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 315
    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->textview:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v10, v10}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 316
    return v11

    .line 307
    .restart local v0       #b:Landroid/widget/Button;
    .restart local v1       #c:Ljava/lang/String;
    :cond_94
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    #getter for: Lcom/google/research/handwriting/gui/CandidateView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/research/handwriting/gui/CandidateView;->access$100(Lcom/google/research/handwriting/gui/CandidateView;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 308
    .local v6, separator:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->this$0:Lcom/google/research/handwriting/gui/CandidateView;

    #getter for: Lcom/google/research/handwriting/gui/CandidateView;->mColorCompletionDivider:I
    invoke-static {v7}, Lcom/google/research/handwriting/gui/CandidateView;->access$500(Lcom/google/research/handwriting/gui/CandidateView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 309
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setHeight(I)V

    .line 310
    invoke-virtual {v3, v6}, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$LinearLayoutThatRepositionsItsParentPopupDependingOnItsSize;->addView(Landroid/view/View;)V

    goto :goto_49
.end method
