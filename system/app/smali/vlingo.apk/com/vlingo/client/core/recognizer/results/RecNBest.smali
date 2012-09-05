.class public Lcom/vlingo/client/core/recognizer/results/RecNBest;
.super Ljava/lang/Object;
.source "RecNBest.java"


# instance fields
.field public capitalized:Z

.field public choiceIndex:I

.field public iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

.field public iN:I

.field public iSelectedWord:Ljava/lang/String;

.field public iWidth:I

.field public iXPosition:I

.field public iYPosition:I

.field public id:I

.field public noSpace:Z

.field public noSpaceNumber:Z

.field public numAdded:I

.field public numReplaced:I

.field public replacedNBests:[Lcom/vlingo/client/core/recognizer/results/RecNBest;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->id:I

    .line 41
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->choiceIndex:I

    .line 44
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->numAdded:I

    .line 47
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->numReplaced:I

    .line 50
    iput-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->replacedNBests:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 54
    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpace:Z

    .line 58
    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpaceNumber:Z

    .line 61
    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->capitalized:Z

    .line 98
    iput-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 99
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    .line 100
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iXPosition:I

    .line 101
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iYPosition:I

    .line 102
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iWidth:I

    .line 103
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "aMaxChoices"

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->id:I

    .line 41
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->choiceIndex:I

    .line 44
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->numAdded:I

    .line 47
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->numReplaced:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->replacedNBests:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 54
    iput-boolean v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpace:Z

    .line 58
    iput-boolean v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpaceNumber:Z

    .line 61
    iput-boolean v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->capitalized:Z

    .line 106
    new-array v0, p1, [Lcom/vlingo/client/core/recognizer/results/RecChoice;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    .line 109
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iXPosition:I

    .line 110
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iYPosition:I

    .line 111
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iWidth:I

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "word"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->id:I

    .line 41
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->choiceIndex:I

    .line 44
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->numAdded:I

    .line 47
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->numReplaced:I

    .line 50
    iput-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->replacedNBests:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 54
    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpace:Z

    .line 58
    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpaceNumber:Z

    .line 61
    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->capitalized:Z

    .line 118
    iput-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 119
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 120
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    .line 121
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iXPosition:I

    .line 122
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iYPosition:I

    .line 123
    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iWidth:I

    .line 124
    return-void
.end method

.method private isNumber(Ljava/lang/String;)Z
    .registers 5
    .parameter "string"

    .prologue
    .line 178
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_17

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_17

    .line 181
    const/4 v2, 0x0

    .line 183
    .end local v0           #c:C
    :goto_16
    return v2

    .line 178
    .restart local v0       #c:C
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    .end local v0           #c:C
    :cond_1a
    const/4 v2, 0x1

    goto :goto_16
.end method


# virtual methods
.method public addResultsFromString(Ljava/lang/String;I)Lcom/vlingo/client/core/recognizer/results/RecChoice;
    .registers 6
    .parameter "aChoice"
    .parameter "aNumAlign"

    .prologue
    .line 130
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    array-length v2, v2

    if-ge v1, v2, :cond_20

    .line 131
    new-instance v0, Lcom/vlingo/client/core/recognizer/results/RecChoice;

    invoke-direct {v0, p1, p2}, Lcom/vlingo/client/core/recognizer/results/RecChoice;-><init>(Ljava/lang/String;I)V

    .line 132
    .local v0, newChoice:Lcom/vlingo/client/core/recognizer/results/RecChoice;
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    iget v2, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    aput-object v0, v1, v2

    .line 133
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    if-nez v1, :cond_19

    .line 134
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->setSelectedWord(Ljava/lang/String;)V

    .line 136
    :cond_19
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    .line 139
    .end local v0           #newChoice:Lcom/vlingo/client/core/recognizer/results/RecChoice;
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public adjustChoiceIndex()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    array-length v3, v3

    if-ge v0, v3, :cond_27

    .line 259
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/vlingo/client/core/recognizer/results/RecChoice;->words:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/vlingo/client/core/recognizer/results/RecChoice;->words:[Ljava/lang/String;

    array-length v3, v3

    if-ne v3, v1, :cond_24

    .line 260
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->choiceIndex:I

    .line 273
    :goto_23
    return v1

    .line 258
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 266
    :cond_27
    const/4 v0, 0x0

    :goto_28
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    array-length v3, v3

    if-ge v0, v3, :cond_43

    .line 267
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/vlingo/client/core/recognizer/results/RecChoice;->words:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 268
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->choiceIndex:I

    goto :goto_23

    .line 266
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_43
    move v1, v2

    .line 273
    goto :goto_23
.end method

.method public clearPosition()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iXPosition:I

    .line 92
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iYPosition:I

    .line 93
    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iWidth:I

    .line 94
    return-void
.end method

.method public copy()Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .registers 3

    .prologue
    .line 67
    new-instance v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/results/RecNBest;-><init>()V

    .line 68
    .local v0, c:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->id:I

    iput v1, v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->id:I

    .line 69
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    iput v1, v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    .line 70
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    iput-object v1, v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    iput-object v1, v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 72
    iget v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->choiceIndex:I

    iput v1, v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->choiceIndex:I

    .line 73
    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->clearPosition()V

    .line 74
    iget-boolean v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpace:Z

    iput-boolean v1, v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpace:Z

    .line 75
    iget-boolean v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpaceNumber:Z

    iput-boolean v1, v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpaceNumber:Z

    .line 76
    iget-boolean v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->capitalized:Z

    iput-boolean v1, v0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->capitalized:Z

    .line 78
    return-object v0
.end method

.method public getSelectedWord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    return-object v0
.end method

.method public isPunctuation(C)Z
    .registers 4
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 143
    const/16 v1, 0x2e

    if-ne p1, v1, :cond_6

    .line 174
    :cond_5
    :goto_5
    return v0

    .line 146
    :cond_6
    const/16 v1, 0x2c

    if-eq p1, v1, :cond_5

    .line 149
    const/16 v1, 0x21

    if-eq p1, v1, :cond_5

    .line 152
    const/16 v1, 0x3f

    if-eq p1, v1, :cond_5

    .line 155
    const/16 v1, 0x3a

    if-eq p1, v1, :cond_5

    .line 158
    const/16 v1, 0x3b

    if-eq p1, v1, :cond_5

    .line 161
    const/16 v1, 0x29

    if-eq p1, v1, :cond_5

    .line 164
    const/16 v1, 0x5d

    if-eq p1, v1, :cond_5

    .line 167
    const/16 v1, 0x7d

    if-eq p1, v1, :cond_5

    .line 170
    const/16 v1, 0x2d

    if-eq p1, v1, :cond_5

    .line 174
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public length()I
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 242
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 244
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public matches(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "word"
    .parameter "ignoreCase"

    .prologue
    .line 233
    if-eqz p2, :cond_9

    .line 234
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 236
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8
.end method

.method public needsSpace(Lcom/vlingo/client/core/recognizer/results/RecNBest;)Z
    .registers 11
    .parameter "previousWord"

    .prologue
    const/16 v8, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    if-nez p1, :cond_7

    .line 228
    :cond_6
    :goto_6
    return v4

    .line 191
    :cond_7
    iget-object v3, p1, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 192
    .local v3, previousString:Ljava/lang/String;
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_19

    :cond_17
    move v4, v5

    .line 193
    goto :goto_6

    .line 196
    :cond_19
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    if-eqz v6, :cond_4d

    .line 197
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    iget v7, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->choiceIndex:I

    aget-object v2, v6, v7

    .line 199
    .local v2, choice:Lcom/vlingo/client/core/recognizer/results/RecChoice;
    iget-boolean v6, v2, Lcom/vlingo/client/core/recognizer/results/RecChoice;->noSpace:Z

    if-nez v6, :cond_6

    .line 202
    iget-boolean v6, v2, Lcom/vlingo/client/core/recognizer/results/RecChoice;->noSpaceNumber:Z

    if-eqz v6, :cond_31

    invoke-direct {p0, v3}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->isNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 215
    .end local v2           #choice:Lcom/vlingo/client/core/recognizer/results/RecChoice;
    :cond_31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 216
    .local v0, c1:C
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 218
    .local v1, c2:C
    if-eq v0, v8, :cond_6

    .line 221
    if-eq v1, v8, :cond_6

    .line 224
    invoke-virtual {p0, v1}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->isPunctuation(C)Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 228
    goto :goto_6

    .line 206
    .end local v0           #c1:C
    .end local v1           #c2:C
    :cond_4d
    iget-boolean v6, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpace:Z

    if-nez v6, :cond_6

    .line 209
    iget-boolean v6, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpaceNumber:Z

    if-eqz v6, :cond_31

    invoke-direct {p0, v3}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->isNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    goto :goto_6
.end method

.method public setSelectedWord(Ljava/lang/String;)V
    .registers 2
    .parameter "word"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    array-length v0, v0

    :goto_1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public wordLength()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
