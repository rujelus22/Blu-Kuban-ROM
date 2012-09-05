.class public Lcom/vlingo/client/ui/VProgressDialog;
.super Landroid/app/Dialog;
.source "VProgressDialog.java"


# instance fields
.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 22
    const v0, 0x7f0e0026

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p2, p0, Lcom/vlingo/client/ui/VProgressDialog;->mTitle:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f030057

    invoke-virtual {p0, v2}, Lcom/vlingo/client/ui/VProgressDialog;->setContentView(I)V

    .line 31
    const v2, 0x7f0f002f

    invoke-virtual {p0, v2}, Lcom/vlingo/client/ui/VProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f0f0044

    invoke-virtual {p0, v2}, Lcom/vlingo/client/ui/VProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, button:Landroid/widget/Button;
    iget-object v2, p0, Lcom/vlingo/client/ui/VProgressDialog;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/vlingo/client/ui/VProgressDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_47

    .line 35
    :cond_27
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    :goto_2c
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v2, Lcom/vlingo/client/ui/VProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/ui/VProgressDialog$1;-><init>(Lcom/vlingo/client/ui/VProgressDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void

    .line 38
    :cond_47
    iget-object v2, p0, Lcom/vlingo/client/ui/VProgressDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method
