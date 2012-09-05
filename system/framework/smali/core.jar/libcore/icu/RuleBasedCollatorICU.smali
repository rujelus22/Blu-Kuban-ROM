.class public final Llibcore/icu/RuleBasedCollatorICU;
.super Ljava/lang/Object;
.source "RuleBasedCollatorICU.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ALTERNATE_HANDLING:I = 0x1

.field public static final CASE_FIRST:I = 0x2

.field public static final CASE_LEVEL:I = 0x3

.field public static final DECOMPOSITION_MODE:I = 0x4

.field public static final FRENCH_COLLATION:I = 0x0

.field public static final STRENGTH:I = 0x5

.field public static final VALUE_ATTRIBUTE_VALUE_COUNT:I = 0x1d

.field public static final VALUE_DEFAULT:I = -0x1

.field public static final VALUE_DEFAULT_STRENGTH:I = 0x2

.field public static final VALUE_IDENTICAL:I = 0xf

.field public static final VALUE_LOWER_FIRST:I = 0x18

.field public static final VALUE_NON_IGNORABLE:I = 0x15

.field public static final VALUE_OFF:I = 0x10

.field public static final VALUE_ON:I = 0x11

.field public static final VALUE_ON_WITHOUT_HANGUL:I = 0x1c

.field public static final VALUE_PRIMARY:I = 0x0

.field public static final VALUE_QUATERNARY:I = 0x3

.field public static final VALUE_SECONDARY:I = 0x1

.field public static final VALUE_SHIFTED:I = 0x14

.field public static final VALUE_TERTIARY:I = 0x2

.field public static final VALUE_UPPER_FIRST:I = 0x19


# instance fields
.field private address:I


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .parameter "address"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "rules"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_b

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_b
    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Llibcore/icu/NativeCollation;->openCollatorFromRules(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/NativeCollation;->openCollator(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    .line 56
    return-void
.end method

.method private characterIteratorToString(Ljava/text/CharacterIterator;)Ljava/lang/String;
    .registers 5
    .parameter "it"

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v1, result:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .local v0, ch:C
    :goto_9
    const v2, 0xffff

    if-eq v0, v2, :cond_16

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_9

    .line 123
    :cond_16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 63
    new-instance v0, Llibcore/icu/RuleBasedCollatorICU;

    iget v1, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v1}, Llibcore/icu/NativeCollation;->safeClone(I)I

    move-result v1

    invoke-direct {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;-><init>(I)V

    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 67
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0, p1, p2}, Llibcore/icu/NativeCollation;->compare(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p1, p0, :cond_5

    .line 142
    :cond_4
    :goto_4
    return v1

    .line 138
    :cond_5
    instance-of v3, p1, Llibcore/icu/RuleBasedCollatorICU;

    if-nez v3, :cond_b

    move v1, v2

    .line 139
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 141
    check-cast v0, Llibcore/icu/RuleBasedCollatorICU;

    .line 142
    .local v0, rhs:Llibcore/icu/RuleBasedCollatorICU;
    invoke-virtual {p0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {p0}, Llibcore/icu/RuleBasedCollatorICU;->getStrength()I

    move-result v3

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getStrength()I

    move-result v4

    if-ne v3, v4, :cond_30

    invoke-virtual {p0}, Llibcore/icu/RuleBasedCollatorICU;->getDecomposition()I

    move-result v3

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getDecomposition()I

    move-result v4

    if-eq v3, v4, :cond_4

    :cond_30
    move v1, v2

    goto :goto_4
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 131
    invoke-virtual {p0, p1, p2}, Llibcore/icu/RuleBasedCollatorICU;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0}, Llibcore/icu/NativeCollation;->closeCollator(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 151
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 153
    return-void

    .line 151
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttribute(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 91
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeCollation;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;
    .registers 3
    .parameter "source"

    .prologue
    .line 110
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->getInstance(ILjava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v0

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Llibcore/icu/CollationElementIteratorICU;
    .registers 3
    .parameter "it"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Llibcore/icu/RuleBasedCollatorICU;->characterIteratorToString(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v0

    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .registers 5
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p1, :cond_4

    .line 102
    :cond_3
    :goto_3
    return-object v1

    .line 98
    :cond_4
    iget v2, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v2, p1}, Llibcore/icu/NativeCollation;->getSortKey(ILjava/lang/String;)[B

    move-result-object v0

    .line 99
    .local v0, key:[B
    if-eqz v0, :cond_3

    .line 102
    new-instance v1, Llibcore/icu/CollationKeyICU;

    invoke-direct {v1, p1, v0}, Llibcore/icu/CollationKeyICU;-><init>(Ljava/lang/String;[B)V

    goto :goto_3
.end method

.method public getDecomposition()I
    .registers 3

    .prologue
    .line 71
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getRules()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0}, Llibcore/icu/NativeCollation;->getRules(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrength()I
    .registers 3

    .prologue
    .line 79
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 127
    const/16 v0, 0x2a

    return v0
.end method

.method public setAttribute(II)V
    .registers 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 87
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    invoke-static {v0, p1, p2}, Llibcore/icu/NativeCollation;->setAttribute(III)V

    .line 88
    return-void
.end method

.method public setDecomposition(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 75
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->setAttribute(III)V

    .line 76
    return-void
.end method

.method public setStrength(I)V
    .registers 4
    .parameter "strength"

    .prologue
    .line 83
    iget v0, p0, Llibcore/icu/RuleBasedCollatorICU;->address:I

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->setAttribute(III)V

    .line 84
    return-void
.end method
