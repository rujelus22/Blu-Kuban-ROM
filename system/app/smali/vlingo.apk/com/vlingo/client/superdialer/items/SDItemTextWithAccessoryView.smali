.class public Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
.super Landroid/widget/RelativeLayout;
.source "SDItemTextWithAccessoryView.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private textView:Landroid/widget/TextView;

.field private useSmall:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->useSmall:Z

    .line 29
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    .registers 3
    .parameter "context"
    .parameter "text"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->create(Landroid/content/Context;Ljava/lang/String;Z)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    .registers 6
    .parameter "context"
    .parameter "text"
    .parameter "imageResourceId"

    .prologue
    .line 40
    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    .line 41
    .local v0, v:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->getImageAccessory()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->showImageAccessory()V

    .line 44
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Z)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    .registers 6
    .parameter "context"
    .parameter "text"
    .parameter "useSmall"

    .prologue
    .line 52
    if-eqz p2, :cond_19

    const v0, 0x7f030066

    .line 53
    .local v0, resID:I
    :goto_5
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    .line 54
    .local v1, v:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    iput-boolean p2, v1, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->useSmall:Z

    .line 55
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->hideAccessories()V

    .line 57
    return-object v1

    .line 52
    .end local v0           #resID:I
    .end local v1           #v:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    :cond_19
    const v0, 0x7f030065

    goto :goto_5
.end method

.method public static createTextOnly(Landroid/content/Context;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    .registers 5
    .parameter "context"
    .parameter "text"

    .prologue
    .line 61
    const v0, 0x7f030064

    .line 62
    .local v0, resID:I
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    .line 63
    .local v1, v:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    invoke-virtual {v1}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object v1
.end method


# virtual methods
.method public getImageAccessory()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressBarAccessory()Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideAccessories()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 110
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->invalidate()V

    .line 113
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 80
    const v0, 0x7f0f00d8

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->textView:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0f0168

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->imageView:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0f0169

    invoke-virtual {p0, v0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->progressBar:Landroid/widget/ProgressBar;

    .line 83
    return-void
.end method

.method public showImageAccessory()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->invalidate()V

    .line 101
    return-void
.end method

.method public showProgressAccessory()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->invalidate()V

    .line 107
    return-void
.end method
