.class public Lcom/google/android/voicesearch/ime/EditDistanceCalculator;
.super Ljava/lang/Object;
.source "EditDistanceCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/ime/EditDistanceCalculator$1;,
        Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;,
        Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private mCorLength:S

.field private mMaxNewChars:S

.field private final mMaxNewCharsPerc:B

.field private final mMaxNewContiguousChars:B

.field private mRecLength:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(BB)V
    .registers 3
    .parameter "maxNewContiguousChars"
    .parameter "maxNewCharsPerc"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-byte p1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewContiguousChars:B

    .line 86
    iput-byte p2, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewCharsPerc:B

    .line 87
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)S
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-short v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mCorLength:S

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-byte v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewContiguousChars:B

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)S
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-short v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewChars:S

    return v0
.end method


# virtual methods
.method public getDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)S
    .registers 16
    .parameter "recText"
    .parameter "corText"

    .prologue
    .line 99
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    int-to-short v10, v10

    iput-short v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mCorLength:S

    .line 100
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    int-to-short v10, v10

    iput-short v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mRecLength:S

    .line 104
    iget-byte v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewCharsPerc:B

    iget-short v11, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mCorLength:S

    mul-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x64

    int-to-short v10, v10

    iput-short v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewChars:S

    .line 105
    new-instance v4, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;

    iget-short v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mRecLength:S

    add-int/lit8 v10, v10, 0x1

    iget-short v11, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mCorLength:S

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v4, p0, v10, v11, v12}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;-><init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;IILcom/google/android/voicesearch/ime/EditDistanceCalculator$1;)V

    .line 107
    .local v4, deltaTable:Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;
    sget-boolean v10, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->DEBUG:Z

    if-eqz v10, :cond_80

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v10, "     "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v5, 0x0

    .local v5, i:I
    :goto_35
    iget-short v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mRecLength:S

    if-ge v5, v10, :cond_48

    .line 111
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    const-string v10, "   "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 114
    :cond_48
    const-string v10, "EditDistance"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v10, "EditDistance"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #calls: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->toCurrRowDebug()Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$100(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v5           #i:I
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_80
    const/4 v1, 0x1

    .local v1, corPos:I
    :goto_81
    iget-short v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mCorLength:S

    add-int/lit8 v10, v10, 0x1

    if-ge v1, v10, :cond_152

    .line 120
    const/4 v0, 0x1

    .line 121
    .local v0, allDead:Z
    const/4 v7, 0x1

    .local v7, recPos:I
    :goto_89
    iget-short v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mRecLength:S

    add-int/lit8 v10, v10, 0x1

    if-ge v7, v10, :cond_11c

    .line 122
    add-int/lit8 v10, v7, -0x1

    iget-short v11, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mCorLength:S

    iget-short v12, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewChars:S

    sub-int/2addr v11, v12

    add-int/2addr v11, v1

    if-le v10, v11, :cond_c1

    .line 132
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v10, v10, v7

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    .line 155
    :goto_a2
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v10, v10, v7

    iget-boolean v10, v10, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    if-nez v10, :cond_b5

    .line 156
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v10, v10, v7

    #calls: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->updateDeadEnd(II)V
    invoke-static {v10, v1, v7}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->access$600(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;II)V

    .line 160
    :cond_b5
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v10, v10, v7

    iget-boolean v10, v10, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    and-int/2addr v0, v10

    .line 121
    add-int/lit8 v7, v7, 0x1

    goto :goto_89

    .line 134
    :cond_c1
    add-int/lit8 v10, v7, -0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    add-int/lit8 v11, v1, -0x1

    invoke-interface {p2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_ea

    .line 135
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v10, v10, v7

    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$300(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v11

    add-int/lit8 v12, v7, -0x1

    aget-object v11, v11, v12

    #calls: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->copy(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V
    invoke-static {v10, v11}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->access$400(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V

    .line 138
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v10, v10, v7

    const/4 v11, 0x0

    iput-byte v11, v10, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mContiguousChars:B

    goto :goto_a2

    .line 142
    :cond_ea
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    add-int/lit8 v11, v7, -0x1

    aget-object v2, v10, v11

    .line 143
    .local v2, deleteDelta:Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v10, v10, v7

    #calls: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->copy(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V
    invoke-static {v10, v2}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->access$400(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V

    .line 145
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$300(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v6, v10, v7

    .line 146
    .local v6, insertDelta:Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v10, v10, v7

    #calls: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->updateIfBetter(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V
    invoke-static {v10, v6}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->access$500(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V

    .line 148
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$300(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    add-int/lit8 v11, v7, -0x1

    aget-object v9, v10, v11

    .line 149
    .local v9, substitutionDelta:Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    aget-object v10, v10, v7

    #calls: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->updateIfBetter(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V
    invoke-static {v10, v9}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->access$500(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V

    goto :goto_a2

    .line 163
    .end local v2           #deleteDelta:Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    .end local v6           #insertDelta:Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    .end local v9           #substitutionDelta:Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    :cond_11c
    sget-boolean v10, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->DEBUG:Z

    if-eqz v10, :cond_146

    .line 164
    const-string v10, "EditDistance"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v1, -0x1

    invoke-interface {p2, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #calls: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->toCurrRowDebug()Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$100(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_146
    if-eqz v0, :cond_14b

    .line 170
    iget-short v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewChars:S

    .line 181
    .end local v0           #allDead:Z
    .end local v7           #recPos:I
    :goto_14a
    return v10

    .line 173
    .restart local v0       #allDead:Z
    .restart local v7       #recPos:I
    :cond_14b
    #calls: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->nextRow()V
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$700(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_81

    .line 176
    .end local v0           #allDead:Z
    .end local v7           #recPos:I
    :cond_152
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$300(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    iget-short v11, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mRecLength:S

    aget-object v3, v10, v11

    .line 178
    .local v3, delta:Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    iget-boolean v10, v3, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    if-eqz v10, :cond_161

    .line 179
    iget-short v10, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewChars:S

    goto :goto_14a

    .line 181
    :cond_161
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    invoke-static {v4}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->access$300(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    move-result-object v10

    iget-short v11, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mRecLength:S

    aget-object v10, v10, v11

    iget-short v10, v10, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    goto :goto_14a
.end method

.method public isDistanceAcceptable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 6
    .parameter "recText"
    .parameter "corText"

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->getDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)S

    move-result v0

    iget-byte v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewCharsPerc:B

    iget-short v2, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mCorLength:S

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    if-ge v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
