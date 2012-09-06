.class Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;
.super Ljava/lang/Object;
.source "FroyoSpeechRecognizerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$speechButton:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;Landroid/widget/TextView;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;->this$0:Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;

    iput-object p2, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;->val$speechButton:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;->val$speechButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/unveil/R$string;->speak:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;->this$0:Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;

    #getter for: Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->speechRecognizer:Landroid/speech/SpeechRecognizer;
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->access$200(Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 103
    :goto_2a
    return-void

    .line 100
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;->this$0:Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;

    #getter for: Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->speechRecognizer:Landroid/speech/SpeechRecognizer;
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->access$200(Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;->val$speechButton:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/unveil/R$string;->speak:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2a
.end method
