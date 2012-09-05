.class public Lcom/vlingo/client/car/SamsungCarHeaderView;
.super Lcom/vlingo/client/car/CarHeaderView;
.source "SamsungCarHeaderView.java"


# instance fields
.field private topLandingScreen:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40c0

    .line 28
    invoke-super {p0}, Lcom/vlingo/client/car/CarHeaderView;->onFinishInflate()V

    .line 29
    const v0, 0x7f0f00f2

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/SamsungCarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarHeaderView;->topLandingScreen:Landroid/widget/ImageView;

    .line 30
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarHeaderView;->topLandingScreen:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es-ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 33
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarHeaderView;->topLogo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vlingo/client/car/SamsungCarHeaderView;->topLogo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarHeaderView;->topTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vlingo/client/car/SamsungCarHeaderView;->topTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarHeaderView;->topLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vlingo/client/car/SamsungCarHeaderView;->topLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    :cond_47
    return-void
.end method
