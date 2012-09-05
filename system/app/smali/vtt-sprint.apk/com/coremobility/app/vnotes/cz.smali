.class final Lcom/coremobility/app/vnotes/cz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cz;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/cz;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_e
    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_19
    return-void

    :cond_1a
    move v0, v2

    goto :goto_e

    :cond_1c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_19
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
