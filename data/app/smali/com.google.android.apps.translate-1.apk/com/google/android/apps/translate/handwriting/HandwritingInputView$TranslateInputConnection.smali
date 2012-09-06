.class Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "HandwritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/handwriting/HandwritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslateInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;Landroid/view/View;Z)V
    .registers 4
    .parameter
    .parameter "targetView"
    .parameter "fullEditor"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    .line 120
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 121
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 10
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v6, 0x1

    .line 137
    invoke-static {}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commitText text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newCursorPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->beginBatchEdit()V

    .line 140
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 141
    .local v2, start:I
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 142
    .local v0, end:I
    if-ge v2, v0, :cond_5a

    .line 143
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 144
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;
    invoke-static {v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$200(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Lcom/google/research/handwriting/gui/UIHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/UIHandler;->clearTranslatedText()V

    .line 146
    :cond_5a
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v1

    .line 147
    .local v1, rc:Z
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;
    invoke-static {v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$200(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Lcom/google/research/handwriting/gui/UIHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/research/handwriting/gui/UIHandler;->setJustModifiedComposingRegion(Z)V

    .line 148
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    iget-object v4, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    #setter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionStart:I
    invoke-static {v3, v4}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$302(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;I)I

    .line 149
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    iget-object v4, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    #setter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mCursorSelectionEnd:I
    invoke-static {v3, v4}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$402(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;I)I

    .line 150
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translate/handwriting/HandwritingTextEdit;

    invoke-interface {v3, v6}, Lcom/google/android/apps/translate/handwriting/HandwritingTextEdit;->setIsTextEditor(Z)V

    .line 151
    iget-object v3, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    new-instance v4, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection$1;

    invoke-direct {v4, p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection$1;-><init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;)V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->post(Ljava/lang/Runnable;)Z

    .line 159
    return v1
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 5
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 130
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 131
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 132
    return-object v0
.end method
