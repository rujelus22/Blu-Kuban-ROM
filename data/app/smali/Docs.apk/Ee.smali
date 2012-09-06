.class public LEe;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements LCs;


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private final a:Ljava/text/BreakIterator;

.field private a:Ljava/text/CharacterIterator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, LEe;-><init>(Ljava/util/Locale;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, LEe;->a:Ljava/text/BreakIterator;

    .line 55
    return-void
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 180
    if-ltz p1, :cond_a

    iget-object v0, p0, LEe;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p1, v0, :cond_39

    .line 181
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Valid range is [0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LEe;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_39
    return-void
.end method

.method private a(I)Z
    .registers 5
    .parameter

    .prologue
    .line 149
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_2f

    .line 150
    iget-object v0, p0, LEe;->a:Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 151
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 160
    :goto_13
    return v0

    .line 152
    :cond_14
    add-int/lit8 v1, p1, -0x2

    if-ltz v1, :cond_2f

    .line 153
    iget-object v1, p0, LEe;->a:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, -0x2

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 154
    invoke-static {v1, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 155
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 156
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    goto :goto_13

    .line 160
    :cond_2f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private b(I)Z
    .registers 5
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, LEe;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 165
    if-ge p1, v0, :cond_31

    .line 166
    iget-object v1, p0, LEe;->a:Ljava/lang/CharSequence;

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 167
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    .line 176
    :goto_15
    return v0

    .line 168
    :cond_16
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_31

    .line 169
    iget-object v0, p0, LEe;->a:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 170
    invoke-static {v1, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 171
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 172
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    goto :goto_15

    .line 176
    :cond_31
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 66
    :cond_0
    iget-object v0, p0, LEe;->a:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    .line 67
    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    invoke-direct {p0, p1}, LEe;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :cond_f
    return p1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, LEe;->a:Ljava/lang/CharSequence;

    .line 59
    new-instance v0, LCc;

    iget-object v1, p0, LEe;->a:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, LCc;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, LEe;->a:Ljava/text/CharacterIterator;

    .line 60
    iget-object v0, p0, LEe;->a:Ljava/text/BreakIterator;

    iget-object v1, p0, LEe;->a:Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 61
    return-void
.end method

.method public b(I)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 78
    :cond_1
    iget-object v1, p0, LEe;->a:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-lt p1, v1, :cond_b

    move p1, v0

    .line 87
    :cond_a
    :goto_a
    return p1

    .line 81
    :cond_b
    iget-object v1, p0, LEe;->a:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    .line 82
    if-eq p1, v0, :cond_a

    invoke-direct {p0, p1}, LEe;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_a
.end method

.method public c(I)I
    .registers 3
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, LEe;->a(I)V

    .line 105
    invoke-direct {p0, p1}, LEe;->b(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 106
    iget-object v0, p0, LEe;->a:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 116
    :goto_11
    return p1

    .line 109
    :cond_12
    iget-object v0, p0, LEe;->a:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    goto :goto_11

    .line 112
    :cond_19
    invoke-direct {p0, p1}, LEe;->a(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 113
    iget-object v0, p0, LEe;->a:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    goto :goto_11

    .line 116
    :cond_26
    const/4 p1, -0x1

    goto :goto_11
.end method

.method public d(I)I
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, LEe;->a(I)V

    .line 134
    invoke-direct {p0, p1}, LEe;->a(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 135
    iget-object v0, p0, LEe;->a:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 145
    :goto_11
    return p1

    .line 138
    :cond_12
    iget-object v0, p0, LEe;->a:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    goto :goto_11

    .line 141
    :cond_19
    invoke-direct {p0, p1}, LEe;->b(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 142
    iget-object v0, p0, LEe;->a:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    goto :goto_11

    .line 145
    :cond_26
    const/4 p1, -0x1

    goto :goto_11
.end method
