.class public Lcom/google/android/apps/unveil/nonstop/SpeechEngine;
.super Ljava/lang/Object;
.source "SpeechEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    }
.end annotation


# static fields
.field public static final PING:Ljava/lang/String; = "ping"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final audioManager:Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;

.field private final isSpeechEnabled:Z

.field private isTTSready:Z

.field private final speechQueue:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private final ttsInitCallback:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final vibrator:Lcom/google/android/apps/unveil/hardware/VibratorProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7
    .parameter "context"
    .parameter "warningMessageTextResId"
    .parameter "continuousTtsSettingsKeyResId"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isTTSready:Z

    .line 68
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speechQueue:Ljava/util/EnumMap;

    .line 82
    new-instance v1, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;-><init>(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->ttsInitCallback:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 122
    new-instance v1, Lcom/google/android/apps/unveil/env/AccessibilityUtils;

    invoke-direct {v1, p1, p3}, Lcom/google/android/apps/unveil/env/AccessibilityUtils;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->isSpokenAccessibilityEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isSpeechEnabled:Z

    .line 124
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isSpeechEnabled:Z

    if-eqz v1, :cond_41

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, services:Ljava/lang/String;
    if-eqz v0, :cond_41

    const-string v1, "com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 132
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 136
    .end local v0           #services:Ljava/lang/String;
    :cond_41
    new-instance v1, Lcom/google/android/apps/unveil/hardware/VibratorProxy;

    invoke-direct {v1, p1}, Lcom/google/android/apps/unveil/hardware/VibratorProxy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->vibrator:Lcom/google/android/apps/unveil/hardware/VibratorProxy;

    .line 137
    new-instance v1, Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;

    invoke-direct {v1, p1}, Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->audioManager:Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;

    .line 138
    return-void
.end method

.method protected constructor <init>(ZLcom/google/android/apps/unveil/hardware/VibratorProxy;Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;)V
    .registers 6
    .parameter "isSpeechEnabled"
    .parameter "vibrator"
    .parameter "audioManager"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isTTSready:Z

    .line 68
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speechQueue:Ljava/util/EnumMap;

    .line 82
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;-><init>(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->ttsInitCallback:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 145
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isSpeechEnabled:Z

    .line 146
    iput-object p2, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->vibrator:Lcom/google/android/apps/unveil/hardware/VibratorProxy;

    .line 147
    iput-object p3, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->audioManager:Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;

    .line 148
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;)Landroid/speech/tts/TextToSpeech;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speakNextItem()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isTTSready:Z

    return p1
.end method

.method private declared-synchronized speakNextItem()V
    .registers 11

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isTTSready:Z

    if-nez v6, :cond_11

    .line 222
    sget-object v6, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "SpeechEngine.speakNextItem() when TextToSpeech wasn\'t ready."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_72

    .line 255
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 225
    :cond_11
    :try_start_11
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speechQueue:Ljava/util/EnumMap;

    invoke-virtual {v6}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 229
    const/4 v5, 0x0

    .line 231
    .local v5, utterance:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->values()[Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_20
    if-ge v1, v2, :cond_39

    aget-object v4, v0, v1

    .line 232
    .local v4, slot:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speechQueue:Ljava/util/EnumMap;

    invoke-virtual {v6, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 233
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speechQueue:Ljava/util/EnumMap;

    invoke-virtual {v6, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #utterance:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 234
    .restart local v5       #utterance:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speechQueue:Ljava/util/EnumMap;

    invoke-virtual {v6, v4}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v4           #slot:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    :cond_39
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "ping"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 242
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->vibrator:Lcom/google/android/apps/unveil/hardware/VibratorProxy;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 243
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->vibrator:Lcom/google/android/apps/unveil/hardware/VibratorProxy;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/hardware/VibratorProxy;->vibrate(J)V

    .line 247
    :goto_55
    const-string v6, "utteranceId"

    const-string v7, "ping"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v5, ""

    .line 253
    :goto_5e
    sget-object v6, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "speakNextItem(%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_71
    .catchall {:try_start_11 .. :try_end_71} :catchall_72

    goto :goto_f

    .line 221
    .end local v0           #arr$:[Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #utterance:Ljava/lang/String;
    :catchall_72
    move-exception v6

    monitor-exit p0

    throw v6

    .line 231
    .restart local v0       #arr$:[Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #slot:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    .restart local v5       #utterance:Ljava/lang/String;
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 245
    .end local v4           #slot:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    .restart local v3       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_78
    :try_start_78
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->audioManager:Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/apps/unveil/hardware/AudioManagerProxy;->playSoundEffect(I)V

    goto :goto_55

    .line 250
    :cond_7f
    const-string v6, "utteranceId"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_72

    goto :goto_5e
.end method


# virtual methods
.method protected constructTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech;
    .registers 4
    .parameter "context"
    .parameter "ttsInitCallback"

    .prologue
    .line 169
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    return-object v0
.end method

.method public finalize()V
    .registers 4

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isTTSready:Z

    if-eqz v0, :cond_e

    .line 260
    sget-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "SpeechEngine.shutdown() not called. Leaking android.speech.tts.TextToSpeech!!!!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_e
    return-void
.end method

.method public declared-synchronized say(Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;Ljava/lang/String;)V
    .registers 7
    .parameter "slot"
    .parameter "msg"

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isSpeechEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v0, :cond_7

    .line 214
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 199
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isTTSready:Z

    if-nez v0, :cond_19

    .line 200
    sget-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "SpeechEngine.say() called before TextToSpeech is ready."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_16

    goto :goto_5

    .line 196
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_19
    :try_start_19
    sget-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "say(%s, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    if-nez p2, :cond_3c

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speechQueue:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :goto_30
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speakNextItem()V

    goto :goto_5

    .line 208
    :cond_3c
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speechQueue:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_16

    goto :goto_30
.end method

.method public declared-synchronized shutdown()V
    .registers 4

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isSpeechEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_7

    .line 185
    :goto_5
    monitor-exit p0

    return-void

    .line 181
    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "shutdown()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isTTSready:Z
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_5

    .line 177
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startup(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isSpeechEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-nez v0, :cond_7

    .line 162
    :goto_5
    monitor-exit p0

    return-void

    .line 160
    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "startup()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->ttsInitCallback:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->constructTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    goto :goto_5

    .line 156
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
