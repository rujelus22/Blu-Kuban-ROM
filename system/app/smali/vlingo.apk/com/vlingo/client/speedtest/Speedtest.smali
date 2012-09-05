.class public Lcom/vlingo/client/speedtest/Speedtest;
.super Lcom/vlingo/client/asr/ResultDispatcher;
.source "Speedtest.java"

# interfaces
.implements Lcom/vlingo/client/speedtest/SpeedtestListener;


# static fields
.field private static final DEFAULT_DELAY:F = 2.0f

.field private static final DEFAULT_SPEECH_CHUNKSIZE:I = 0x400

.field private static final DEFAULT_UTTERANCE_DURATION:F = 4.0f

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field m_checkIntervalMultiplier:F

.field m_delay:F

.field private m_guttId:Ljava/lang/String;

.field m_speechChunkSize:I

.field m_utteranceDuration:F

.field m_variables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vlingo/client/speedtest/SpeedtestVariable;",
            ">;"
        }
    .end annotation
.end field

.field private okToRun:Z

.field private resultTime:J

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/vlingo/client/speedtest/Speedtest;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/speedtest/Speedtest;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/asr/ResultDispatcher;-><init>()V

    .line 35
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_utteranceDuration:F

    .line 36
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_delay:F

    .line 37
    const/16 v0, 0x400

    iput v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_speechChunkSize:I

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_checkIntervalMultiplier:F

    .line 40
    iput-boolean v1, p0, Lcom/vlingo/client/speedtest/Speedtest;->running:Z

    .line 42
    iput-boolean v1, p0, Lcom/vlingo/client/speedtest/Speedtest;->okToRun:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_guttId:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_variables:Ljava/util/List;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->okToRun:Z

    .line 48
    return-void
.end method

.method private getCurrentContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 82
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 83
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_11

    .line 84
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private restoreRecognitionClassesAfterTimingTest()V
    .registers 3

    .prologue
    .line 179
    const/16 v0, 0x400

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recorder;->debugSetAudioStreamingSize(IF)V

    .line 180
    return-void
.end method

.method private setValueForVariable(Lcom/vlingo/client/speedtest/SpeedtestVariable;)V
    .registers 5
    .parameter "stv"

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/vlingo/client/speedtest/SpeedtestVariable;->getRandomValue()F

    move-result v1

    .line 183
    .local v1, value:F
    invoke-virtual {p1}, Lcom/vlingo/client/speedtest/SpeedtestVariable;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, name:Ljava/lang/String;
    const-string v2, "WaitTime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 185
    iput v1, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_delay:F

    .line 199
    :cond_12
    :goto_12
    return-void

    .line 187
    :cond_13
    const-string v2, "SpeechDuration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 188
    iput v1, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_utteranceDuration:F

    goto :goto_12

    .line 190
    :cond_1e
    const-string v2, "SpeechChunkSize"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 191
    float-to-int v2, v1

    iput v2, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_speechChunkSize:I

    goto :goto_12

    .line 195
    :cond_2a
    const-string v2, "checkIntervalMultiplier"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 196
    iput v1, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_checkIntervalMultiplier:F

    goto :goto_12
.end method

.method private setupRecognitionClassesForTimingTest(I)V
    .registers 4
    .parameter "utteranceIndex"

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/time200_swapped_raw_16k/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".swapped.16k.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/media/control/RecordControl;->setFakeUtterance(Ljava/lang/String;)V

    .line 174
    iget v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_speechChunkSize:I

    iget v1, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_checkIntervalMultiplier:F

    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recorder;->debugSetAudioStreamingSize(IF)V

    .line 176
    return-void
.end method

.method private startRecognition()V
    .registers 4

    .prologue
    .line 89
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/asr/RecognitionTarget;

    .line 90
    .local v1, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v1}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 91
    .local v0, srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    const-string v2, "Vlingo"

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 92
    const-string v2, "vp_main"

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/speedtest/Speedtest;->getCurrentContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;)Z

    .line 95
    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;FFZI)V
    .registers 13
    .parameter "name"
    .parameter "min"
    .parameter "max"
    .parameter "useExpProb"
    .parameter "numSteps"

    .prologue
    .line 50
    iget-object v6, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_variables:Ljava/util/List;

    new-instance v0, Lcom/vlingo/client/speedtest/SpeedtestVariable;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/vlingo/client/speedtest/SpeedtestVariable;-><init>(Ljava/lang/String;FFZI)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public getOutputHeader()Ljava/lang/String;
    .registers 6

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, output:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_variables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/speedtest/SpeedtestVariable;

    .line 56
    .local v2, stv:Lcom/vlingo/client/speedtest/SpeedtestVariable;
    if-nez v1, :cond_1a

    .line 57
    invoke-virtual {v2}, Lcom/vlingo/client/speedtest/SpeedtestVariable;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 60
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vlingo/client/speedtest/SpeedtestVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 63
    .end local v2           #stv:Lcom/vlingo/client/speedtest/SpeedtestVariable;
    :cond_36
    if-nez v1, :cond_3b

    .line 64
    const-string v1, "Response Time"

    .line 70
    :goto_3a
    return-object v1

    .line 67
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tResponse Time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->okToRun:Z

    .line 78
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->cancelRecognition()V

    .line 80
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->okToRun:Z

    .line 75
    return-void
.end method

.method public recognitionComplete()V
    .registers 3

    .prologue
    .line 201
    sget-object v0, Lcom/vlingo/client/speedtest/Speedtest;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "got recognition complete"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->running:Z

    .line 203
    return-void
.end method

.method public registerEvent(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 205
    sget-object v0, Lcom/vlingo/client/speedtest/Speedtest;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 206
    const-string v0, "Result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->resultTime:J

    .line 209
    :cond_26
    const-string v0, "Abort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->resultTime:J

    .line 213
    :cond_34
    return-void
.end method

.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 5
    .parameter "response"

    .prologue
    .line 215
    sget-object v0, Lcom/vlingo/client/speedtest/Speedtest;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got resultHandler call response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->resultTime:J

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->running:Z

    .line 218
    if-eqz p1, :cond_2d

    .line 219
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getGUttId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/speedtest/Speedtest;->m_guttId:Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    invoke-static {v0}, Ljavax/microedition/media/control/RecordControl;->setFakeUtterance(Ljava/lang/String;)V

    .line 222
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method public runUtterance(Landroid/app/Activity;I)Ljava/lang/String;
    .registers 20
    .parameter "activity"
    .parameter "utteranceIndex"

    .prologue
    .line 97
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->okToRun:Z

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->m_variables:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vlingo/client/speedtest/SpeedtestVariable;

    .line 99
    .local v10, stv:Lcom/vlingo/client/speedtest/SpeedtestVariable;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/vlingo/client/speedtest/Speedtest;->setValueForVariable(Lcom/vlingo/client/speedtest/SpeedtestVariable;)V

    goto :goto_d

    .line 101
    .end local v10           #stv:Lcom/vlingo/client/speedtest/SpeedtestVariable;
    :cond_1f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->m_delay:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_38

    .line 103
    :try_start_28
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->m_delay:F

    float-to-double v13, v13

    const-wide v15, 0x408f400000000000L

    mul-double/2addr v13, v15

    double-to-int v13, v13

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_38} :catch_17e

    .line 110
    :cond_38
    :goto_38
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/vlingo/client/speedtest/Speedtest;->setupRecognitionClassesForTimingTest(I)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 114
    .local v6, startTime:J
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->m_guttId:Ljava/lang/String;

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/speedtest/Speedtest;->startRecognition()V

    .line 117
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->running:Z

    .line 118
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->resultTime:J

    .line 119
    sget-object v13, Lcom/vlingo/client/speedtest/Speedtest;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "done with startRecognition sleeping for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vlingo/client/speedtest/Speedtest;->m_utteranceDuration:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 121
    :goto_73
    invoke-static {}, Ljavax/microedition/media/control/RecordControl;->isFakeWaveformDone()Z

    move-result v13

    if-nez v13, :cond_84

    .line 123
    const-wide/16 v13, 0x32

    :try_start_7b
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_73

    .line 124
    :catch_7f
    move-exception v2

    .line 126
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_73

    .line 130
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 131
    .local v8, stopTime:J
    sub-long v11, v8, v6

    .line 132
    .local v11, utteranceDuration:J
    sget-object v13, Lcom/vlingo/client/speedtest/Speedtest;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Done with waveform dur "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V

    .line 135
    sget-object v13, Lcom/vlingo/client/speedtest/Speedtest;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sent stop running "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/vlingo/client/speedtest/Speedtest;->running:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ok to run "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/vlingo/client/speedtest/Speedtest;->okToRun:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 137
    :goto_cf
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->running:Z

    if-eqz v13, :cond_e6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->okToRun:Z

    if-eqz v13, :cond_e6

    .line 139
    const-wide/16 v13, 0xc8

    :try_start_dd
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e0
    .catch Ljava/lang/InterruptedException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_cf

    .line 140
    :catch_e1
    move-exception v2

    .line 142
    .restart local v2       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_cf

    .line 146
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_e6
    const/4 v4, 0x0

    .line 147
    .local v4, output:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vlingo/client/speedtest/Speedtest;->m_variables:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ef
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_126

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vlingo/client/speedtest/SpeedtestVariable;

    .line 148
    .restart local v10       #stv:Lcom/vlingo/client/speedtest/SpeedtestVariable;
    if-nez v4, :cond_106

    .line 149
    invoke-virtual {v10}, Lcom/vlingo/client/speedtest/SpeedtestVariable;->getCurrentValue()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    goto :goto_ef

    .line 152
    :cond_106
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/vlingo/client/speedtest/SpeedtestVariable;->getCurrentValue()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_ef

    .line 155
    .end local v10           #stv:Lcom/vlingo/client/speedtest/SpeedtestVariable;
    :cond_126
    const-wide v13, 0x3f50624dd2f1a9fcL

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/vlingo/client/speedtest/Speedtest;->resultTime:J

    sub-long/2addr v15, v8

    long-to-double v15, v15

    mul-double/2addr v13, v15

    double-to-float v5, v13

    .line 156
    .local v5, overallDelay:F
    if-nez v4, :cond_162

    .line 157
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 163
    :goto_139
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/speedtest/Speedtest;->m_guttId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/speedtest/Speedtest;->restoreRecognitionClassesAfterTimingTest()V

    .line 166
    return-object v4

    .line 160
    :cond_162
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_139

    .line 104
    .end local v4           #output:Ljava/lang/String;
    .end local v5           #overallDelay:F
    .end local v6           #startTime:J
    .end local v8           #stopTime:J
    .end local v11           #utteranceDuration:J
    :catch_17e
    move-exception v13

    goto/16 :goto_38
.end method
