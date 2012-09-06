.class public abstract Lcom/google/android/apps/translate/LanguageDetector$LanguageSpanApplier;
.super Ljava/lang/Object;
.source "LanguageDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/LanguageDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LanguageSpanApplier"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract applyLanguageSpan(Landroid/text/Spannable;IILcom/google/android/apps/translate/Language;)V
.end method

.method public final applyLanguageSpans(Landroid/text/Spannable;Lcom/google/android/apps/translate/Language;)V
    .registers 14
    .parameter "text"
    .parameter "language"

    .prologue
    const/4 v10, -0x1

    .line 246
    #calls: Lcom/google/android/apps/translate/LanguageDetector;->getLangInfo(Lcom/google/android/apps/translate/Language;)Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    invoke-static {p2}, Lcom/google/android/apps/translate/LanguageDetector;->access$000(Lcom/google/android/apps/translate/Language;)Lcom/google/android/apps/translate/LanguageDetector$LangInfo;

    move-result-object v2

    .line 247
    .local v2, info:Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
    if-nez v2, :cond_8

    .line 280
    :cond_7
    :goto_7
    return-void

    .line 251
    :cond_8
    iget-object v5, v2, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->scriptIds:[I

    .line 252
    .local v5, scriptIds:[I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, str:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 254
    .local v3, length:I
    const/4 v7, -0x1

    .line 255
    .local v7, spanStartPos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v3, :cond_38

    .line 256
    invoke-virtual {v8, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 257
    .local v0, code:I
    const/4 v6, -0x1

    .line 259
    .local v6, spanEndPos:I
    #calls: Lcom/google/android/apps/translate/LanguageDetector;->getCodePointScriptMask(I[I)I
    invoke-static {v0, v5}, Lcom/google/android/apps/translate/LanguageDetector;->access$100(I[I)I

    move-result v4

    .line 260
    .local v4, mask:I
    iget v9, v2, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->scriptMask:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_36

    .line 261
    if-ne v7, v10, :cond_27

    .line 263
    move v7, v1

    .line 269
    :cond_27
    :goto_27
    if-eq v7, v10, :cond_30

    if-eq v6, v10, :cond_30

    .line 270
    invoke-virtual {p0, p1, v7, v6, p2}, Lcom/google/android/apps/translate/LanguageDetector$LanguageSpanApplier;->applyLanguageSpan(Landroid/text/Spannable;IILcom/google/android/apps/translate/Language;)V

    .line 271
    const/4 v7, -0x1

    .line 272
    const/4 v6, -0x1

    .line 274
    :cond_30
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v1, v9

    .line 275
    goto :goto_14

    .line 266
    :cond_36
    move v6, v1

    goto :goto_27

    .line 277
    .end local v0           #code:I
    .end local v4           #mask:I
    .end local v6           #spanEndPos:I
    :cond_38
    if-eq v7, v10, :cond_7

    .line 278
    invoke-virtual {p0, p1, v7, v3, p2}, Lcom/google/android/apps/translate/LanguageDetector$LanguageSpanApplier;->applyLanguageSpan(Landroid/text/Spannable;IILcom/google/android/apps/translate/Language;)V

    goto :goto_7
.end method
