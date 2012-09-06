.class public Lcom/google/android/apps/plus/oob/ButtonFieldLayout;
.super Lcom/google/android/apps/plus/oob/BaseFieldLayout;
.source "ButtonFieldLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAction:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

.field private mInput:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 6
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->mAction:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->getInputView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->mInput:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->mAction:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->hasText()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->mInput:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->mAction:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->mInput:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    iget-object v1, p0, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->mAction:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/oob/ActionCallback;->onAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)V

    .line 77
    return-void
.end method

.method public setActionEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/ButtonFieldLayout;->mInput:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    return-void
.end method
