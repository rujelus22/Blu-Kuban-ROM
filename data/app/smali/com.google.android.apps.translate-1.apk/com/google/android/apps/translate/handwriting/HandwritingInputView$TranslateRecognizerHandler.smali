.class Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateRecognizerHandler;
.super Lcom/google/research/handwriting/gui/RecognizerHandler;
.source "HandwritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/handwriting/HandwritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslateRecognizerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateRecognizerHandler;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    .line 165
    invoke-direct {p0, p2}, Lcom/google/research/handwriting/gui/RecognizerHandler;-><init>(Landroid/content/Context;)V

    .line 166
    return-void
.end method


# virtual methods
.method public errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V
    .registers 7
    .parameter "requestId"
    .parameter "e"
    .parameter "msg"

    .prologue
    .line 170
    invoke-static {}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMessage: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateRecognizerHandler;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    iget-object v1, p0, Lcom/google/android/apps/translate/handwriting/HandwritingInputView$TranslateRecognizerHandler;->this$0:Lcom/google/android/apps/translate/handwriting/HandwritingInputView;

    #getter for: Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->access$600(Lcom/google/android/apps/translate/handwriting/HandwritingInputView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/handwriting/HandwritingInputView;->setHint(Ljava/lang/String;)V

    .line 172
    return-void
.end method
