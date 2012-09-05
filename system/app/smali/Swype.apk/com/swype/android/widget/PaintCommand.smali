.class public Lcom/swype/android/widget/PaintCommand;
.super Ljava/lang/Object;
.source "PaintCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/widget/PaintCommand$1;,
        Lcom/swype/android/widget/PaintCommand$Pool;
    }
.end annotation


# instance fields
.field private intParams:[I

.field private numOfArgs:I

.field private stringParams:[Ljava/lang/String;

.field private type:Lcom/swype/android/widget/PaintCommandType;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/swype/android/widget/PaintCommand$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/swype/android/widget/PaintCommand;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/swype/android/widget/PaintCommandType;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    .line 103
    invoke-direct {p0}, Lcom/swype/android/widget/PaintCommand;->ensureCapacity()V

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/swype/android/widget/PaintCommandType;Lcom/swype/android/widget/PaintCommand$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/swype/android/widget/PaintCommand;-><init>(Lcom/swype/android/widget/PaintCommandType;)V

    return-void
.end method

.method static synthetic access$102(Lcom/swype/android/widget/PaintCommand;Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommandType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    return-object p1
.end method

.method static synthetic access$200(Lcom/swype/android/widget/PaintCommand;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/swype/android/widget/PaintCommand;->ensureCapacity()V

    return-void
.end method

.method static synthetic access$300(Lcom/swype/android/widget/PaintCommand;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/swype/android/widget/PaintCommand;->initWithCommandStr(Ljava/lang/String;)V

    return-void
.end method

.method private ensureCapacity()V
    .registers 5

    .prologue
    .line 245
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->stringParams:[Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->stringParams:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v3}, Lcom/swype/android/widget/PaintCommandType;->getNumOfStrParams()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 246
    :cond_f
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v2}, Lcom/swype/android/widget/PaintCommandType;->getNumOfStrParams()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 247
    .local v1, strArgLen:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/swype/android/widget/PaintCommand;->stringParams:[Ljava/lang/String;

    .line 249
    .end local v1           #strArgLen:I
    :cond_1e
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v2}, Lcom/swype/android/widget/PaintCommandType;->getNumOfIntParams()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_46

    .line 250
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v3}, Lcom/swype/android/widget/PaintCommandType;->getNumOfIntParams()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 251
    :cond_36
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v2}, Lcom/swype/android/widget/PaintCommandType;->getNumOfIntParams()I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 252
    .local v0, intArgLen:I
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    .line 255
    .end local v0           #intArgLen:I
    :cond_46
    return-void
.end method

.method private escapeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 288
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_37

    .line 289
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 290
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_31

    .line 292
    add-int/lit8 v3, v2, 0x3

    if-ge v3, v1, :cond_2c

    .line 293
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v2, v2, 0x4

    goto :goto_b

    .line 298
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_30
    return-object v0

    .line 302
    :cond_31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v2, v2, 0x1

    .line 305
    goto :goto_b

    .line 307
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method private initWithCommandStr(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 113
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/swype/android/widget/PaintCommandType;->parseFromName(Ljava/lang/String;)Lcom/swype/android/widget/PaintCommandType;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    .line 115
    array-length v1, v0

    sub-int/2addr v1, v3

    .line 116
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    if-eqz v2, :cond_98

    .line 117
    invoke-virtual {p0, v1}, Lcom/swype/android/widget/PaintCommand;->ensureCapacity(I)V

    move v2, v6

    .line 119
    :goto_1a
    iget-object v4, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v4}, Lcom/swype/android/widget/PaintCommandType;->getNumOfStrParams()I

    move-result v4

    if-ge v2, v4, :cond_32

    .line 121
    iget-object v4, p0, Lcom/swype/android/widget/PaintCommand;->stringParams:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {p0, v3}, Lcom/swype/android/widget/PaintCommand;->escapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 119
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1a

    .line 124
    :cond_32
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v2}, Lcom/swype/android/widget/PaintCommandType;->getNumOfIntParams()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_54

    .line 125
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v2}, Lcom/swype/android/widget/PaintCommandType;->getNumOfStrParams()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_42
    move v2, v6

    .line 133
    :goto_43
    if-ge v2, v1, :cond_b9

    .line 134
    :try_start_45
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_4a} :catch_68

    move-result v4

    .line 142
    add-int/lit8 v3, v3, 0x1

    .line 143
    iget-object v5, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    aput v4, v5, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 128
    :cond_54
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v2}, Lcom/swype/android/widget/PaintCommandType;->getNumOfIntParams()I

    move-result v2

    .line 129
    iget-object v4, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v4}, Lcom/swype/android/widget/PaintCommandType;->getNumOfStrParams()I

    move-result v4

    sub-int/2addr v1, v4

    if-eq v2, v1, :cond_66

    .line 130
    invoke-virtual {p0}, Lcom/swype/android/widget/PaintCommand;->checkArguments()V

    :cond_66
    move v1, v2

    goto :goto_42

    .line 139
    :catch_68
    move-exception v0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments in command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expect arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " an integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_98
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command type: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_b9
    return-void
.end method

.method public static parseCommands(Lcom/swype/android/widget/PaintBuffer;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 265
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 266
    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 267
    aget-object v2, v0, v1

    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d

    .line 269
    invoke-virtual {p0}, Lcom/swype/android/widget/PaintBuffer;->getPaintCommandPool()Lcom/swype/android/widget/PaintCommand$Pool;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/swype/android/widget/PaintCommand$Pool;->checkout(Ljava/lang/String;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/swype/android/widget/PaintBuffer;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 266
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 272
    :cond_20
    return-void
.end method


# virtual methods
.method public checkArguments()V
    .registers 4

    .prologue
    .line 193
    iget v0, p0, Lcom/swype/android/widget/PaintCommand;->numOfArgs:I

    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v1}, Lcom/swype/android/widget/PaintCommandType;->getTotalNumberOfArgs()I

    move-result v1

    if-eq v0, v1, :cond_43

    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/swype/android/widget/PaintCommand;->getType()Lcom/swype/android/widget/PaintCommandType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v2}, Lcom/swype/android/widget/PaintCommandType;->getTotalNumberOfArgs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " number of arguments, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/swype/android/widget/PaintCommand;->numOfArgs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_43
    return-void
.end method

.method public ensureCapacity(I)V
    .registers 5
    .parameter "totalNumOfArgs"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/swype/android/widget/PaintCommand;->ensureCapacity()V

    .line 236
    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v1}, Lcom/swype/android/widget/PaintCommandType;->getNumOfIntParams()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    .line 237
    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v1}, Lcom/swype/android/widget/PaintCommandType;->getNumOfStrParams()I

    move-result v1

    sub-int v0, p1, v1

    .line 238
    .local v0, intArgCount:I
    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    array-length v1, v1

    if-ge v1, v0, :cond_21

    .line 239
    :cond_1d
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    .line 242
    .end local v0           #intArgCount:I
    :cond_21
    return-void
.end method

.method public getArg(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommandType;->getNumOfStrParams()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 206
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand;->stringParams:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 209
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getArgAsInt(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommandType;->getNumOfStrParams()I

    move-result v0

    if-lt p1, v0, :cond_10

    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommandType;->getTotalNumberOfArgs()I

    move-result v0

    if-lt p1, v0, :cond_19

    :cond_10
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommandType;->getTotalNumberOfArgs()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 221
    :cond_19
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {v1}, Lcom/swype/android/widget/PaintCommandType;->getNumOfStrParams()I

    move-result v1

    sub-int v1, p1, v1

    aget v0, v0, v1

    .line 223
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public getIntArgs()[I
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    return-object v0
.end method

.method public getType()Lcom/swype/android/widget/PaintCommandType;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;

    return-object v0
.end method

.method public setIntParamAtIndex(II)V
    .registers 4
    .parameter "index"
    .parameter "param"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    aput p2, v0, p1

    .line 170
    return-void
.end method

.method public setIntParams(I[S)V
    .registers 7
    .parameter "dest_start_index"
    .parameter "params"

    .prologue
    .line 174
    move v0, p1

    .local v0, i:I
    const/4 v1, 0x0

    .line 175
    .local v1, j:I
    :goto_2
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    array-length v2, v2

    if-ge v0, v2, :cond_15

    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 177
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    aget-short v3, p2, v1

    aput v3, v2, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 179
    :cond_15
    return-void
.end method

.method public varargs setIntParams([I)V
    .registers 5
    .parameter "intParams"

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 160
    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_d
    return-void
.end method

.method public setNumOfIntParams(I)V
    .registers 3
    .parameter "numOfIntParams"

    .prologue
    .line 165
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    .line 166
    return-void
.end method

.method public varargs setStrParams([Ljava/lang/String;)V
    .registers 5
    .parameter "strParams"

    .prologue
    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 154
    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->stringParams:[Ljava/lang/String;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Lcom/swype/android/widget/PaintCommand;->getType()Lcom/swype/android/widget/PaintCommandType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, " Int Args:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->intParams:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, " String Args:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand;->stringParams:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
