.class public Lcom/sprint/dsa/widget/ConfirmationDialog;
.super Landroid/app/Dialog;
.source "ConfirmationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public static open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;
    .registers 13
    .parameter "context"
    .parameter "callback"
    .parameter "title"
    .parameter "desc"
    .parameter "ok"
    .parameter "cancel"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 31
    new-instance v2, Lcom/sprint/dsa/widget/ConfirmationDialog;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/widget/ConfirmationDialog;-><init>(Landroid/content/Context;)V

    .line 33
    .local v2, dialog:Lcom/sprint/dsa/widget/ConfirmationDialog;
    invoke-virtual {v2, v4}, Lcom/sprint/dsa/widget/ConfirmationDialog;->setCancelable(Z)V

    .line 37
    invoke-virtual {v2, v4}, Lcom/sprint/dsa/widget/ConfirmationDialog;->requestWindowFeature(I)Z

    .line 38
    const v4, 0x7f03000b

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/widget/ConfirmationDialog;->setContentView(I)V

    .line 41
    const v4, 0x7f0b001d

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/widget/ConfirmationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 42
    .local v3, tv:Landroid/widget/TextView;
    if-eqz p2, :cond_67

    .line 43
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_23
    const v4, 0x7f0b001e

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/widget/ConfirmationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #tv:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 48
    .restart local v3       #tv:Landroid/widget/TextView;
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v4, 0x7f0b0029

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/widget/ConfirmationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 52
    .local v1, btnOk:Landroid/widget/Button;
    if-eqz p4, :cond_6b

    .line 53
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    invoke-virtual {v1, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v4, Lcom/sprint/dsa/widget/ConfirmationDialog$1;

    invoke-direct {v4, v2}, Lcom/sprint/dsa/widget/ConfirmationDialog$1;-><init>(Lcom/sprint/dsa/widget/ConfirmationDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :goto_48
    const v4, 0x7f0b002a

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/widget/ConfirmationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, btnCancel:Landroid/widget/Button;
    if-eqz p5, :cond_6f

    .line 66
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v4, Lcom/sprint/dsa/widget/ConfirmationDialog$2;

    invoke-direct {v4, v2}, Lcom/sprint/dsa/widget/ConfirmationDialog$2;-><init>(Lcom/sprint/dsa/widget/ConfirmationDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_61
    iput-object p1, v2, Lcom/sprint/dsa/widget/ConfirmationDialog;->mCallback:Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;

    .line 80
    invoke-virtual {v2}, Lcom/sprint/dsa/widget/ConfirmationDialog;->show()V

    .line 82
    return-object v2

    .line 45
    .end local v0           #btnCancel:Landroid/widget/Button;
    .end local v1           #btnOk:Landroid/widget/Button;
    :cond_67
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23

    .line 61
    .restart local v1       #btnOk:Landroid/widget/Button;
    :cond_6b
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_48

    .line 74
    .restart local v0       #btnCancel:Landroid/widget/Button;
    :cond_6f
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_61
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/sprint/dsa/widget/ConfirmationDialog;->onCancel()V

    .line 102
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 103
    return-void
.end method

.method public onCancel()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sprint/dsa/widget/ConfirmationDialog;->mCallback:Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/sprint/dsa/widget/ConfirmationDialog;->mCallback:Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;

    invoke-interface {v0}, Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;->onCancel()V

    .line 96
    :cond_9
    invoke-virtual {p0}, Lcom/sprint/dsa/widget/ConfirmationDialog;->dismiss()V

    .line 97
    return-void
.end method

.method public onOk()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sprint/dsa/widget/ConfirmationDialog;->mCallback:Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lcom/sprint/dsa/widget/ConfirmationDialog;->mCallback:Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;

    invoke-interface {v0}, Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;->onOk()V

    .line 89
    :cond_9
    invoke-virtual {p0}, Lcom/sprint/dsa/widget/ConfirmationDialog;->dismiss()V

    .line 90
    return-void
.end method
