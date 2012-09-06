.class public Lcom/google/android/apps/translate/Translate$TranslateResult;
.super Ljava/lang/Object;
.source "Translate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/Translate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslateResult"
.end annotation


# static fields
.field private static final DICTIONARY_RESULT:I = 0x2

.field private static final RESULT_PART_NUM:I = 0x4

.field private static final SRC_TRANSLITERATION:I = 0x3

.field private static final TRANSLATE_TEXT:I = 0x0

.field private static final TRG_TRANSLITERATION:I = 0x1


# instance fields
.field private final mParts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/history/Entry;)V
    .registers 3
    .parameter "translateEntry"

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "resultText"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const-string v0, "Translate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->splitTranslateResult(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/Translate$TranslateResult;->mParts:[Ljava/lang/String;

    .line 159
    const-string v0, "Translate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mParts.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/Translate$TranslateResult;->mParts:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/translate/Translate$TranslateResult;->mParts:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_47

    const/4 v0, 0x1

    :goto_43
    invoke-static {v0}, Lcom/google/android/apps/translate/Preconditions;->checkArguments(Z)V

    .line 161
    return-void

    .line 160
    :cond_47
    const/4 v0, 0x0

    goto :goto_43
.end method

.method private final getPart(I)Ljava/lang/String;
    .registers 3
    .parameter "partIndex"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/apps/translate/Translate$TranslateResult;->mParts:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/translate/Translate$TranslateResult;->mParts:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_9
    return-object v0

    :cond_a
    const-string v0, ""

    goto :goto_9
.end method

.method private final hasPart(I)Z
    .registers 3
    .parameter "partIndex"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/translate/Translate$TranslateResult;->mParts:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final getDictionaryResult()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getPart(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSrcTransliteration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getPart(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTranslateText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getPart(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTrgTransliteration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getPart(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasDictionaryResult()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->hasPart(I)Z

    move-result v0

    return v0
.end method

.method public final hasSrcTransliteration()Z
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->hasPart(I)Z

    move-result v0

    return v0
.end method

.method public final hasTranslateText()Z
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->hasPart(I)Z

    move-result v0

    return v0
.end method

.method public final hasTrgTransliteration()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->hasPart(I)Z

    move-result v0

    return v0
.end method
