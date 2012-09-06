.class final Lcom/dropbox/android/activity/delegate/q;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/dropbox/android/activity/delegate/m;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/m;Landroid/app/AlertDialog;Landroid/widget/TextView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/q;->c:Lcom/dropbox/android/activity/delegate/m;

    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/q;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/dropbox/android/activity/delegate/q;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/dropbox/android/util/aa;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 225
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 227
    :cond_16
    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/q;->a:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_28

    const/4 v0, 0x1

    :cond_28
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/q;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    return-void
.end method
