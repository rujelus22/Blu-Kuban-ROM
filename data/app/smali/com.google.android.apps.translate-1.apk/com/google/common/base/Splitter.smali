.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$SplittingIterator;,
        Lcom/google/common/base/Splitter$Strategy;,
        Lcom/google/common/base/Splitter$MapSplitter;
    }
.end annotation


# instance fields
.field private final limit:I

.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/common/base/Splitter$Strategy;

.field private final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;)V
    .registers 5
    .parameter "strategy"

    .prologue
    .line 112
    const/4 v0, 0x0

    sget-object v1, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    .line 113
    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V
    .registers 5
    .parameter "strategy"
    .parameter "omitEmptyStrings"
    .parameter "trimmer"
    .parameter "limit"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    .line 118
    iput-boolean p2, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    .line 119
    iput-object p3, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 120
    iput p4, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter;->spliterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/base/Splitter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/base/Splitter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/google/common/base/Splitter;->limit:I

    return v0
.end method

.method public static fixedLength(I)Lcom/google/common/base/Splitter;
    .registers 3
    .parameter "length"

    .prologue
    .line 270
    if-lez p0, :cond_13

    const/4 v0, 0x1

    :goto_3
    const-string v1, "The length may not be less than 1"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 272
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$4;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$4;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0

    .line 270
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static on(C)Lcom/google/common/base/Splitter;
    .registers 2
    .parameter "separator"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public static on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
    .registers 3
    .parameter "separatorMatcher"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$1;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/CharMatcher;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .registers 3
    .parameter "separator"

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_7
    const-string v1, "The separator may not be the empty string."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 176
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$2;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0

    .line 173
    :cond_17
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static on(Ljava/util/regex/Pattern;)Lcom/google/common/base/Splitter;
    .registers 5
    .parameter "separatorPattern"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.regex"
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v1

    :goto_12
    const-string v3, "The pattern may not match the empty string: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$3;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$3;-><init>(Ljava/util/regex/Pattern;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0

    :cond_26
    move v0, v2

    .line 219
    goto :goto_12
.end method

.method public static onPattern(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .registers 2
    .parameter "separatorPattern"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.regex"
    .end annotation

    .prologue
    .line 256
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/util/regex/Pattern;)Lcom/google/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method private spliterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/Splitter$Strategy;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public limit(I)Lcom/google/common/base/Splitter;
    .registers 7
    .parameter "limit"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    if-lez p1, :cond_1e

    move v0, v1

    :goto_5
    const-string v3, "must be greater than zero: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    iget-object v3, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0

    :cond_1e
    move v0, v2

    .line 333
    goto :goto_5
.end method

.method public omitEmptyStrings()Lcom/google/common/base/Splitter;
    .registers 6
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 309
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    iget v4, p0, Lcom/google/common/base/Splitter;->limit:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .registers 3
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v0, Lcom/google/common/base/Splitter$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Splitter$5;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public splitToList(Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 5
    .parameter "sequence"
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter;->spliterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    .line 410
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 416
    :cond_1a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public trimResults()Lcom/google/common/base/Splitter;
    .registers 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 349
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter;->trimResults(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public trimResults(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
    .registers 6
    .parameter "trimmer"
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 366
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    iget v3, p0, Lcom/google/common/base/Splitter;->limit:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

.method public withKeyValueSeparator(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$MapSplitter;
    .registers 4
    .parameter "keyValueSplitter"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 441
    new-instance v0, Lcom/google/common/base/Splitter$MapSplitter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Splitter$MapSplitter;-><init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter$1;)V

    return-object v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Splitter$MapSplitter;
    .registers 3
    .parameter "separator"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 428
    invoke-static {p1}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter;->withKeyValueSeparator(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$MapSplitter;

    move-result-object v0

    return-object v0
.end method
