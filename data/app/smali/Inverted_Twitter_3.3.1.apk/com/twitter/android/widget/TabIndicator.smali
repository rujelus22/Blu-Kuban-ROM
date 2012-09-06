.class public Lcom/twitter/android/widget/TabIndicator;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;
    .registers 8

    const v0, 0x7f03001f

    invoke-virtual {p2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TabIndicator;

    iget-object v1, v0, Lcom/twitter/android/widget/TabIndicator;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/twitter/android/widget/TabIndicator;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_17
    if-lez p4, :cond_1e

    iget-object v1, v0, Lcom/twitter/android/widget/TabIndicator;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    :cond_1e
    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/twitter/android/widget/TabIndicator;->d:Z

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d
    iput-boolean p1, p0, Lcom/twitter/android/widget/TabIndicator;->d:Z

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d
.end method

.method protected drawableStateChanged()V
    .registers 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TabIndicator;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    :cond_11
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->b:Landroid/widget/ImageView;

    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->a:Landroid/widget/ImageView;

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->c:Landroid/widget/TextView;

    return-void
.end method
