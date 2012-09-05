.class public Lcom/vlingo/client/core/recognizer/results/RecResults;
.super Ljava/lang/Object;
.source "RecResults.java"


# static fields
.field static final END_DELIM:C = '}'

.field static final START_DELIM:C = '{'

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field public choiceIndex:I

.field public guttid:Ljava/lang/String;

.field public iMostRecentRecEnd:Lcom/vlingo/client/core/recognizer/results/RecNBest;

.field public iMostRecentRecStart:Lcom/vlingo/client/core/recognizer/results/RecNBest;

.field public iNumWords:I

.field private iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

.field private mostRecentString:Ljava/lang/String;

.field private totalStringHash:I

.field public upDownArrowWordIndex:I

.field public uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

.field public uttListCSF:[Ljava/lang/String;

.field public uttListCannonical:[Ljava/lang/String;

.field public uttListConf:[F

.field public wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/recognizer/results/RecResults;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "aMaxWords"

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;-><init>(ILjava/lang/String;)V

    .line 271
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .parameter "aMaxWords"
    .parameter "guttid"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    .line 36
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->mostRecentString:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->totalStringHash:I

    .line 48
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    move-object v0, v1

    .line 51
    check-cast v0, [[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 54
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListConf:[F

    .line 57
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCannonical:[Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCSF:[Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->upDownArrowWordIndex:I

    .line 66
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iMostRecentRecStart:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 69
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iMostRecentRecEnd:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 275
    new-array v0, p1, [Lcom/vlingo/client/core/recognizer/results/RecNBest;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 276
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->guttid:Ljava/lang/String;

    .line 277
    return-void
.end method

.method private countMatchingContextWords(I[Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 12
    .parameter "index"
    .parameter "previousWords"
    .parameter "numPreviousWords"
    .parameter "nextWords"
    .parameter "numNextWords"

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, numFound:I
    const/4 v0, 0x2

    .line 172
    .local v0, SEARCH_PADDING:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, p3, :cond_16

    .line 174
    aget-object v3, p2, v1

    add-int/lit8 v4, p3, 0x2

    sub-int v4, p1, v4

    invoke-direct {p0, v3, v4, p1}, Lcom/vlingo/client/core/recognizer/results/RecResults;->hasMatchingWord(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 172
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 179
    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-ge v1, p5, :cond_2b

    .line 182
    aget-object v3, p4, v1

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p1

    invoke-direct {p0, v3, v4, v5}, Lcom/vlingo/client/core/recognizer/results/RecResults;->hasMatchingWord(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 179
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 187
    :cond_2b
    return v2
.end method

.method private growResults(I)V
    .registers 5
    .parameter "n"

    .prologue
    .line 324
    new-array v1, p1, [Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 326
    .local v1, newResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v0, v2, :cond_10

    .line 327
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 329
    :cond_10
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 330
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 331
    return-void
.end method

.method private hasMatchingWord(Ljava/lang/String;II)Z
    .registers 9
    .parameter "word"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 191
    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 192
    :cond_3
    iget v4, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-le p3, v4, :cond_9

    iget p3, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    .line 194
    :cond_9
    move v2, p2

    .local v2, i:I
    :goto_a
    if-ge v2, p3, :cond_28

    .line 195
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v4, v4, v2

    iget-object v1, v4, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 196
    .local v1, choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_13
    array-length v4, v1

    if-ge v3, v4, :cond_25

    .line 197
    aget-object v4, v1, v3

    iget-object v0, v4, Lcom/vlingo/client/core/recognizer/results/RecChoice;->originalChoice:Ljava/lang/String;

    .line 198
    .local v0, choice:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    .line 201
    .end local v0           #choice:Ljava/lang/String;
    .end local v1           #choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    .end local v3           #j:I
    :goto_21
    return v4

    .line 196
    .restart local v0       #choice:Ljava/lang/String;
    .restart local v1       #choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    .restart local v3       #j:I
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 194
    .end local v0           #choice:Ljava/lang/String;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 201
    .end local v1           #choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    .end local v3           #j:I
    :cond_28
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private moveWords(II)V
    .registers 8
    .parameter "aWordIndex"
    .parameter "aNumNewWords"

    .prologue
    .line 309
    iget v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int v1, v2, p2

    .line 310
    .local v1, newNumWords:I
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v2, v2

    if-le v1, v2, :cond_e

    .line 311
    mul-int/lit8 v2, v1, 0x2

    invoke-direct {p0, v2}, Lcom/vlingo/client/core/recognizer/results/RecResults;->growResults(I)V

    .line 316
    :cond_e
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_10
    add-int v2, p1, p2

    if-lt v0, v2, :cond_21

    .line 317
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    sub-int v4, v0, p2

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 316
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 319
    :cond_21
    iget v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    .line 320
    return-void
.end method


# virtual methods
.method public addNBest(ILcom/vlingo/client/core/recognizer/results/RecNBest;)V
    .registers 5
    .parameter "aNewIndex"
    .parameter "recNBest"

    .prologue
    .line 351
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v1, v1

    if-lt v0, v1, :cond_10

    .line 352
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->growResults(I)V

    .line 355
    :cond_10
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->moveWords(II)V

    .line 357
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aput-object p2, v0, p1

    .line 358
    return-void
.end method

.method public addWord(ILjava/lang/String;)V
    .registers 5
    .parameter "aNewIndex"
    .parameter "aNewString"

    .prologue
    .line 338
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v1, v1

    if-lt v0, v1, :cond_10

    .line 339
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->growResults(I)V

    .line 342
    :cond_10
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->moveWords(II)V

    .line 344
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    new-instance v1, Lcom/vlingo/client/core/recognizer/results/RecNBest;

    invoke-direct {v1, p2}, Lcom/vlingo/client/core/recognizer/results/RecNBest;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 345
    return-void
.end method

.method public append(Lcom/vlingo/client/core/recognizer/results/RecNBest;)V
    .registers 5
    .parameter "w"

    .prologue
    .line 376
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_10

    .line 377
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->growResults(I)V

    .line 379
    :cond_10
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    aput-object p1, v0, v1

    .line 380
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .registers 5
    .parameter "aNewString"

    .prologue
    .line 365
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_10

    .line 366
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->growResults(I)V

    .line 368
    :cond_10
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    new-instance v2, Lcom/vlingo/client/core/recognizer/results/RecNBest;

    invoke-direct {v2, p1}, Lcom/vlingo/client/core/recognizer/results/RecNBest;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 369
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v0, v1, :cond_d

    .line 78
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_d
    const/4 v1, 0x0

    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    .line 82
    return-void
.end method

.method public clearMostRecentRecognition()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iMostRecentRecStart:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 86
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iMostRecentRecEnd:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 87
    return-void
.end method

.method public clearPositions(I)V
    .registers 5
    .parameter "fromIndex"

    .prologue
    .line 441
    move v0, p1

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v0, v2, :cond_15

    .line 443
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v2, v2, v0

    if-eqz v2, :cond_12

    .line 444
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v1, v2, v0

    .line 446
    .local v1, w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->clearPosition()V

    .line 441
    .end local v1           #w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 449
    :cond_15
    return-void
.end method

.method public deleteWord(I)V
    .registers 6
    .parameter "aWordIndex"

    .prologue
    .line 425
    if-ltz p1, :cond_20

    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge p1, v1, :cond_20

    .line 426
    move v0, p1

    .local v0, i:I
    :goto_7
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1a

    .line 427
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 429
    :cond_1a
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    .line 431
    .end local v0           #i:I
    :cond_20
    return-void
.end method

.method public findNumChoice(I)I
    .registers 4
    .parameter "aWordIndex"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v0, v1, p1

    .line 417
    .local v0, w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget v1, v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    return v1
.end method

.method public getChars([C)I
    .registers 11
    .parameter "data"

    .prologue
    .line 506
    const/4 v1, 0x0

    .line 508
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v0, v7, :cond_31

    .line 509
    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v5, v7, v0

    .line 510
    .local v5, w1:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget-object v4, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 511
    .local v4, s1:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 513
    .local v3, len:I
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3, p1, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 514
    add-int/2addr v1, v3

    .line 515
    iget v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_2e

    .line 516
    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    add-int/lit8 v8, v0, 0x1

    aget-object v6, v7, v8

    .line 518
    .local v6, w2:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    invoke-virtual {v6, v5}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->needsSpace(Lcom/vlingo/client/core/recognizer/results/RecNBest;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 519
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    const/16 v7, 0x20

    aput-char v7, p1, v1

    move v1, v2

    .line 508
    .end local v2           #index:I
    .end local v6           #w2:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .restart local v1       #index:I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 523
    .end local v3           #len:I
    .end local v4           #s1:Ljava/lang/String;
    .end local v5           #w1:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_31
    return v1
.end method

.method public getNBestForWord(Ljava/lang/String;)Ljava/util/Vector;
    .registers 9
    .parameter "word"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 96
    .local v5, nbest:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget v6, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v2, v6, :cond_35

    .line 97
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v6, v6, v2

    iget-object v1, v6, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 98
    .local v1, choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    array-length v6, v1

    if-lez v6, :cond_32

    .line 99
    const/4 v3, 0x0

    .local v3, j:I
    :goto_14
    array-length v6, v1

    if-ge v3, v6, :cond_32

    .line 100
    aget-object v6, v1, v3

    iget-object v0, v6, Lcom/vlingo/client/core/recognizer/results/RecChoice;->originalChoice:Ljava/lang/String;

    .line 101
    .local v0, choice:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 103
    const/4 v4, 0x0

    .local v4, k:I
    :goto_22
    array-length v6, v1

    if-ge v4, v6, :cond_35

    .line 105
    aget-object v6, v1, v4

    iget-object v6, v6, Lcom/vlingo/client/core/recognizer/results/RecChoice;->originalChoice:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 99
    .end local v4           #k:I
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 96
    .end local v0           #choice:Ljava/lang/String;
    .end local v3           #j:I
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 113
    .end local v1           #choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    :cond_35
    return-object v5
.end method

.method public getNBestForWordIfBetterMatch(Ljava/util/Vector;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;II)I
    .registers 23
    .parameter
    .parameter "word"
    .parameter "previousWords"
    .parameter "numPreviousWords"
    .parameter "nextWords"
    .parameter "numNextWords"
    .parameter "bestNumMatchingWordsSoFar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, result:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v9, -0x1

    .line 121
    .local v9, bestWordIndex:I
    move/from16 v8, p7

    .line 122
    .local v8, bestNumMatches:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v7

    .line 124
    .local v7, bestMatchingNbest:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v2, v1, :cond_49

    .line 125
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v1, v1, v2

    iget-object v11, v1, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 126
    .local v11, choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_13
    array-length v1, v11

    if-ge v12, v1, :cond_46

    .line 127
    aget-object v1, v11, v12

    iget-object v10, v1, Lcom/vlingo/client/core/recognizer/results/RecChoice;->originalChoice:Ljava/lang/String;

    .line 129
    .local v10, choice:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    move-object v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 130
    invoke-direct/range {v1 .. v6}, Lcom/vlingo/client/core/recognizer/results/RecResults;->countMatchingContextWords(I[Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v14, v1, 0x1

    .line 135
    .local v14, matchingContextCount:I
    if-gt v14, v8, :cond_3a

    const/4 v1, 0x2

    if-ge v7, v1, :cond_43

    array-length v1, v11

    const/4 v3, 0x1

    if-le v1, v3, :cond_43

    .line 137
    :cond_3a
    array-length v1, v11

    const/4 v3, 0x1

    if-gt v1, v3, :cond_40

    if-nez v8, :cond_43

    .line 139
    :cond_40
    move v8, v14

    .line 140
    move v9, v2

    .line 141
    array-length v7, v11

    .line 126
    .end local v14           #matchingContextCount:I
    :cond_43
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 124
    .end local v10           #choice:Ljava/lang/String;
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 148
    .end local v11           #choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    .end local v12           #j:I
    :cond_49
    if-ltz v9, :cond_64

    .line 150
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->clear()V

    .line 151
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v1, v1, v9

    iget-object v11, v1, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 152
    .restart local v11       #choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    const/4 v13, 0x0

    .local v13, k:I
    :goto_55
    array-length v1, v11

    if-ge v13, v1, :cond_64

    .line 155
    aget-object v1, v11, v13

    iget-object v1, v1, Lcom/vlingo/client/core/recognizer/results/RecChoice;->originalChoice:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v13, v13, 0x1

    goto :goto_55

    .line 158
    .end local v11           #choices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    .end local v13           #k:I
    :cond_64
    return v8
.end method

.method public getPhraseLevel()[Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 579
    const/4 v2, 0x0

    .line 580
    .local v2, plChoices:[Ljava/lang/String;
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    if-eqz v6, :cond_4c

    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v6, v6

    if-lez v6, :cond_4c

    .line 581
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 582
    .local v5, sentences:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    array-length v6, v5

    new-array v2, v6, [Ljava/lang/String;

    .line 583
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 585
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v6, v5

    if-ge v0, v6, :cond_55

    .line 586
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 587
    aget-object v4, v5, v0

    .line 588
    .local v4, sentence:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    if-nez v4, :cond_22

    .line 589
    const/4 v6, 0x0

    .line 603
    .end local v0           #i:I
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #sentence:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .end local v5           #sentences:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :goto_21
    return-object v6

    .line 591
    .restart local v0       #i:I
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    .restart local v4       #sentence:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .restart local v5       #sentences:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_22
    array-length v6, v4

    if-lez v6, :cond_43

    .line 592
    aget-object v6, v4, v7

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->getSelectedWord()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    const/4 v1, 0x1

    .local v1, j:I
    :goto_2f
    array-length v6, v4

    if-ge v1, v6, :cond_43

    .line 594
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->getSelectedWord()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 598
    .end local v1           #j:I
    :cond_43
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 601
    .end local v0           #i:I
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #sentence:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .end local v5           #sentences:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_4c
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    .end local v2           #plChoices:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v7

    .restart local v2       #plChoices:[Ljava/lang/String;
    :cond_55
    move-object v6, v2

    .line 603
    goto :goto_21
.end method

.method public getString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 535
    const/4 v5, 0x0

    .line 540
    .local v5, totalHash:I
    iget v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-nez v7, :cond_8

    .line 541
    const-string v7, ""

    .line 560
    :goto_7
    return-object v7

    .line 544
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v1, v7, :cond_1b

    .line 545
    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v6, v7, v1

    .line 546
    .local v6, w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget-object v4, v6, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 548
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v5, v7

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 550
    .end local v4           #s:Ljava/lang/String;
    .end local v6           #w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_1b
    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->mostRecentString:Ljava/lang/String;

    if-eqz v7, :cond_26

    iget v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->totalStringHash:I

    if-ne v5, v7, :cond_26

    .line 551
    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->mostRecentString:Ljava/lang/String;

    goto :goto_7

    .line 553
    :cond_26
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->size()I

    move-result v2

    .line 554
    .local v2, len:I
    new-array v0, v2, [C

    .line 556
    .local v0, data:[C
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getChars([C)I

    move-result v3

    .line 558
    .local v3, len2:I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->mostRecentString:Ljava/lang/String;

    .line 559
    iput v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->totalStringHash:I

    .line 560
    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->mostRecentString:Ljava/lang/String;

    goto :goto_7
.end method

.method public getWord(I)Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .registers 3
    .parameter "index"

    .prologue
    .line 245
    if-ltz p1, :cond_b

    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge p1, v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v0, v0, p1

    .line 251
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getWordLength(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 257
    if-ltz p1, :cond_f

    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge p1, v1, :cond_f

    .line 258
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v0, v1, p1

    .line 261
    .local v0, w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->length()I

    move-result v1

    .line 264
    .end local v0           #w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public indexOf(Lcom/vlingo/client/core/recognizer/results/RecNBest;)I
    .registers 5
    .parameter "word"

    .prologue
    .line 567
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v0, v2, :cond_f

    .line 568
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v1, v2, v0

    .line 569
    .local v1, w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    if-ne v1, p1, :cond_c

    .line 572
    .end local v0           #i:I
    .end local v1           #w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :goto_b
    return v0

    .line 567
    .restart local v0       #i:I
    .restart local v1       #w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 572
    .end local v1           #w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_f
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public insert(Lcom/vlingo/client/core/recognizer/results/RecResults;II)I
    .registers 10
    .parameter "input"
    .parameter "aCursorWord"
    .parameter "aCursorChar"

    .prologue
    .line 388
    if-nez p3, :cond_2e

    .line 389
    move v2, p2

    .line 393
    .local v2, wordIndex:I
    :goto_3
    iget v3, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-le v2, v3, :cond_9

    .line 394
    iget v2, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    .line 397
    :cond_9
    iget v1, p1, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    .line 399
    .local v1, numNewWords:I
    iget v3, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v4, v4

    if-lt v3, v4, :cond_1b

    .line 400
    iget v3, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/vlingo/client/core/recognizer/results/RecResults;->growResults(I)V

    .line 404
    :cond_1b
    invoke-direct {p0, v2, v1}, Lcom/vlingo/client/core/recognizer/results/RecResults;->moveWords(II)V

    .line 406
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    if-ge v0, v1, :cond_31

    .line 407
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    add-int v4, v0, v2

    iget-object v5, p1, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 391
    .end local v0           #i:I
    .end local v1           #numNewWords:I
    .end local v2           #wordIndex:I
    :cond_2e
    add-int/lit8 v2, p2, 0x1

    .restart local v2       #wordIndex:I
    goto :goto_3

    .line 409
    .restart local v0       #i:I
    .restart local v1       #numNewWords:I
    :cond_31
    return v1
.end method

.method public removeRangeOfWords(Lcom/vlingo/client/core/recognizer/results/RecNBest;Lcom/vlingo/client/core/recognizer/results/RecNBest;I)I
    .registers 12
    .parameter "start"
    .parameter "end"
    .parameter "cursor"

    .prologue
    .line 207
    const/4 v4, -0x1

    .line 208
    .local v4, startIndex:I
    const/4 v0, -0x1

    .line 210
    .local v0, endIndex:I
    move v2, p3

    .line 213
    .local v2, newCursor:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v1, v5, :cond_16

    .line 214
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v5, v5, v1

    if-ne v5, p1, :cond_f

    .line 215
    move v4, v1

    .line 218
    :cond_f
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v5, v5, v1

    if-ne v5, p2, :cond_35

    .line 219
    move v0, v1

    .line 225
    :cond_16
    if-ltz v4, :cond_4a

    if-ltz v0, :cond_4a

    .line 227
    add-int/lit8 v5, v0, 0x1

    sub-int v3, v5, v4

    .line 229
    .local v3, numToDelete:I
    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    .line 230
    move v1, v4

    :goto_24
    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v1, v5, :cond_38

    .line 231
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    add-int v7, v1, v3

    aget-object v6, v6, v7

    aput-object v6, v5, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 213
    .end local v3           #numToDelete:I
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 233
    .restart local v3       #numToDelete:I
    :cond_38
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    :goto_3a
    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/2addr v5, v3

    if-ge v1, v5, :cond_47

    .line 234
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 236
    :cond_47
    move v2, v4

    move v5, v2

    .line 239
    .end local v3           #numToDelete:I
    :goto_49
    return v5

    :cond_4a
    const/4 v5, -0x1

    goto :goto_49
.end method

.method public size()I
    .registers 8

    .prologue
    .line 457
    const/4 v1, 0x0

    .line 459
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v0, v5, :cond_28

    .line 460
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v3, v5, v0

    .line 461
    .local v3, w1:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget-object v2, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 463
    .local v2, s1:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 464
    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_25

    .line 465
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    add-int/lit8 v6, v0, 0x1

    aget-object v4, v5, v6

    .line 467
    .local v4, w2:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    invoke-virtual {v4, v3}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->needsSpace(Lcom/vlingo/client/core/recognizer/results/RecNBest;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 468
    add-int/lit8 v1, v1, 0x1

    .line 459
    .end local v4           #w2:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 472
    .end local v2           #s1:Ljava/lang/String;
    .end local v3           #w1:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_28
    return v1
.end method

.method public size(II)I
    .registers 10
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 480
    const/4 v1, 0x0

    .line 482
    .local v1, num:I
    move v0, p1

    .local v0, i:I
    :goto_2
    if-ge v0, p2, :cond_2e

    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v0, v5, :cond_2e

    .line 483
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v3, v5, v0

    .line 484
    .local v3, w1:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget-object v2, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 486
    .local v2, s1:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 487
    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2b

    add-int/lit8 v5, p2, -0x1

    if-ge v0, v5, :cond_2b

    .line 488
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iResults:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    add-int/lit8 v6, v0, 0x1

    aget-object v4, v5, v6

    .line 490
    .local v4, w2:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    invoke-virtual {v4, v3}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->needsSpace(Lcom/vlingo/client/core/recognizer/results/RecNBest;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 491
    add-int/lit8 v1, v1, 0x1

    .line 482
    .end local v4           #w2:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 495
    .end local v2           #s1:Ljava/lang/String;
    .end local v3           #w1:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_2e
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSentenceCap()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, lastWasPeriod:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget v4, p0, Lcom/vlingo/client/core/recognizer/results/RecResults;->iNumWords:I

    if-ge v0, v4, :cond_66

    .line 283
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getWord(I)Lcom/vlingo/client/core/recognizer/results/RecNBest;

    move-result-object v3

    .line 284
    .local v3, word:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget-object v4, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1b

    .line 282
    :cond_18
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 286
    :cond_1b
    iget-object v4, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 287
    const/4 v1, 0x1

    .line 288
    goto :goto_18

    .line 290
    :cond_27
    if-eqz v1, :cond_18

    .line 291
    iget-boolean v4, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->capitalized:Z

    if-nez v4, :cond_64

    iget-object v4, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 292
    iget-object v4, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, newWord:Ljava/lang/String;
    iget-object v4, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_62

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    :cond_62
    iput-object v2, v3, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 297
    .end local v2           #newWord:Ljava/lang/String;
    :cond_64
    const/4 v1, 0x0

    goto :goto_18

    .line 300
    .end local v3           #word:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_66
    return-void
.end method
