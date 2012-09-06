.class public Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;
.super Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper;
.source "FroyoSpeechRecognizerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final speechRecognizer:Landroid/speech/SpeechRecognizer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 5
    .parameter "context"
    .parameter "speechButton"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->context:Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$1;-><init>(Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;-><init>(Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;)Landroid/speech/SpeechRecognizer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    return-object v0
.end method
