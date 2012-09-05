.class Lcom/android/inputmethod/voice/RecognitionView$4;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->showListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/RecognitionView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/RecognitionView;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    sget-object v1, Lcom/android/inputmethod/voice/RecognitionView$State;->LISTENING:Lcom/android/inputmethod/voice/RecognitionView$State;

    #setter for: Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;
    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/RecognitionView;->access$002(Lcom/android/inputmethod/voice/RecognitionView;Lcom/android/inputmethod/voice/RecognitionView$State;)Lcom/android/inputmethod/voice/RecognitionView$State;

    .line 171
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$1000(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a00e1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;
    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$300(Lcom/android/inputmethod/voice/RecognitionView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView$4;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$1000(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00ee

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/inputmethod/voice/RecognitionView;->prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    invoke-static {v1, v5, v2, v0, v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$1200(Lcom/android/inputmethod/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method
