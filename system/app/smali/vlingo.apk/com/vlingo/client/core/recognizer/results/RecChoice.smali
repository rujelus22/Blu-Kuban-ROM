.class public Lcom/vlingo/client/core/recognizer/results/RecChoice;
.super Ljava/lang/Object;
.source "RecChoice.java"


# instance fields
.field public capitalized:Z

.field public noSpace:Z

.field public noSpaceNumber:Z

.field public numAlign:I

.field public originalChoice:Ljava/lang/String;

.field public words:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 13
    .parameter "aChoice"
    .parameter "aNumAlign"

    .prologue
    const/16 v9, 0x20

    const/4 v7, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v7, p0, Lcom/vlingo/client/core/recognizer/results/RecChoice;->noSpace:Z

    .line 27
    iput-boolean v7, p0, Lcom/vlingo/client/core/recognizer/results/RecChoice;->noSpaceNumber:Z

    .line 30
    iput-boolean v7, p0, Lcom/vlingo/client/core/recognizer/results/RecChoice;->capitalized:Z

    .line 37
    const/16 v7, 0xa

    new-array v2, v7, [Ljava/lang/String;

    .line 48
    .local v2, inputWords:[Ljava/lang/String;
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/RecChoice;->originalChoice:Ljava/lang/String;

    .line 50
    const/4 v4, 0x0

    .line 52
    .local v4, n:I
    const/4 v6, 0x0

    .line 53
    .local v6, wordStart:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 54
    .local v3, len:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 56
    .local v0, choiceArray:[C
    const/4 v5, 0x0

    .line 59
    .local v5, wordEnd:I
    :goto_1d
    if-ge v6, v3, :cond_46

    .line 62
    move v1, v6

    .local v1, i:I
    :goto_20
    if-ge v1, v3, :cond_27

    .line 63
    aget-char v7, v0, v1

    if-ne v7, v9, :cond_40

    .line 64
    move v5, v1

    .line 68
    :cond_27
    if-ne v1, v3, :cond_2a

    .line 69
    move v5, v3

    .line 74
    :cond_2a
    if-le v5, v6, :cond_37

    .line 76
    new-instance v7, Ljava/lang/String;

    sub-int v8, v5, v6

    invoke-direct {v7, v0, v6, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v7, v2, v4

    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 81
    :cond_37
    move v1, v5

    :goto_38
    if-ge v1, v3, :cond_3e

    .line 82
    aget-char v7, v0, v1

    if-eq v7, v9, :cond_43

    .line 86
    :cond_3e
    move v6, v1

    goto :goto_1d

    .line 62
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 81
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 89
    .end local v1           #i:I
    :cond_46
    new-array v7, v4, [Ljava/lang/String;

    iput-object v7, p0, Lcom/vlingo/client/core/recognizer/results/RecChoice;->words:[Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4b
    if-ge v1, v4, :cond_56

    .line 92
    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/results/RecChoice;->words:[Ljava/lang/String;

    aget-object v8, v2, v1

    aput-object v8, v7, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 94
    :cond_56
    iput p2, p0, Lcom/vlingo/client/core/recognizer/results/RecChoice;->numAlign:I

    .line 95
    return-void
.end method
