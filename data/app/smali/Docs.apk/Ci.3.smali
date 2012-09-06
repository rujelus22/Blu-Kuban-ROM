.class public LCi;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"


# instance fields
.field private final a:Lcom/google/android/apps/docs/editors/text/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 37
    iput-object p1, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    .line 38
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->j()V

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 5
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, LCi;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 64
    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 74
    :goto_7
    return v0

    .line 65
    :cond_8
    iget-object v1, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_15

    .line 68
    :try_start_10
    iget-object v2, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_10 .. :try_end_15} :catch_17

    .line 74
    :cond_15
    :goto_15
    const/4 v0, 0x1

    goto :goto_7

    .line 69
    :catch_17
    move-exception v0

    goto :goto_15
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->j()V

    .line 81
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/view/inputmethod/CompletionInfo;)V

    .line 82
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->j()V

    .line 93
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 94
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    if-nez v0, :cond_9

    .line 137
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 142
    :goto_8
    return v0

    .line 140
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    goto :goto_8
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    .line 43
    if-eqz v0, :cond_9

    .line 44
    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b()Landroid/text/Editable;

    move-result-object v0

    .line 46
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    if-eqz v0, :cond_1b

    .line 117
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 118
    iget-object v1, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 119
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1a

    .line 120
    iget-object v1, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    .line 125
    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->j()V

    .line 109
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->b(I)Z

    .line 110
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->k()V

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(I)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, LCi;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 131
    const/4 v0, 0x1

    return v0
.end method
