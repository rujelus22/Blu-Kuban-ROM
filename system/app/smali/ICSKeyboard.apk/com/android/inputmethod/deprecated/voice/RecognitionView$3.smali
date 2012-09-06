.class Lcom/android/inputmethod/deprecated/voice/RecognitionView$3;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/deprecated/voice/RecognitionView;->showListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    const/4 v1, 0x1

    #setter for: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mState:I
    invoke-static {v0, v1}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$2(Lcom/android/inputmethod/deprecated/voice/RecognitionView;I)V

    .line 146
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$3(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    .line 147
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$3(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 146
    #calls: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$5(Lcom/android/inputmethod/deprecated/voice/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method
