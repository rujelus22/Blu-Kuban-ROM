.class Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection$1;
.super Ljava/lang/Object;
.source "HandwritingInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->commitText(Ljava/lang/CharSequence;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection$1;->this$1:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection$1;->this$1:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

    iget-object v0, v0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection$1;->this$1:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

    iget-object v1, v1, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->getCursorSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection$1;->this$1:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

    #calls: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setCursor(ILandroid/view/inputmethod/InputConnection;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$500(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;ILandroid/view/inputmethod/InputConnection;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection$1;->this$1:Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;

    iget-object v0, v0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateInputConnection;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$000(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->endBatchEdit()V

    .line 157
    return-void
.end method
