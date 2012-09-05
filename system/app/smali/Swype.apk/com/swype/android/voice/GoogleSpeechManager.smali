.class public Lcom/swype/android/voice/GoogleSpeechManager;
.super Lcom/swype/android/voice/VoiceKeyboardManager;
.source "GoogleSpeechManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;
    }
.end annotation


# static fields
.field private static final COMPLETE_SILENCE_MILLIS:J = 0x3e8L

.field private static final EXTRA_RECOGNITION_CONTEXT:Ljava/lang/String; = "android.speech.extras.RECOGNITION_CONTEXT"


# instance fields
.field private endpointed:Z

.field private final recognizer:Landroid/speech/SpeechRecognizer;


# direct methods
.method public constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 4
    .parameter "ime"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/swype/android/voice/VoiceKeyboardManager;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 46
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 49
    :cond_f
    invoke-virtual {p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->recognizer:Landroid/speech/SpeechRecognizer;

    .line 51
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->recognizer:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;

    invoke-direct {v1, p0}, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;-><init>(Landroid/speech/RecognitionListener;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 52
    return-void
.end method

.method private getErrorStringId(IZ)I
    .registers 4
    .parameter
    .parameter

    .prologue
    const v0, 0x7f070081

    .line 245
    packed-switch p1, :pswitch_data_24

    .line 262
    const v0, 0x7f070087

    :cond_9
    :goto_9
    :pswitch_9
    return v0

    .line 248
    :pswitch_a
    const v0, 0x7f070080

    goto :goto_9

    .line 252
    :pswitch_e
    if-nez p2, :cond_9

    const v0, 0x7f070082

    goto :goto_9

    .line 255
    :pswitch_14
    const v0, 0x7f070083

    goto :goto_9

    .line 257
    :pswitch_18
    const v0, 0x7f070084

    goto :goto_9

    .line 259
    :pswitch_1c
    const v0, 0x7f070085

    goto :goto_9

    .line 261
    :pswitch_20
    const v0, 0x7f070086

    goto :goto_9

    .line 245
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_e
        :pswitch_9
        :pswitch_14
        :pswitch_18
        :pswitch_a
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private getFirstResult(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 197
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_e
.end method

.method public static isRecognitionAvailable(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 40
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/swype/android/voice/GoogleSpeechManager;->hideVoiceKeyboard()V

    .line 193
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->recognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 194
    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onBeginningOfSpeech()V
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->endpointed:Z

    .line 211
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 236
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->endpointed:Z

    .line 215
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    if-eqz v0, :cond_c

    .line 216
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceKeyboardView;->setWorking()V

    .line 218
    :cond_c
    return-void
.end method

.method public onError(I)V
    .registers 5
    .parameter "error"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    if-eqz v1, :cond_19

    .line 222
    iget-boolean v1, p0, Lcom/swype/android/voice/GoogleSpeechManager;->endpointed:Z

    invoke-direct {p0, p1, v1}, Lcom/swype/android/voice/GoogleSpeechManager;->getErrorStringId(IZ)I

    move-result v0

    .line 223
    .local v0, id:I
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v2, p0, Lcom/swype/android/voice/GoogleSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v2}, Lcom/swype/android/voice/VoiceKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/swype/android/voice/VoiceKeyboardView;->setError(Ljava/lang/String;)V

    .line 225
    .end local v0           #id:I
    :cond_19
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 239
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2
    .parameter "partialResults"

    .prologue
    .line 228
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 3
    .parameter "params"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceKeyboardView;->setListening()V

    .line 207
    :cond_9
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 3
    .parameter "results"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/swype/android/voice/GoogleSpeechManager;->hideVoiceKeyboard()V

    .line 232
    invoke-direct {p0, p1}, Lcom/swype/android/voice/GoogleSpeechManager;->getFirstResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/voice/GoogleSpeechManager;->sendResultsToIME(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 2
    .parameter "rmsdB"

    .prologue
    .line 242
    return-void
.end method

.method public startListening()V
    .registers 8

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/swype/android/voice/GoogleSpeechManager;->showVoiceKeyboard()V

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v0, "calling_package"

    const-string v2, "SwypeIME"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v0, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v0, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v2}, Lcom/swype/android/jni/SwypeCore;->getLanguageCodeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSupportedLanguages()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v3

    .line 168
    iget-object v4, v3, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    .line 169
    const/4 v5, 0x0

    :goto_43
    iget-object v6, v3, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_55

    .line 170
    iget-object v6, v3, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Lcom/swype/android/jni/SwypeCore;->getLanguageCodeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 174
    :cond_55
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 175
    iget-object v3, p0, Lcom/swype/android/voice/GoogleSpeechManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 176
    new-instance v5, Lcom/swype/android/voice/FieldContext;

    invoke-direct {v5, v0, v3, v2, v4}, Lcom/swype/android/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    const-string v0, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {v5}, Lcom/swype/android/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->recognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method public stopListening()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager;->recognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 187
    const/4 v0, 0x1

    return v0
.end method
