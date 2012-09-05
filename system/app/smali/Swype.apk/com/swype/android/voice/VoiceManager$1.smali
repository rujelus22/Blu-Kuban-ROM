.class final Lcom/swype/android/voice/VoiceManager$1;
.super Lcom/swype/android/voice/VoiceManager;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/voice/VoiceManager;->createVoiceManager(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/voice/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/swype/android/voice/VoiceManager;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreateView()V
    .registers 1

    .prologue
    .line 36
    return-void
.end method

.method public final startListening()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method
