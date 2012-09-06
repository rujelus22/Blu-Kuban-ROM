.class Lcom/google/googlenav/appwidget/gohome/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/googlenav/appwidget/gohome/c;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/c;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    const v1, 0x7f1000ca

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/c;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/c;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 307
    return-void

    .line 304
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    return-void
.end method
