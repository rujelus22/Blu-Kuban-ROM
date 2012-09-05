.class public abstract Ljava/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DONE:I = -0x1


# instance fields
.field wrapped:Llibcore/icu/NativeBreakIterator;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 239
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method constructor <init>(Llibcore/icu/NativeBreakIterator;)V
    .registers 2
    .parameter "iterator"

    .prologue
    .line 245
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Ljava/text/BreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    .line 247
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 255
    invoke-static {}, Llibcore/icu/ICU;->getAvailableBreakIteratorLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getCharacterInstance()Ljava/text/BreakIterator;
    .registers 1

    .prologue
    .line 265
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .parameter "where"

    .prologue
    .line 277
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {p0}, Llibcore/icu/NativeBreakIterator;->getCharacterInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Llibcore/icu/NativeBreakIterator;)V

    return-object v0
.end method

.method public static getLineInstance()Ljava/text/BreakIterator;
    .registers 1

    .prologue
    .line 287
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .parameter "where"

    .prologue
    .line 300
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {p0}, Llibcore/icu/NativeBreakIterator;->getLineInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Llibcore/icu/NativeBreakIterator;)V

    return-object v0
.end method

.method public static getSentenceInstance()Ljava/text/BreakIterator;
    .registers 1

    .prologue
    .line 310
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .parameter "where"

    .prologue
    .line 323
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {p0}, Llibcore/icu/NativeBreakIterator;->getSentenceInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Llibcore/icu/NativeBreakIterator;)V

    return-object v0
.end method

.method public static getWordInstance()Ljava/text/BreakIterator;
    .registers 1

    .prologue
    .line 333
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .parameter "where"

    .prologue
    .line 346
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {p0}, Llibcore/icu/NativeBreakIterator;->getWordInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Llibcore/icu/NativeBreakIterator;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 485
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/BreakIterator;

    .line 486
    .local v0, cloned:Ljava/text/BreakIterator;
    iget-object v2, p0, Ljava/text/BreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v2}, Llibcore/icu/NativeBreakIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llibcore/icu/NativeBreakIterator;

    iput-object v2, v0, Ljava/text/BreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 487
    return-object v0

    .line 488
    .end local v0           #cloned:Ljava/text/BreakIterator;
    :catch_11
    move-exception v1

    .line 489
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public abstract current()I
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public isBoundary(I)Z
    .registers 3
    .parameter "offset"

    .prologue
    .line 361
    iget-object v0, p0, Ljava/text/BreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->isBoundary(I)Z

    move-result v0

    return v0
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public preceding(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 376
    iget-object v0, p0, Ljava/text/BreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->preceding(I)I

    move-result v0

    return v0
.end method

.method public abstract previous()I
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "newText"

    .prologue
    .line 388
    iget-object v0, p0, Ljava/text/BreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->setText(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
