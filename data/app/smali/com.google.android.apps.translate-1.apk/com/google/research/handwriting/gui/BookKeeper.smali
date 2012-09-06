.class public Lcom/google/research/handwriting/gui/BookKeeper;
.super Ljava/lang/Object;
.source "BookKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;,
        Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final book:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/google/research/handwriting/gui/BookKeeper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/research/handwriting/gui/BookKeeper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    .line 84
    return-void
.end method

.method private decomposeIntoCharacters(Ljava/lang/String;Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;)Ljava/util/LinkedList;
    .registers 8
    .parameter "text"
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 178
    .local v2, decomposed:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;>;"
    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, charIterator:Ljava/text/StringCharacterIterator;
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->first()C

    move-result v0

    .local v0, c:C
    :goto_e
    const v3, 0xffff

    if-eq v0, v3, :cond_31

    .line 180
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 182
    new-instance v3, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;

    sget-object v4, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->EMPTY:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;

    invoke-direct {v3, v0, v4}, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;-><init>(CLcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_23
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    goto :goto_e

    .line 184
    :cond_28
    new-instance v3, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;

    invoke-direct {v3, v0, p2}, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;-><init>(CLcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 187
    :cond_31
    return-object v2
.end method

.method private deleteFromBook(II)V
    .registers 10
    .parameter "startPosition"
    .parameter "stopPosition"

    .prologue
    const/4 v6, 0x2

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/research/handwriting/gui/BookKeeper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".deleteFromBook"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startPosition=%s stopPosition=%s contents=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/BookKeeper;->contentsAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    move v0, p1

    .local v0, i:I
    :goto_37
    if-ge v0, p2, :cond_4b

    .line 201
    if-ltz p1, :cond_48

    iget-object v1, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_48

    .line 202
    iget-object v1, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 200
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 205
    :cond_4b
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 142
    return-void
.end method

.method public contentsAsString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v2, s:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;

    .line 153
    .local v0, c:Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;
    iget-char v3, v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;->character:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 155
    .end local v0           #c:Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getBookkeepingEntry(I)Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;
    .registers 6
    .parameter "cursorPosition"

    .prologue
    .line 118
    const/4 v0, 0x3

    sget-object v1, Lcom/google/research/handwriting/gui/BookKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBookkeepingEntry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    if-ltz p1, :cond_2e

    iget-object v0, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_2e

    .line 120
    iget-object v0, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;

    iget-object v0, v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;->request:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;

    .line 122
    :goto_2d
    return-object v0

    :cond_2e
    sget-object v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->EMPTY:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;

    goto :goto_2d
.end method

.method public init(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "textInField"

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/BookKeeper;->clear()V

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, text:Ljava/lang/String;
    sget-object v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/google/research/handwriting/gui/BookKeeper;->update(IILjava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V

    .line 259
    return-void
.end method

.method public logState()V
    .registers 4

    .prologue
    .line 163
    sget-object v0, Lcom/google/research/handwriting/gui/BookKeeper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full content of the field:\n\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/BookKeeper;->contentsAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized update(IILjava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V
    .registers 12
    .parameter "startPosition"
    .parameter "stopPosition"
    .parameter "text"
    .parameter "recognitionResult"

    .prologue
    const/4 v6, 0x1

    .line 226
    monitor-enter p0

    if-gez p1, :cond_d

    .line 227
    const/4 v2, 0x1

    :try_start_5
    sget-object v3, Lcom/google/research/handwriting/gui/BookKeeper;->TAG:Ljava/lang/String;

    const-string v4, "Strange: startposition < 0"

    invoke-static {v2, v3, v4}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 p1, 0x0

    .line 230
    :cond_d
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/research/handwriting/gui/BookKeeper;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stopPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v1, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;

    invoke-direct {v1, p4, p3}, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Ljava/lang/String;)V

    .line 234
    .local v1, requestWResults:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;
    invoke-direct {p0, p3, v1}, Lcom/google/research/handwriting/gui/BookKeeper;->decomposeIntoCharacters(Ljava/lang/String;Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;)Ljava/util/LinkedList;

    move-result-object v0

    .line 235
    .local v0, currentText:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/research/handwriting/gui/BookKeeper;->deleteFromBook(II)V

    .line 237
    iget-object v2, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le p1, v2, :cond_79

    .line 238
    const/4 v2, 0x1

    sget-object v3, Lcom/google/research/handwriting/gui/BookKeeper;->TAG:Ljava/lang/String;

    const-string v4, "Strange: startposition > book.size()"

    invoke-static {v2, v3, v4}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 243
    :goto_6e
    invoke-static {}, Lcom/google/research/handwriting/base/LogV;->logVerbosity()I

    move-result v2

    if-lt v2, v6, :cond_77

    .line 244
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/BookKeeper;->logState()V
    :try_end_77
    .catchall {:try_start_5 .. :try_end_77} :catchall_7f

    .line 246
    :cond_77
    monitor-exit p0

    return-void

    .line 241
    :cond_79
    :try_start_79
    iget-object v2, p0, Lcom/google/research/handwriting/gui/BookKeeper;->book:Ljava/util/LinkedList;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_7f

    goto :goto_6e

    .line 226
    .end local v0           #currentText:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;>;"
    .end local v1           #requestWResults:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;
    :catchall_7f
    move-exception v2

    monitor-exit p0

    throw v2
.end method
