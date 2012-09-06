.class public Lcom/google/tts/SynthProxyBeta;
.super Ljava/lang/Object;
.source "SynthProxyBeta.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SynthProxy"


# instance fields
.field private mJniData:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 148
    const-string v1, "ttssynthproxybeta"

    .line 149
    .local v1, proxyBinaryFilename:Ljava/lang/String;
    const/4 v2, 0x4

    .line 151
    .local v2, sdkInt:I
    :try_start_3
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_8} :catch_12

    move-result v2

    .line 155
    :goto_9
    const/4 v3, 0x4

    if-le v2, v3, :cond_e

    .line 156
    const-string v1, "ttssynthproxybeta_eclair"

    .line 158
    :cond_e
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void

    .line 152
    :catch_12
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SynthProxyBeta"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse SDK version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "nativeSoLib"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    .line 42
    const-string v0, "TTS is loading"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/google/tts/SynthProxyBeta;->native_setup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private final native native_finalize(I)V
.end method

.method private final native native_getLanguage(I)[Ljava/lang/String;
.end method

.method private final native native_getRate(I)I
.end method

.method private final native native_isLanguageAvailable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_loadLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_setLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_setPitch(II)I
.end method

.method private final native native_setSpeechRate(II)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method private final native native_shutdown(I)V
.end method

.method private final native native_speak(ILjava/lang/String;I)I
.end method

.method private final native native_stop(I)I
.end method

.method private final native native_stopSync(I)I
.end method

.method private final native native_synthesizeToFile(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static postNativeSpeechSynthesizedInJava(Ljava/lang/Object;II)V
    .registers 7
    .parameter "tts_ref"
    .parameter "bufferPointer"
    .parameter "bufferSize"

    .prologue
    .line 206
    const-string v1, "TTS plugin debug"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bufferPointer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bufferSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tts/SynthProxyBeta;

    .line 211
    .local v0, nativeTTS:Lcom/google/tts/SynthProxyBeta;
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0}, Lcom/google/tts/SynthProxyBeta;->native_finalize(I)V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    .line 144
    return-void
.end method

.method public getLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0}, Lcom/google/tts/SynthProxyBeta;->native_getLanguage(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRate()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0}, Lcom/google/tts/SynthProxyBeta;->native_getRate(I)I

    move-result v0

    return v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 84
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/tts/SynthProxyBeta;->native_isLanguageAvailable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 98
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/tts/SynthProxyBeta;->native_loadLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 91
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/tts/SynthProxyBeta;->native_setLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final setPitch(I)I
    .registers 3
    .parameter "pitch"

    .prologue
    .line 112
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0, p1}, Lcom/google/tts/SynthProxyBeta;->native_setPitch(II)I

    move-result v0

    return v0
.end method

.method public final setSpeechRate(I)I
    .registers 3
    .parameter "speechRate"

    .prologue
    .line 105
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0, p1}, Lcom/google/tts/SynthProxyBeta;->native_setSpeechRate(II)I

    move-result v0

    return v0
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0}, Lcom/google/tts/SynthProxyBeta;->native_shutdown(I)V

    .line 134
    return-void
.end method

.method public speak(Ljava/lang/String;I)I
    .registers 6
    .parameter "text"
    .parameter "streamType"

    .prologue
    .line 62
    const/4 v0, -0x1

    if-le p2, v0, :cond_d

    const/4 v0, 0x5

    if-ge p2, v0, :cond_d

    .line 63
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/tts/SynthProxyBeta;->native_speak(ILjava/lang/String;I)I

    move-result v0

    .line 66
    :goto_c
    return v0

    .line 65
    :cond_d
    const-string v0, "SynthProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to speak with invalid stream type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lcom/google/tts/SynthProxyBeta;->native_speak(ILjava/lang/String;I)I

    move-result v0

    goto :goto_c
.end method

.method public stop()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0}, Lcom/google/tts/SynthProxyBeta;->native_stop(I)I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 76
    iget v0, p0, Lcom/google/tts/SynthProxyBeta;->mJniData:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/tts/SynthProxyBeta;->native_synthesizeToFile(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
