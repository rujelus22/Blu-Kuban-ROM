.class public Lcom/vlingo/client/car/CarHelpWakeUpScreen;
.super Lcom/vlingo/client/help/wcis/WhatCanISayScreen;
.source "CarHelpWakeUpScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected init()V
    .registers 5

    .prologue
    .line 25
    const v3, 0x7f030052

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/CarHelpWakeUpScreen;->setContentView(I)V

    .line 26
    const v3, 0x7f090464

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/CarHelpWakeUpScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/CarHelpWakeUpScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    const v3, 0x7f0f0130

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/CarHelpWakeUpScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    .local v0, body1:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    const v3, 0x7f0f012d

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/CarHelpWakeUpScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 31
    .local v2, view:Landroid/view/View;
    const/16 v3, 0x11

    invoke-static {v3}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 32
    const v3, 0x7f0f0139

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/CarHelpWakeUpScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    .local v1, body3:Landroid/widget/TextView;
    const v3, 0x7f0901e6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 35
    .end local v1           #body3:Landroid/widget/TextView;
    :cond_46
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 36
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method
