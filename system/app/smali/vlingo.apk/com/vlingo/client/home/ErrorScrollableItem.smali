.class public Lcom/vlingo/client/home/ErrorScrollableItem;
.super Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;
.source "ErrorScrollableItem.java"


# instance fields
.field private errorView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vlingo/client/home/ErrorScrollableItem;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/vlingo/client/scroller/ScrollableItemRelativeLayout;->onFinishInflate()V

    .line 29
    const v0, 0x7f0f014e

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/ErrorScrollableItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/home/ErrorScrollableItem;->errorView:Landroid/widget/TextView;

    .line 30
    return-void
.end method
