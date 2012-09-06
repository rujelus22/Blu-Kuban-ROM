.class Lcom/google/googlenav/ui/view/android/bT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/google/googlenav/ui/view/android/bR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bR;Landroid/widget/TextView;Landroid/widget/Button;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bT;->c:Lcom/google/googlenav/ui/view/android/bR;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bT;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bT;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bT;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    .line 129
    :goto_11
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bT;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1e

    .line 130
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bT;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    :cond_1e
    return-void

    .line 128
    :cond_1f
    const/4 v0, 0x0

    goto :goto_11
.end method
