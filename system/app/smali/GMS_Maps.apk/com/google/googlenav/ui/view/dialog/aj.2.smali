.class Lcom/google/googlenav/ui/view/dialog/aJ;
.super Landroid/support/v4/view/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aF;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/dialog/aF;)V
    .registers 2
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aJ;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/dialog/aF;Lcom/google/googlenav/ui/view/dialog/aG;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/aJ;-><init>(Lcom/google/googlenav/ui/view/dialog/aF;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aJ;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)I
    .registers 5
    .parameter

    .prologue
    .line 556
    check-cast p1, Lcom/google/googlenav/ui/view/dialog/aK;

    .line 559
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aJ;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 560
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aJ;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/I;

    .line 561
    invoke-static {p1}, Lcom/google/googlenav/ui/view/dialog/aK;->a(Lcom/google/googlenav/ui/view/dialog/aK;)Lcom/google/googlenav/friend/history/I;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/history/I;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 566
    invoke-static {p1}, Lcom/google/googlenav/ui/view/dialog/aK;->b(Lcom/google/googlenav/ui/view/dialog/aK;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/history/I;->a(Landroid/view/View;)V

    .line 570
    :goto_29
    return v1

    .line 559
    :cond_2a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 570
    :cond_2e
    const/4 v1, -0x2

    goto :goto_29
.end method

.method public a(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aJ;->a()I

    move-result v0

    if-lt p1, v0, :cond_9

    .line 589
    const-string v0, ""

    .line 591
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aJ;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/I;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/I;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aJ;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aF;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 548
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aJ;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aF;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/I;

    .line 549
    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/I;->a(Landroid/view/View;)V

    .line 550
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 551
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/view/dialog/aK;-><init>(Lcom/google/googlenav/friend/history/I;Landroid/view/View;)V

    return-object v2
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 576
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-static {p3}, Lcom/google/googlenav/ui/view/dialog/aK;->b(Lcom/google/googlenav/ui/view/dialog/aK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 577
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 581
    check-cast p2, Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-static {p2}, Lcom/google/googlenav/ui/view/dialog/aK;->b(Lcom/google/googlenav/ui/view/dialog/aK;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
