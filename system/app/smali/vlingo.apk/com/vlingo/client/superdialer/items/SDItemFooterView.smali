.class public Lcom/vlingo/client/superdialer/items/SDItemFooterView;
.super Landroid/widget/RelativeLayout;
.source "SDItemFooterView.java"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemFooterView;
    .registers 5
    .parameter "context"
    .parameter "text"

    .prologue
    .line 25
    const v1, 0x7f030061

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/superdialer/items/SDItemFooterView;

    .line 26
    .local v0, v:Lcom/vlingo/client/superdialer/items/SDItemFooterView;
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemFooterView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-object v0
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemFooterView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 32
    const v0, 0x7f0f00d8

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemFooterView;->textView:Landroid/widget/TextView;

    .line 33
    return-void
.end method
