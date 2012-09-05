.class public Lcom/vlingo/client/help/BluetoothHelpScreen;
.super Landroid/app/Activity;
.source "BluetoothHelpScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method applyHtml(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/vlingo/client/help/BluetoothHelpScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_17

    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/BluetoothHelpScreen;->setContentView(I)V

    .line 20
    const v0, 0x7f090288

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/BluetoothHelpScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/BluetoothHelpScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/BluetoothHelpScreen;->applyHtml(I)V

    .line 22
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/BluetoothHelpScreen;->applyHtml(I)V

    .line 23
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/BluetoothHelpScreen;->applyHtml(I)V

    .line 24
    return-void
.end method
