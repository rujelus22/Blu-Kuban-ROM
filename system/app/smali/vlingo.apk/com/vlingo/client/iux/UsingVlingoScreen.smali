.class public Lcom/vlingo/client/iux/UsingVlingoScreen;
.super Lcom/vlingo/client/iux/IUXBaseActivity;
.source "UsingVlingoScreen.java"


# static fields
.field public static final EXTRA_IS_IUX:Ljava/lang/String; = "wycs.is.iux"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vlingo/client/iux/IUXBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method applyHtml(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/vlingo/client/iux/UsingVlingoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    .line 24
    invoke-super {p0, p1}, Lcom/vlingo/client/iux/IUXBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v5, 0x7f03002d

    invoke-virtual {p0, v5}, Lcom/vlingo/client/iux/UsingVlingoScreen;->setContentView(I)V

    .line 26
    const v5, 0x7f0902f9

    invoke-virtual {p0, v5}, Lcom/vlingo/client/iux/UsingVlingoScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vlingo/client/iux/UsingVlingoScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0}, Lcom/vlingo/client/iux/UsingVlingoScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "wycs.is.iux"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 29
    invoke-virtual {p0}, Lcom/vlingo/client/iux/UsingVlingoScreen;->IUXinit()V

    .line 34
    :goto_25
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 35
    const v5, 0x7f0f00a7

    invoke-virtual {p0, v5}, Lcom/vlingo/client/iux/UsingVlingoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 36
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    const v5, 0x7f0f00a8

    invoke-virtual {p0, v5}, Lcom/vlingo/client/iux/UsingVlingoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 38
    .local v4, tv2:Landroid/widget/TextView;
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    const v5, 0x7f0f006f

    invoke-virtual {p0, v5}, Lcom/vlingo/client/iux/UsingVlingoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    const v5, 0x7f0f00a9

    invoke-virtual {p0, v5}, Lcom/vlingo/client/iux/UsingVlingoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, sep:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .end local v0           #iv:Landroid/widget/ImageView;
    .end local v2           #sep:Landroid/view/View;
    .end local v3           #tv:Landroid/widget/TextView;
    .end local v4           #tv2:Landroid/widget/TextView;
    :cond_5a
    const v5, 0x7f0f0095

    invoke-virtual {p0, v5}, Lcom/vlingo/client/iux/UsingVlingoScreen;->applyHtml(I)V

    .line 46
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v5

    const-string v6, "setup-usingvlingo"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 47
    return-void

    .line 31
    :cond_6a
    const v5, 0x7f0f0078

    invoke-virtual {p0, v5}, Lcom/vlingo/client/iux/UsingVlingoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, navPanel:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25
.end method
