.class public Lcom/google/android/apps/googlevoice/core/Transcript;
.super Ljava/lang/Object;
.source "Transcript.java"


# instance fields
.field private confidenceLevel:F

.field private editedText:Ljava/lang/String;

.field private wordConfidenceLevels:[F

.field private wordEndTimes:[F

.field private wordStartTimes:[F

.field private words:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)V
    .registers 7
    .parameter "apiTranscript"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/core/TranscriptException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v3, "apiTranscript"

    invoke-static {p1, v3}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/core/Transcript;->readTranscriptConfidenceLevel(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)F

    move-result v3

    iput v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->confidenceLevel:F

    .line 28
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getWordTokensCount()I

    move-result v2

    .line 29
    .local v2, wordCount:I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->words:[Ljava/lang/String;

    .line 30
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordStartTimes:[F

    .line 31
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordEndTimes:[F

    .line 32
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordConfidenceLevels:[F

    .line 33
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-ge v1, v2, :cond_4c

    .line 34
    invoke-virtual {p1, v1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getWordTokens(I)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v0

    .line 35
    .local v0, apiWordToken:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->words:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getWord()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 36
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordConfidenceLevels:[F

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/core/Transcript;->readWordConfidenceLevel(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)F

    move-result v4

    aput v4, v3, v1

    .line 37
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordStartTimes:[F

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/core/Transcript;->readWordStartTime(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)F

    move-result v4

    aput v4, v3, v1

    .line 38
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordEndTimes:[F

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/core/Transcript;->readWordEndTime(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)F

    move-result v4

    aput v4, v3, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 41
    .end local v0           #apiWordToken:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    :cond_4c
    iget v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->confidenceLevel:F

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/core/Transcript;->validateConfidenceLevel(F)V

    .line 42
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordConfidenceLevels:[F

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/core/Transcript;->validateWordConfidenceLevels([F)V

    .line 43
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordStartTimes:[F

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/core/Transcript;->validateWordTimes([F)V

    .line 44
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordEndTimes:[F

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/core/Transcript;->validateWordTimes([F)V

    .line 45
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getEditedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->editedText:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private static readTranscriptConfidenceLevel(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)F
    .registers 4
    .parameter "apiTranscript"

    .prologue
    const/high16 v2, 0x3f80

    .line 93
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->hasConfidence()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 94
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getConfidence()F

    move-result v0

    .line 98
    .local v0, confidenceLevel:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    .line 99
    neg-float v0, v0

    .line 101
    :cond_12
    cmpl-float v1, v0, v2

    if-lez v1, :cond_17

    .line 102
    rem-float/2addr v0, v2

    .line 106
    .end local v0           #confidenceLevel:F
    :cond_17
    :goto_17
    return v0

    :cond_18
    const/high16 v0, 0x7fc0

    goto :goto_17
.end method

.method private static readWordConfidenceLevel(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)F
    .registers 2
    .parameter "apiWordToken"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getConfidence()F

    move-result v0

    .line 115
    :goto_a
    return v0

    :cond_b
    const/high16 v0, 0x7fc0

    goto :goto_a
.end method

.method private static readWordEndTime(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)F
    .registers 2
    .parameter "apiWordToken"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 131
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getEnd()F

    move-result v0

    .line 133
    :goto_a
    return v0

    :cond_b
    const/high16 v0, 0x7fc0

    goto :goto_a
.end method

.method private static readWordStartTime(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;)F
    .registers 2
    .parameter "apiWordToken"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 122
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->getStart()F

    move-result v0

    .line 124
    :goto_a
    return v0

    :cond_b
    const/high16 v0, 0x7fc0

    goto :goto_a
.end method

.method private static validateConfidenceLevel(F)V
    .registers 5
    .parameter "confidenceLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/core/TranscriptException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_d

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_d

    .line 169
    return-void

    .line 171
    :cond_d
    new-instance v0, Lcom/google/android/apps/googlevoice/core/TranscriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid confidence level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/core/TranscriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateWordConfidenceLevels([F)V
    .registers 3
    .parameter "wordConfidenceLevels"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/core/TranscriptException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 179
    aget v1, p0, v0

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/core/Transcript;->validateConfidenceLevel(F)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_c
    return-void
.end method

.method private static validateWordTime(F)V
    .registers 4
    .parameter "wordTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/core/TranscriptException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_c

    .line 193
    :cond_b
    return-void

    .line 195
    :cond_c
    new-instance v0, Lcom/google/android/apps/googlevoice/core/TranscriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid word time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/core/TranscriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateWordTimes([F)V
    .registers 3
    .parameter "wordTimes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/core/TranscriptException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 186
    aget v1, p0, v0

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/core/Transcript;->validateWordTime(F)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_c
    return-void
.end method


# virtual methods
.method public getConfidenceLevel()F
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->confidenceLevel:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 7

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Transcript;->isEdited()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 56
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->editedText:Ljava/lang/String;

    .line 64
    :goto_8
    return-object v5

    .line 58
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->words:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_12
    if-ge v2, v3, :cond_21

    aget-object v4, v0, v2

    .line 61
    .local v4, word:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 64
    .end local v4           #word:Ljava/lang/String;
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_8
.end method

.method public getWordConfidenceLevels()[F
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordConfidenceLevels:[F

    return-object v0
.end method

.method public getWordEndTimes()[F
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordEndTimes:[F

    return-object v0
.end method

.method public getWordStartTimes()[F
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordStartTimes:[F

    return-object v0
.end method

.method public getWords()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->words:[Ljava/lang/String;

    return-object v0
.end method

.method public isEdited()Z
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->editedText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public declared-synchronized toApiTranscriptSimple()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 139
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v2

    .line 140
    .local v2, apiTranscriptBuilder:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    iget v7, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->confidenceLevel:F

    invoke-virtual {v2, v7}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->setConfidence(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    .line 141
    const/4 v1, 0x1

    .line 142
    .local v1, addTimes:Z
    const/4 v0, 0x1

    .line 143
    .local v0, addConfidence:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->words:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_69

    .line 144
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    move-result-object v3

    .line 145
    .local v3, apiTranscriptWordToken:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->words:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v3, v7}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->setWord(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    .line 146
    if-eqz v0, :cond_36

    .line 147
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordConfidenceLevels:[F

    aget v7, v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_65

    move v0, v5

    .line 148
    :goto_2d
    if-eqz v0, :cond_36

    .line 149
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordConfidenceLevels:[F

    aget v7, v7, v4

    invoke-virtual {v3, v7}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->setConfidence(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    .line 152
    :cond_36
    if-eqz v1, :cond_5f

    .line 153
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordStartTimes:[F

    aget v7, v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_67

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordEndTimes:[F

    aget v7, v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_67

    move v1, v5

    .line 154
    :goto_4f
    if-eqz v1, :cond_5f

    .line 155
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordStartTimes:[F

    aget v7, v7, v4

    invoke-virtual {v3, v7}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->setStart(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    .line 156
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->wordEndTimes:[F

    aget v7, v7, v4

    invoke-virtual {v3, v7}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;->setEnd(F)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;

    .line 159
    :cond_5f
    invoke-virtual {v2, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->addWordTokens(Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_65
    move v0, v6

    .line 147
    goto :goto_2d

    :cond_67
    move v1, v6

    .line 153
    goto :goto_4f

    .line 161
    .end local v3           #apiTranscriptWordToken:Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken$Builder;
    :cond_69
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/core/Transcript;->editedText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->setEditedText(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    .line 162
    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_74

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 139
    .end local v0           #addConfidence:Z
    .end local v1           #addTimes:Z
    .end local v2           #apiTranscriptBuilder:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .end local v4           #i:I
    :catchall_74
    move-exception v5

    monitor-exit p0

    throw v5
.end method
