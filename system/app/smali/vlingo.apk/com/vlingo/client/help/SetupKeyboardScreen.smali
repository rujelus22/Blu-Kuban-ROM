.class public Lcom/vlingo/client/help/SetupKeyboardScreen;
.super Landroid/app/Activity;
.source "SetupKeyboardScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method applyHtml(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/vlingo/client/help/SetupKeyboardScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/SetupKeyboardScreen;->setContentView(I)V

    .line 27
    const v0, 0x7f09028d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/SetupKeyboardScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/SetupKeyboardScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/SetupKeyboardScreen;->applyHtml(I)V

    .line 29
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/SetupKeyboardScreen;->applyHtml(I)V

    .line 30
    const v0, 0x7f0f0098

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/SetupKeyboardScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/help/SetupKeyboardScreen$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/help/SetupKeyboardScreen$1;-><init>(Lcom/vlingo/client/help/SetupKeyboardScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f0f0099

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/SetupKeyboardScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/help/SetupKeyboardScreen$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/help/SetupKeyboardScreen$2;-><init>(Lcom/vlingo/client/help/SetupKeyboardScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
