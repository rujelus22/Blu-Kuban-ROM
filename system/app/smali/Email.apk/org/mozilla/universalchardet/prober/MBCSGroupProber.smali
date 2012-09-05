.class public Lorg/mozilla/universalchardet/prober/MBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "MBCSGroupProber.java"


# instance fields
.field private activeNum:I

.field private bestGuess:I

.field private bestGuess2:I

.field private isActive:[Z

.field private probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x7

    .line 56
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 58
    new-array v0, v1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 59
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    .line 61
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x0

    new-instance v2, Lorg/mozilla/universalchardet/prober/UTF8Prober;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/UTF8Prober;-><init>()V

    aput-object v2, v0, v1

    .line 62
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x1

    new-instance v2, Lorg/mozilla/universalchardet/prober/SJISProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/SJISProber;-><init>()V

    aput-object v2, v0, v1

    .line 63
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x2

    new-instance v2, Lorg/mozilla/universalchardet/prober/EUCJPProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EUCJPProber;-><init>()V

    aput-object v2, v0, v1

    .line 64
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x3

    new-instance v2, Lorg/mozilla/universalchardet/prober/GB18030Prober;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/GB18030Prober;-><init>()V

    aput-object v2, v0, v1

    .line 65
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x4

    new-instance v2, Lorg/mozilla/universalchardet/prober/EUCKRProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EUCKRProber;-><init>()V

    aput-object v2, v0, v1

    .line 66
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x5

    new-instance v2, Lorg/mozilla/universalchardet/prober/Big5Prober;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/Big5Prober;-><init>()V

    aput-object v2, v0, v1

    .line 67
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x6

    new-instance v2, Lorg/mozilla/universalchardet/prober/EUCTWProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EUCTWProber;-><init>()V

    aput-object v2, v0, v1

    .line 69
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->reset()V

    .line 70
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 74
    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    if-ne v1, v3, :cond_f

    .line 75
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->getConfidence()F

    .line 76
    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    if-ne v1, v3, :cond_f

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    .line 80
    :cond_f
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    iget v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, result:Ljava/lang/String;
    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess2:I

    if-eq v1, v3, :cond_3e

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    iget v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess2:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_3e
    return-object v0
.end method

.method public getConfidence()F
    .registers 6

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 92
    .local v0, bestConf:F
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_b

    .line 93
    const v3, 0x3f7d70a4

    .line 112
    :goto_a
    return v3

    .line 94
    :cond_b
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_15

    .line 95
    const v3, 0x3c23d70a

    goto :goto_a

    .line 97
    :cond_15
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v3

    if-ge v2, v3, :cond_3b

    .line 98
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_24

    .line 97
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 102
    :cond_24
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v1

    .line 103
    .local v1, cf:F
    cmpg-float v3, v0, v1

    if-gez v3, :cond_34

    .line 104
    move v0, v1

    .line 105
    iput v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    goto :goto_21

    .line 106
    :cond_34
    cmpl-float v3, v0, v1

    if-nez v3, :cond_21

    .line 107
    iput v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess2:I

    goto :goto_21

    .end local v1           #cf:F
    :cond_3b
    move v3, v0

    .line 112
    goto :goto_a
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 13
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v8, 0x0

    .line 124
    const/4 v4, 0x1

    .line 125
    .local v4, keepNext:Z
    new-array v0, p3, [B

    .line 126
    .local v0, highbyteBuf:[B
    const/4 v1, 0x0

    .line 128
    .local v1, highpos:I
    add-int v5, p2, p3

    .line 129
    .local v5, maxPos:I
    move v3, p2

    .local v3, i:I
    move v2, v1

    .end local v1           #highpos:I
    .local v2, highpos:I
    :goto_9
    if-ge v3, v5, :cond_26

    .line 130
    aget-byte v7, p1, v3

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_1c

    .line 131
    add-int/lit8 v1, v2, 0x1

    .end local v2           #highpos:I
    .restart local v1       #highpos:I
    aget-byte v7, p1, v3

    aput-byte v7, v0, v2

    .line 132
    const/4 v4, 0x1

    .line 129
    :goto_18
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #highpos:I
    .restart local v2       #highpos:I
    goto :goto_9

    .line 135
    :cond_1c
    if-eqz v4, :cond_61

    .line 136
    add-int/lit8 v1, v2, 0x1

    .end local v2           #highpos:I
    .restart local v1       #highpos:I
    aget-byte v7, p1, v3

    aput-byte v7, v0, v2

    .line 137
    const/4 v4, 0x0

    goto :goto_18

    .line 142
    .end local v1           #highpos:I
    .restart local v2       #highpos:I
    :cond_26
    const/4 v3, 0x0

    :goto_27
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v7, v7

    if-ge v3, v7, :cond_47

    .line 143
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    aget-boolean v7, v7, v3

    if-nez v7, :cond_35

    .line 142
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 146
    :cond_35
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v7, v7, v3

    invoke-virtual {v7, v0, v8, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v6

    .line 147
    .local v6, st:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v6, v7, :cond_4a

    .line 148
    iput v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    .line 149
    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 161
    .end local v6           #st:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    :cond_47
    :goto_47
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v7

    .line 151
    .restart local v6       #st:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    :cond_4a
    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v6, v7, :cond_32

    .line 152
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    aput-boolean v8, v7, v3

    .line 153
    iget v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 154
    iget v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    if-gtz v7, :cond_32

    .line 155
    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_47

    .end local v6           #st:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    :cond_61
    move v1, v2

    .end local v2           #highpos:I
    .restart local v1       #highpos:I
    goto :goto_18
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 168
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 169
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 170
    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 172
    :cond_1f
    iput v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    .line 173
    iput v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess2:I

    .line 174
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 175
    return-void
.end method
