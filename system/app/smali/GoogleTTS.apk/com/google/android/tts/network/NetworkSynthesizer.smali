.class public Lcom/google/android/tts/network/NetworkSynthesizer;
.super Ljava/lang/Object;
.source "NetworkSynthesizer.java"

# interfaces
.implements Lcom/google/android/tts/Synthesizer;


# instance fields
.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/tts/network/ByteArrayHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mHttpHelper:Lcom/google/android/tts/network/HttpHelper;

.field private final mLangCountryHelper:Lcom/google/android/tts/network/NetworkLangCountryHelper;

.field private mService:Ljava/util/concurrent/ExecutorService;

.field private final mSpeexDecoder:Lcom/google/android/tts/network/BufferedSpeexDecoder;

.field private final mStateLock:Ljava/lang/Object;

.field private mStopRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/tts/network/NetworkLangCountryHelper;Lcom/google/android/common/base/Function;)V
    .registers 6
    .parameter "ctx"
    .parameter "helper"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/tts/network/NetworkLangCountryHelper;",
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, urlRewriter:Lcom/google/android/common/base/Function;,"Lcom/google/android/common/base/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStateLock:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mLangCountryHelper:Lcom/google/android/tts/network/NetworkLangCountryHelper;

    .line 61
    new-instance v0, Lcom/google/android/tts/network/HttpHelper;

    iget-object v1, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mLangCountryHelper:Lcom/google/android/tts/network/NetworkLangCountryHelper;

    invoke-direct {v0, p3, v1}, Lcom/google/android/tts/network/HttpHelper;-><init>(Lcom/google/android/common/base/Function;Lcom/google/android/tts/network/NetworkLangCountryHelper;)V

    iput-object v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mHttpHelper:Lcom/google/android/tts/network/HttpHelper;

    .line 62
    new-instance v0, Lcom/google/android/tts/network/BufferedSpeexDecoder;

    invoke-direct {v0}, Lcom/google/android/tts/network/BufferedSpeexDecoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mSpeexDecoder:Lcom/google/android/tts/network/BufferedSpeexDecoder;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStopRequested:Z

    .line 64
    return-void
.end method

.method private decodeAndWriteData([BLcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .registers 13
    .parameter "bytes"
    .parameter "ttsRequest"
    .parameter "callback"

    .prologue
    const/4 v8, 0x0

    .line 165
    iget-object v5, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mSpeexDecoder:Lcom/google/android/tts/network/BufferedSpeexDecoder;

    sget-object v6, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->WB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->startSynthesis(Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;I)V

    .line 167
    iget-object v6, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 168
    :try_start_d
    iget-boolean v5, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStopRequested:Z

    if-eqz v5, :cond_16

    .line 169
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStopRequested:Z

    .line 170
    monitor-exit v6

    .line 196
    :goto_15
    return-void

    .line 172
    :cond_16
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_4a

    .line 173
    invoke-virtual {p2}, Lcom/google/android/tts/GoogleTtsRequest;->setServed()V

    .line 175
    sget-object v5, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->WB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    invoke-virtual {v5}, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->getRate()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-interface {p3, v5, v6, v7}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    .line 177
    iget-object v5, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mSpeexDecoder:Lcom/google/android/tts/network/BufferedSpeexDecoder;

    invoke-virtual {v5}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->getOutputBufferSize()I

    move-result v5

    new-array v0, v5, [B

    .line 178
    .local v0, buffer:[B
    iget-object v5, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mSpeexDecoder:Lcom/google/android/tts/network/BufferedSpeexDecoder;

    invoke-virtual {v5}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->getInputBufferSize()I

    move-result v4

    .line 179
    .local v4, frameSize:I
    const/4 v3, 0x0

    .line 181
    .local v3, count:I
    :goto_34
    array-length v5, p1

    if-ge v3, v5, :cond_54

    .line 182
    array-length v5, p1

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 183
    .local v2, bytesToRead:I
    iget-object v5, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mSpeexDecoder:Lcom/google/android/tts/network/BufferedSpeexDecoder;

    invoke-virtual {v5, p1, v3, v2, v0}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->getNextChunk([BII[B)I

    move-result v1

    .line 184
    .local v1, bytesDecoded:I
    if-lez v1, :cond_4d

    .line 185
    add-int/2addr v3, v2

    .line 186
    invoke-interface {p3, v0, v8, v1}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    goto :goto_34

    .line 172
    .end local v0           #buffer:[B
    .end local v1           #bytesDecoded:I
    .end local v2           #bytesToRead:I
    .end local v3           #count:I
    .end local v4           #frameSize:I
    :catchall_4a
    move-exception v5

    :try_start_4b
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v5

    .line 188
    .restart local v0       #buffer:[B
    .restart local v1       #bytesDecoded:I
    .restart local v2       #bytesToRead:I
    .restart local v3       #count:I
    .restart local v4       #frameSize:I
    :cond_4d
    const-string v5, "NetworkSynthesizer"

    const-string v6, "Error decoding speex stream, bytesRead < 0"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1           #bytesDecoded:I
    .end local v2           #bytesToRead:I
    :cond_54
    iget-object v5, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mSpeexDecoder:Lcom/google/android/tts/network/BufferedSpeexDecoder;

    invoke-virtual {v5}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->endSynthesis()V

    .line 195
    invoke-interface {p3}, Landroid/speech/tts/SynthesisCallback;->done()I

    goto :goto_15
.end method


# virtual methods
.method public getLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "language"
    .parameter "country"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mLangCountryHelper:Lcom/google/android/tts/network/NetworkLangCountryHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/tts/network/NetworkLangCountryHelper;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClose()V
    .registers 6

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 79
    :try_start_5
    iget-object v1, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 80
    const-string v1, "NetworkSynthesizer"

    const-string v2, "Network tasks did not terminate within timeout."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_18} :catch_19

    .line 85
    :cond_18
    :goto_18
    return-void

    .line 82
    :catch_19
    move-exception v0

    .line 83
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v1, "NetworkSynthesizer"

    const-string v2, "Thread interrupted while waiting for tasks to complete."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public onInit()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mService:Ljava/util/concurrent/ExecutorService;

    .line 70
    return-void
.end method

.method public onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "language"
    .parameter "country"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mLangCountryHelper:Lcom/google/android/tts/network/NetworkLangCountryHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/tts/network/NetworkLangCountryHelper;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onStop()V
    .registers 4

    .prologue
    .line 200
    iget-object v1, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_3
    iget-object v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_d

    .line 204
    iget-object v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 206
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStopRequested:Z

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .registers 15
    .parameter "ttsRequest"
    .parameter "callback"

    .prologue
    .line 89
    iget-object v8, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v8

    .line 94
    const/4 v7, 0x0

    :try_start_4
    iput-boolean v7, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStopRequested:Z

    .line 95
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    .line 96
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getTimeout()I

    move-result v7

    int-to-long v1, v7

    .line 98
    .local v1, delayMs:J
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/android/tts/network/NetworkSynthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x2

    if-ne v7, v8, :cond_25

    .line 105
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->setServed()V

    .line 106
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    .line 156
    :goto_21
    return-void

    .line 95
    .end local v1           #delayMs:J
    :catchall_22
    move-exception v7

    :try_start_23
    monitor-exit v8
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v7

    .line 110
    .restart local v1       #delayMs:J
    :cond_25
    iget-object v8, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v8

    .line 111
    :try_start_28
    iget-boolean v7, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStopRequested:Z

    if-eqz v7, :cond_34

    .line 112
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStopRequested:Z

    .line 113
    monitor-exit v8

    goto :goto_21

    .line 119
    :catchall_31
    move-exception v7

    monitor-exit v8
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v7

    .line 115
    :cond_34
    :try_start_34
    iget-object v7, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/google/android/tts/network/NetworkFetchTask;

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getTimeout()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mHttpHelper:Lcom/google/android/tts/network/HttpHelper;

    invoke-direct {v9, p1, v10, p2, v11}, Lcom/google/android/tts/network/NetworkFetchTask;-><init>(Lcom/google/android/tts/GoogleTtsRequest;ILandroid/speech/tts/SynthesisCallback;Lcom/google/android/tts/network/HttpHelper;)V

    invoke-interface {v7, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mFuture:Ljava/util/concurrent/Future;

    .line 118
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStopRequested:Z

    .line 119
    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_31

    .line 120
    const/4 v4, 0x0

    .line 122
    .local v4, holder:Lcom/google/android/tts/network/ByteArrayHolder;
    :try_start_4c
    iget-object v7, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mFuture:Ljava/util/concurrent/Future;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v1, v2, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #holder:Lcom/google/android/tts/network/ByteArrayHolder;
    check-cast v4, Lcom/google/android/tts/network/ByteArrayHolder;
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_56} :catch_60
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4c .. :try_end_56} :catch_65
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4c .. :try_end_56} :catch_96
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4c .. :try_end_56} :catch_ce

    .line 151
    .restart local v4       #holder:Lcom/google/android/tts/network/ByteArrayHolder;
    if-eqz v4, :cond_e1

    .line 152
    invoke-virtual {v4}, Lcom/google/android/tts/network/ByteArrayHolder;->get()[B

    move-result-object v7

    invoke-direct {p0, v7, p1, p2}, Lcom/google/android/tts/network/NetworkSynthesizer;->decodeAndWriteData([BLcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V

    goto :goto_21

    .line 123
    .end local v4           #holder:Lcom/google/android/tts/network/ByteArrayHolder;
    :catch_60
    move-exception v5

    .line 124
    .local v5, ie:Ljava/lang/InterruptedException;
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    goto :goto_21

    .line 126
    .end local v5           #ie:Ljava/lang/InterruptedException;
    :catch_65
    move-exception v3

    .line 127
    .local v3, ee:Ljava/util/concurrent/ExecutionException;
    const-string v7, "NetworkSynthesizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Error executing network fetch : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    goto :goto_21

    .line 131
    .end local v3           #ee:Ljava/util/concurrent/ExecutionException;
    :catch_96
    move-exception v6

    .line 132
    .local v6, te:Ljava/util/concurrent/TimeoutException;
    const-string v7, "NetworkSynthesizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Timed out executing network fetch : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v7, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mFuture:Ljava/util/concurrent/Future;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 137
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    goto/16 :goto_21

    .line 139
    .end local v6           #te:Ljava/util/concurrent/TimeoutException;
    :catch_ce
    move-exception v0

    .line 141
    .local v0, ce:Ljava/util/concurrent/CancellationException;
    iget-object v8, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v8

    .line 142
    const/4 v7, 0x0

    :try_start_d3
    iput-boolean v7, p0, Lcom/google/android/tts/network/NetworkSynthesizer;->mStopRequested:Z

    .line 143
    monitor-exit v8
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_de

    .line 146
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->setServed()V

    .line 147
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    goto/16 :goto_21

    .line 143
    :catchall_de
    move-exception v7

    :try_start_df
    monitor-exit v8
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v7

    .line 154
    .end local v0           #ce:Ljava/util/concurrent/CancellationException;
    .restart local v4       #holder:Lcom/google/android/tts/network/ByteArrayHolder;
    :cond_e1
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    goto/16 :goto_21
.end method
