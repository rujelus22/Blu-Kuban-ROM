.class public Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper;
.super Ljava/lang/Object;
.source "SpeechRecognizerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper$SpeechRecognizerListener;
    }
.end annotation


# instance fields
.field speechRecognizerListener:Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper$SpeechRecognizerListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static final setup(Landroid/content/Context;Landroid/widget/TextView;Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper$SpeechRecognizerListener;)Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper;
    .registers 4
    .parameter "context"
    .parameter "speechButton"
    .parameter "listener"

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 38
    .local v0, helper:Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper;
    iput-object p2, v0, Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper;->speechRecognizerListener:Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper$SpeechRecognizerListener;

    .line 39
    return-object v0
.end method
