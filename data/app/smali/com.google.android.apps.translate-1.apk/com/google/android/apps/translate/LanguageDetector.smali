.class public final Lcom/google/android/apps/translate/LanguageDetector;
.super Ljava/lang/Object;
.source "LanguageDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/LanguageDetector$LanguageSpanApplier;,
        Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    }
.end annotation


# static fields
.field private static final lANGUAGE_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/apps/translate/LanguageDetector;->lANGUAGE_INDEX_MAP:Ljava/util/HashMap;

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    sget-object v1, Lcom/google/android/apps/translate/LanguageDetectorData;->LANGUAGES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 55
    sget-object v1, Lcom/google/android/apps/translate/LanguageDetector;->lANGUAGE_INDEX_MAP:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/apps/translate/LanguageDetectorData;->LANGUAGES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 57
    :cond_1d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/Language;)Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/apps/translate/LanguageDetector;->getLangInfo(Lcom/google/android/apps/translate/Language;)Lcom/google/android/apps/translate/LanguageDetector$LangInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I[I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/LanguageDetector;->getCodePointScriptMask(I[I)I

    move-result v0

    return v0
.end method

.method public static detect(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, languages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 220
    invoke-static {p1}, Lcom/google/android/apps/translate/LanguageDetector;->getLangInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    .local v0, langInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/LanguageDetector$LangInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 222
    invoke-static {p0, v0}, Lcom/google/android/apps/translate/LanguageDetector;->doDetect(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 225
    .end local v0           #langInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/LanguageDetector$LangInfo;>;"
    :goto_1c
    return-object v1

    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1c
.end method

.method private static doDetect(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 11
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/LanguageDetector$LangInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, langInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/LanguageDetector$LangInfo;>;"
    invoke-static {p1}, Lcom/google/android/apps/translate/LanguageDetector;->getAllScriptIds(Ljava/util/ArrayList;)[I

    move-result-object v7

    .line 180
    .local v7, scriptIds:[I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 181
    .local v4, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v4, :cond_3b

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 185
    .local v0, code:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 186
    invoke-static {v0, v7}, Lcom/google/android/apps/translate/LanguageDetector;->getCodePointScriptMask(I[I)I

    move-result v5

    .line 187
    .local v5, mask:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;

    .line 188
    .local v3, info:Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    iget v8, v3, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->scriptMask:I

    and-int/2addr v8, v5

    if-eqz v8, :cond_1d

    .line 189
    iget v8, v3, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->codePointCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->codePointCount:I

    goto :goto_1d

    .line 193
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    .end local v5           #mask:I
    :cond_35
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v1, v8

    .line 194
    goto :goto_9

    .line 195
    .end local v0           #code:I
    :cond_3b
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/Language;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;

    .line 198
    .restart local v3       #info:Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    iget v8, v3, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->codePointCount:I

    if-lez v8, :cond_47

    .line 199
    iget-object v8, v3, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->language:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 202
    .end local v3           #info:Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    :cond_5d
    return-object v6
.end method

.method private static getAllScriptIds(Ljava/util/ArrayList;)[I
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/LanguageDetector$LangInfo;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, langInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/LanguageDetector$LangInfo;>;"
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    .line 138
    .local v8, set:Ljava/util/BitSet;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 139
    .local v9, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v9, :cond_23

    .line 140
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;

    iget-object v0, v10, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->scriptIds:[I

    .local v0, arr$:[I
    array-length v7, v0

    .local v7, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_16
    if-ge v2, v7, :cond_20

    aget v3, v0, v2

    .line 141
    .local v3, id:I
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 139
    .end local v3           #id:I
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 144
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v7           #len$:I
    :cond_23
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    move-result v10

    new-array v4, v10, [I

    .line 145
    .local v4, ids:[I
    const/4 v5, 0x0

    .line 146
    .local v5, index:I
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    .restart local v3       #id:I
    move v6, v5

    .end local v5           #index:I
    .local v6, index:I
    :goto_30
    if-ltz v3, :cond_3e

    .line 147
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    aput v3, v4, v6

    .line 146
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v8, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_30

    .line 149
    :cond_3e
    return-object v4
.end method

.method private static getCodePointScriptMask(I[I)I
    .registers 12
    .parameter "code"
    .parameter "scriptIds"

    .prologue
    const/4 v9, 0x1

    .line 161
    const/4 v6, 0x0

    .line 162
    .local v6, mask:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v5, :cond_2f

    aget v3, v0, v2

    .line 163
    .local v3, id:I
    sget-object v8, Lcom/google/android/apps/translate/LanguageDetectorData;->SCRIPT_CODE_RANGE_STARTS:[[I

    aget-object v7, v8, v3

    .line 164
    .local v7, start:[I
    invoke-static {v7, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    .line 165
    .local v4, index:I
    if-ltz v4, :cond_19

    .line 166
    shl-int v8, v9, v3

    or-int/2addr v6, v8

    .line 162
    :cond_16
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 168
    :cond_19
    add-int/lit8 v8, v4, 0x1

    neg-int v4, v8

    .line 169
    sget-object v8, Lcom/google/android/apps/translate/LanguageDetectorData;->SCRIPT_CODE_RANGE_ENDS:[[I

    aget-object v1, v8, v3

    .line 170
    .local v1, end:[I
    if-lez v4, :cond_16

    array-length v8, v1

    if-gt v4, v8, :cond_16

    add-int/lit8 v8, v4, -0x1

    aget v8, v1, v8

    if-gt p0, v8, :cond_16

    .line 171
    shl-int v8, v9, v3

    or-int/2addr v6, v8

    goto :goto_16

    .line 175
    .end local v1           #end:[I
    .end local v3           #id:I
    .end local v4           #index:I
    .end local v7           #start:[I
    :cond_2f
    return v6
.end method

.method private static getLangInfo(Lcom/google/android/apps/translate/Language;)Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    .registers 9
    .parameter "lang"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, shortLang:Ljava/lang/String;
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 102
    .local v1, sepIndex:I
    if-gez v1, :cond_12

    .line 103
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 105
    :cond_12
    if-lez v1, :cond_19

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 108
    :cond_19
    sget-object v3, Lcom/google/android/apps/translate/LanguageDetector;->lANGUAGE_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 109
    .local v0, langIndex:Ljava/lang/Integer;
    if-nez v0, :cond_25

    const/4 v3, 0x0

    :goto_24
    return-object v3

    :cond_25
    new-instance v3, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;

    sget-object v4, Lcom/google/android/apps/translate/LanguageDetectorData;->LANGUAGE_SCRIPT_IDS:[[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    sget-object v5, Lcom/google/android/apps/translate/LanguageDetectorData;->LANGUAGE_SCRIPT_MASKS:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    sget-object v6, Lcom/google/android/apps/translate/LanguageDetectorData;->LANGUAGE_CODE_COUNTS:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v6, v6, v7

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;-><init>(Lcom/google/android/apps/translate/Language;[III)V

    goto :goto_24
.end method

.method private static getLangInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/LanguageDetector$LangInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, languages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/translate/LanguageDetector$LangInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 124
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v3, :cond_1e

    .line 125
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/Language;

    invoke-static {v4}, Lcom/google/android/apps/translate/LanguageDetector;->getLangInfo(Lcom/google/android/apps/translate/Language;)Lcom/google/android/apps/translate/LanguageDetector$LangInfo;

    move-result-object v1

    .line 126
    .local v1, info:Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    if-eqz v1, :cond_1b

    .line 127
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 130
    .end local v1           #info:Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    :cond_1e
    return-object v2
.end method
