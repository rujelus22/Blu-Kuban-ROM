.class public Lcom/vlingo/client/home/AppSelectorScreen;
.super Landroid/app/Activity;
.source "AppSelectorScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/AppSelectorScreen;->requestWindowFeature(I)Z

    .line 28
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/AppSelectorScreen;->setContentView(I)V

    .line 30
    const v0, 0x7f0f0009

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/AppSelectorScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/home/AppSelectorScreen$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/home/AppSelectorScreen$1;-><init>(Lcom/vlingo/client/home/AppSelectorScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f0f0008

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/AppSelectorScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/home/AppSelectorScreen$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/home/AppSelectorScreen$2;-><init>(Lcom/vlingo/client/home/AppSelectorScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0f0007

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/AppSelectorScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/home/AppSelectorScreen$3;

    invoke-direct {v1, p0}, Lcom/vlingo/client/home/AppSelectorScreen$3;-><init>(Lcom/vlingo/client/home/AppSelectorScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/AppSelectorScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/home/AppSelectorScreen$4;

    invoke-direct {v1, p0}, Lcom/vlingo/client/home/AppSelectorScreen$4;-><init>(Lcom/vlingo/client/home/AppSelectorScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method
