.class Lcom/android/inputmethod/voice/RecognitionView$3;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->showInitializing()V
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
    .line 159
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/inputmethod/voice/RecognitionView;->access$1000(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$1100(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/voice/RecognitionView$3;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/inputmethod/voice/RecognitionView;->access$1000(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    #calls: Lcom/android/inputmethod/voice/RecognitionView;->prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/voice/RecognitionView;->access$1200(Lcom/android/inputmethod/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method
