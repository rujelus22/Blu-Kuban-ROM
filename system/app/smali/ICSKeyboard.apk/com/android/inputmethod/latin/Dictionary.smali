.class public abstract Lcom/android/inputmethod/latin/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Dictionary$DataType;,
        Lcom/android/inputmethod/latin/Dictionary$WordCallback;
    }
.end annotation


# static fields
.field protected static final FULL_WORD_SCORE_MULTIPLIER:I = 0x2

.field protected static final INCLUDE_TYPED_WORD_IF_VALID:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 117
    return-void
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .registers 4
    .parameter "composer"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 83
    return-void
.end method

.method public abstract getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
.end method

.method public abstract isValidWord(Ljava/lang/CharSequence;)Z
.end method

.method protected same([CILjava/lang/CharSequence;)Z
    .registers 8
    .parameter "word"
    .parameter "length"
    .parameter "typedWord"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v2, p2, :cond_8

    .line 109
    :cond_7
    :goto_7
    return v1

    .line 104
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-lt v0, p2, :cond_d

    .line 109
    const/4 v1, 0x1

    goto :goto_7

    .line 105
    :cond_d
    aget-char v2, p1, v0

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_7

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method
