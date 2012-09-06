.class final Lcom/dropbox/android/widget/quickactions/h;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/quickactions/ButtonRename;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/quickactions/ButtonRename;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/h;->a:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Lcom/dropbox/android/util/aa;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 148
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 152
    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    .line 153
    :cond_21
    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/h;->a:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    invoke-static {v1}, Lcom/dropbox/android/widget/quickactions/ButtonRename;->b(Lcom/dropbox/android/widget/quickactions/ButtonRename;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    return-void
.end method
