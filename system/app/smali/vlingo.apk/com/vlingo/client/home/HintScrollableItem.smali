.class public Lcom/vlingo/client/home/HintScrollableItem;
.super Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;
.source "HintScrollableItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;
    }
.end annotation


# instance fields
.field private hint:Lcom/vlingo/client/home/Hint;

.field private hintView:Landroid/widget/TextView;

.field private iconView:Landroid/widget/ImageView;

.field private leftArrow:Landroid/widget/ImageButton;

.field private rightArrow:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getHint()Lcom/vlingo/client/home/Hint;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem;->hint:Lcom/vlingo/client/home/Hint;

    return-object v0
.end method

.method public init(Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;Lcom/vlingo/client/home/Hint;)V
    .registers 5
    .parameter "listener"
    .parameter "hint"

    .prologue
    .line 36
    iput-object p2, p0, Lcom/vlingo/client/home/HintScrollableItem;->hint:Lcom/vlingo/client/home/Hint;

    .line 37
    iget-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem;->leftArrow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/vlingo/client/home/HintScrollableItem$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/home/HintScrollableItem$1;-><init>(Lcom/vlingo/client/home/HintScrollableItem;Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem;->rightArrow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/vlingo/client/home/HintScrollableItem$2;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/home/HintScrollableItem$2;-><init>(Lcom/vlingo/client/home/HintScrollableItem;Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem;->iconView:Landroid/widget/ImageView;

    iget v1, p2, Lcom/vlingo/client/home/Hint;->type_image:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem;->hintView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/vlingo/client/home/Hint;->getTitle()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0f0150

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HintScrollableItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem;->leftArrow:Landroid/widget/ImageButton;

    .line 54
    const v0, 0x7f0f0151

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HintScrollableItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem;->rightArrow:Landroid/widget/ImageButton;

    .line 55
    const v0, 0x7f0f001b

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HintScrollableItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem;->iconView:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0f0109

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HintScrollableItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem;->hintView:Landroid/widget/TextView;

    .line 57
    return-void
.end method
