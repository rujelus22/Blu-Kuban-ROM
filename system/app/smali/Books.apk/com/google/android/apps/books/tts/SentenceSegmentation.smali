.class Lcom/google/android/apps/books/tts/SentenceSegmentation;
.super Lcom/google/android/apps/books/tts/SubstringSegmentation;
.source "SentenceSegmentation.java"


# static fields
.field private static final NON_BREAKS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Mr."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Mrs."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Ms."

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/tts/SentenceSegmentation;->NON_BREAKS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 3
    .parameter "text"
    .parameter "positionMap"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/tts/SubstringSegmentation;-><init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 19
    return-void
.end method

.method private static endsWithSpecialPhrase(Ljava/lang/String;)Z
    .registers 7
    .parameter "sentence"

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, trimmed:Ljava/lang/String;
    sget-object v0, Lcom/google/android/apps/books/tts/SentenceSegmentation;->NON_BREAKS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 69
    .local v3, specialPhrase:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 70
    const/4 v5, 0x1

    .line 73
    .end local v3           #specialPhrase:Ljava/lang/String;
    :goto_13
    return v5

    .line 68
    .restart local v3       #specialPhrase:Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 73
    .end local v3           #specialPhrase:Ljava/lang/String;
    :cond_17
    const/4 v5, 0x0

    goto :goto_13
.end method


# virtual methods
.method protected buildSegmentation(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Ljava/text/BreakIterator;->getSentenceInstance()Ljava/text/BreakIterator;

    move-result-object v0

    .line 24
    .local v0, boundary:Ljava/text/BreakIterator;
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v6, ranges:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/Range;>;"
    const/4 v3, 0x0

    .line 30
    .local v3, endOfLastSentence:I
    :cond_d
    invoke-virtual {v0}, Ljava/text/BreakIterator;->current()I

    move-result v1

    .line 31
    .local v1, current:I
    if-lez v1, :cond_2c

    .line 32
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, currentSentence:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/books/tts/SentenceSegmentation;->endsWithSpecialPhrase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 36
    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/tts/SentenceSegmentation;->shouldIncludeItem(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 37
    new-instance v7, Lcom/google/android/apps/books/util/Range;

    invoke-direct {v7, v3, v1}, Lcom/google/android/apps/books/util/Range;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_2b
    move v3, v1

    .line 42
    .end local v2           #currentSentence:Ljava/lang/String;
    :cond_2c
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_d

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 47
    .local v5, length:I
    add-int/lit8 v7, v5, -0x1

    if-ge v3, v7, :cond_4d

    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, lastSentenceText:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/tts/SentenceSegmentation;->shouldIncludeItem(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 50
    new-instance v7, Lcom/google/android/apps/books/util/Range;

    invoke-direct {v7, v3, v5}, Lcom/google/android/apps/books/util/Range;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v4           #lastSentenceText:Ljava/lang/String;
    :cond_4d
    return-object v6
.end method
