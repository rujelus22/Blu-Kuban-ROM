.class public Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;
.super Lcom/google/android/apps/translatedecoder/util/SymbolTable;
.source "PTSymbolWrapper.java"


# static fields
.field public static final CLASS_ID:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

.field private final ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V
    .registers 3
    .parameter "lmSymbol"
    .parameter "ptSymbol"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 37
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 38
    return-void
.end method

.method public static readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .registers 4
    .parameter "buf"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->readSymbolHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v0

    .line 91
    .local v0, lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->readSymbolHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v1

    .line 92
    .local v1, ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    new-instance v2, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;-><init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V

    return-object v2
.end method

.method private static readSymbolHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .registers 5
    .parameter "buf"

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 107
    .local v0, len:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 108
    .local v1, oldPos:I
    invoke-static {p0, v0}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->subBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v2

    .line 109
    .local v2, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    add-int v3, v1, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    return-object v2
.end method

.method private writeSymbolHelper(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/nio/ByteBuffer;)V
    .registers 6
    .parameter "symbol"
    .parameter "buf"

    .prologue
    .line 96
    const v2, 0x5f5e100

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    .local v1, temBuf:Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 98
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 99
    .local v0, len:I
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 103
    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/String;)I
    .registers 3
    .parameter "word"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->hasWord(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v0

    .line 45
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public allWords()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "calling unimplement(ed) function"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3
    .parameter "word"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->hasWord(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v0

    .line 54
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public getWord(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->maximumId()I

    move-result v0

    if-gt p1, v0, :cond_f

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getWord(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public hasWord(Ljava/lang/String;)Z
    .registers 3
    .parameter "word"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->hasWord(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->hasWord(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public maximumId()I
    .registers 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "calling unimplement(ed) function"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 84
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->lmSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->writeSymbolHelper(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/nio/ByteBuffer;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->ptSymbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->writeSymbolHelper(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Ljava/nio/ByteBuffer;)V

    .line 87
    return-void
.end method
