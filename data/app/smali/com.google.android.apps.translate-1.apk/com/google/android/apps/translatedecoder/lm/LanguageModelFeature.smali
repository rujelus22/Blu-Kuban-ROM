.class public Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;
.super Ljava/lang/Object;
.source "LanguageModelFeature.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final lmModel:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

.field private lmOrder:I

.field private final lmSymbolConverter:Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;

.field private ngramQueried:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private relativeLmWeight:D

.field private symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/apps/translatedecoder/lm/LanguageModel;)V
    .registers 9
    .parameter "lmOrder"
    .parameter "lmModel"

    .prologue
    .line 49
    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;-><init>(ILcom/google/android/apps/translatedecoder/lm/LanguageModel;Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;D)V

    .line 50
    return-void
.end method

.method public constructor <init>(ILcom/google/android/apps/translatedecoder/lm/LanguageModel;Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;)V
    .registers 10
    .parameter "lmOrder"
    .parameter "lmModel"
    .parameter "lmSymbolConverter"

    .prologue
    .line 54
    const-wide/high16 v4, 0x3ff0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;-><init>(ILcom/google/android/apps/translatedecoder/lm/LanguageModel;Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;D)V

    .line 55
    return-void
.end method

.method public constructor <init>(ILcom/google/android/apps/translatedecoder/lm/LanguageModel;Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;D)V
    .registers 8
    .parameter "lmOrder"
    .parameter "lmModel"
    .parameter "lmSymbolConverter"
    .parameter "relativeLmWeight"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->relativeLmWeight:D

    .line 59
    iput p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmOrder:I

    .line 60
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmModel:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    .line 61
    iput-object p3, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmSymbolConverter:Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;

    .line 62
    iput-wide p4, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->relativeLmWeight:D

    .line 63
    iget v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmOrder:I

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmModel:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder()I

    move-result v1

    if-le v0, v1, :cond_24

    .line 64
    sget-object v0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->logger:Ljava/util/logging/Logger;

    const-string v1, "LanguageModelFeature\'s lmOrder is greater than the underlying lmModel\'s lmOrder"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 68
    :cond_24
    return-void
.end method

.method private convertSymbols([I)[I
    .registers 3
    .parameter "input"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmSymbolConverter:Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;

    if-nez v0, :cond_5

    .line 197
    .end local p1
    :goto_4
    return-object p1

    .restart local p1
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmSymbolConverter:Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/LmSymbolConverter;->toLmSymbolIds([I)[I

    move-result-object p1

    goto :goto_4
.end method


# virtual methods
.method public cost([I[I)D
    .registers 10
    .parameter "stateWords"
    .parameter "tgtWords0"

    .prologue
    .line 127
    array-length v5, p1

    iget v6, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmOrder:I

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_12

    .line 128
    sget-object v5, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->logger:Ljava/util/logging/Logger;

    const-string v6, "State has too many words!"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 129
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 131
    :cond_12
    invoke-direct {p0, p2}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->convertSymbols([I)[I

    move-result-object v4

    .line 133
    .local v4, tgtWords:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v3, ngramWords:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    array-length v5, p1

    if-ge v2, v5, :cond_2b

    .line 138
    aget v5, p1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 142
    :cond_2b
    const-wide/16 v0, 0x0

    .line 143
    .local v0, cost:D
    const/4 v2, 0x0

    :goto_2e
    array-length v5, v4

    if-ge v2, v5, :cond_5f

    .line 144
    aget v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmModel:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    invoke-virtual {v5, v3}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->ngramCost(Ljava/util/List;)D

    move-result-wide v5

    add-double/2addr v0, v5

    .line 146
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->ngramQueried:Ljava/util/Set;

    if-eqz v5, :cond_50

    .line 147
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->ngramQueried:Ljava/util/Set;

    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getWords(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmOrder:I

    if-lt v5, v6, :cond_5c

    .line 150
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 143
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 153
    :cond_5f
    return-wide v0
.end method

.method public lmModel()Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmModel:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    return-object v0
.end method

.method public lmOrder()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmOrder:I

    return v0
.end method

.method public relativeLmWeight()D
    .registers 3

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->relativeLmWeight:D

    return-wide v0
.end method

.method public saveNgramsQueried(Ljava/lang/String;)V
    .registers 8
    .parameter "file"

    .prologue
    .line 94
    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->ngramQueried:Ljava/util/Set;

    if-nez v4, :cond_f

    .line 95
    sget-object v4, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->logger:Ljava/util/logging/Logger;

    const-string v5, "ngramQueried == null, be sure to call function setRememberNgrams"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 96
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 99
    :cond_f
    :try_start_f
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 100
    .local v3, out:Ljava/io/DataOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 101
    .local v0, bw:Ljava/io/BufferedWriter;
    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->ngramQueried:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 102
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_58

    goto :goto_29

    .line 107
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #out:Ljava/io/DataOutputStream;
    :catch_4c
    move-exception v1

    .line 108
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 112
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_50
    return-void

    .line 105
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :cond_51
    :try_start_51
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 106
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_57} :catch_4c
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_58

    goto :goto_50

    .line 109
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #out:Ljava/io/DataOutputStream;
    :catch_58
    move-exception v1

    .line 110
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50
.end method

.method public setLmOrder(I)V
    .registers 2
    .parameter "lmOrder"

    .prologue
    .line 79
    iput p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmOrder:I

    .line 80
    return-void
.end method

.method public setRelativeLmWeight(D)V
    .registers 3
    .parameter "relativeLmWeight"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->relativeLmWeight:D

    .line 72
    return-void
.end method

.method public setRememberNgrams(Lcom/google/android/apps/translatedecoder/util/SymbolTable;)V
    .registers 3
    .parameter "symbol"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->ngramQueried:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->ngramQueried:Ljava/util/Set;

    .line 90
    :cond_b
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 91
    return-void
.end method

.method public state([I[I)[I
    .registers 12
    .parameter "stateWords"
    .parameter "tgtWords0"

    .prologue
    .line 164
    invoke-direct {p0, p2}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->convertSymbols([I)[I

    move-result-object v5

    .line 165
    .local v5, tgtWords:[I
    if-nez p1, :cond_7

    .line 187
    .end local v5           #tgtWords:[I
    :goto_6
    return-object v5

    .line 169
    .restart local v5       #tgtWords:[I
    :cond_7
    array-length v6, p1

    iget v7, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmOrder:I

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_19

    .line 170
    sget-object v6, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->logger:Ljava/util/logging/Logger;

    const-string v7, "State has too many words!"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 171
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 174
    :cond_19
    array-length v6, p1

    array-length v7, v5

    add-int/2addr v6, v7

    iget v7, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmOrder:I

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_3c

    iget v6, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->lmOrder:I

    add-int/lit8 v4, v6, -0x1

    .line 176
    .local v4, resSize:I
    :goto_26
    new-array v3, v4, [I

    .line 179
    .local v3, res:[I
    const/4 v1, 0x0

    .line 180
    .local v1, pos:I
    array-length v6, p1

    array-length v7, v3

    array-length v8, v5

    sub-int/2addr v7, v8

    sub-int v0, v6, v7

    .local v0, i:I
    :goto_2f
    array-length v6, p1

    if-ge v0, v6, :cond_41

    .line 181
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .local v2, pos:I
    aget v6, p1, v0

    aput v6, v3, v1

    .line 180
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    goto :goto_2f

    .line 174
    .end local v0           #i:I
    .end local v1           #pos:I
    .end local v3           #res:[I
    .end local v4           #resSize:I
    :cond_3c
    array-length v6, p1

    array-length v7, v5

    add-int v4, v6, v7

    goto :goto_26

    .line 183
    .restart local v0       #i:I
    .restart local v1       #pos:I
    .restart local v3       #res:[I
    .restart local v4       #resSize:I
    :cond_41
    array-length v6, v5

    array-length v7, v3

    sub-int/2addr v6, v7

    if-ltz v6, :cond_57

    array-length v6, v5

    array-length v7, v3

    sub-int v0, v6, v7

    .line 184
    :goto_4a
    array-length v6, v5

    if-ge v0, v6, :cond_59

    .line 185
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .restart local v2       #pos:I
    aget v6, v5, v0

    aput v6, v3, v1

    .line 184
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    goto :goto_4a

    .line 183
    :cond_57
    const/4 v0, 0x0

    goto :goto_4a

    :cond_59
    move-object v5, v3

    .line 187
    goto :goto_6
.end method
