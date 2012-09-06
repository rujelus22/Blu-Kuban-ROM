.class public Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;
.super Ljava/lang/Object;
.source "LmSymbolConverter.java"


# instance fields
.field private final lmSymbolTbl:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

.field private lmUnkId:I

.field private final ptSymbolTbl:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

.field private simulateProdlm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/SymbolTable;Lcom/google/android/apps/translatedecoder/util/SymbolTable;ZI)V
    .registers 6
    .parameter "ptSymbolTbl"
    .parameter "lmSymbolTbl"
    .parameter "simulateProdlm"
    .parameter "lmUnkId"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->simulateProdlm:Z

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->lmUnkId:I

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->ptSymbolTbl:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 20
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->lmSymbolTbl:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 21
    iput-boolean p3, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->simulateProdlm:Z

    .line 22
    iput p4, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->lmUnkId:I

    .line 23
    return-void
.end method


# virtual methods
.method public lmUnkId()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->lmUnkId:I

    return v0
.end method

.method public toLmSymbolId(I)I
    .registers 5
    .parameter "ptSymbol"

    .prologue
    .line 38
    iget-boolean v1, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->simulateProdlm:Z

    if-nez v1, :cond_11

    .line 42
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->lmSymbolTbl:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->ptSymbolTbl:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getWord(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v1

    .line 49
    :goto_10
    return v1

    .line 45
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->ptSymbolTbl:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, orginal:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->lmSymbolTbl:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->hasWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 47
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->lmSymbolTbl:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v1

    goto :goto_10

    .line 49
    :cond_26
    iget v1, p0, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->lmUnkId:I

    goto :goto_10
.end method

.method public toLmSymbolIds([I)[I
    .registers 5
    .parameter "ptSymbols"

    .prologue
    .line 26
    array-length v2, p1

    new-array v1, v2, [I

    .line 27
    .local v1, res:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 28
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->toLmSymbolId(I)I

    move-result v2

    aput v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 30
    :cond_12
    return-object v1
.end method
