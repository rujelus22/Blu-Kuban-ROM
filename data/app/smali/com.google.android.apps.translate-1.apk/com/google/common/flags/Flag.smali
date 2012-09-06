.class public abstract Lcom/google/common/flags/Flag;
.super Ljava/lang/Object;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flags/Flag$EnumFlag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FALSE_PATTERN:Ljava/util/regex/Pattern; = null

.field static final MUTABLE_SYSTEM_PROPERTY:Ljava/lang/String; = "google3.flags.mutablecollections"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TRUE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field accessed:Z

.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field setFromString:Z

.field volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 523
    const-string v0, "^(true|t|yes|y|1)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/common/flags/Flag;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    .line 526
    const-string v0, "^(false|f|no|n|0)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/common/flags/Flag;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/google/common/flags/Flag;->accessed:Z

    .line 69
    iput-boolean v0, p0, Lcom/google/common/flags/Flag;->setFromString:Z

    .line 80
    iput-object p1, p0, Lcom/google/common/flags/Flag;->defaultValue:Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcom/google/common/flags/Flag;->value:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/flags/Flag;->parseIntegerOrMax(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/flags/Flag;->parseLongOrMax(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/flags/Flag;->splitCsvString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/flags/Flag;->parseFloatOrMax(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/flags/Flag;->parseDoubleOrMax(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/common/flags/Flag;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/common/flags/Flag;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/flags/Flag;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/flags/Flag;->joinToStrings(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkWriteState()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/IllegalFlagStateException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    iget-boolean v0, p0, Lcom/google/common/flags/Flag;->accessed:Z

    if-eqz v0, :cond_12

    const-string v0, "com.google.common.flags.disableStateChecking"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 163
    new-instance v0, Lcom/google/common/flags/IllegalFlagStateException;

    invoke-direct {v0}, Lcom/google/common/flags/IllegalFlagStateException;-><init>()V

    throw v0

    .line 165
    :cond_12
    return-void
.end method

.method private static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 612
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    return-object v2

    .line 613
    :catch_9
    move-exception v1

    .line 614
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v0, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v2, "You must provide a fully qualified class name"

    invoke-direct {v0, v2}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, e:Lcom/google/common/flags/InvalidFlagValueException;
    invoke-virtual {v0, v1}, Lcom/google/common/flags/InvalidFlagValueException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 617
    throw v0
.end method

.method private static collectionsAreMutable()Z
    .registers 1

    .prologue
    .line 1147
    const/4 v0, 0x1

    return v0
.end method

.method public static varargs doubleList([D)Lcom/google/common/flags/Flag;
    .registers 8
    .parameter "defaultValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 842
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v1, defaultValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move-object v0, p0

    .local v0, arr$:[D
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_16

    aget-wide v2, v0, v4

    .line 844
    .local v2, i:D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 846
    .end local v2           #i:D
    :cond_16
    invoke-static {v1}, Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 848
    new-instance v6, Lcom/google/common/flags/Flag$17;

    invoke-direct {v6, v1}, Lcom/google/common/flags/Flag$17;-><init>(Ljava/util/List;)V

    return-object v6
.end method

.method public static varargs enumList(Ljava/lang/Class;Z[Ljava/lang/Enum;)Lcom/google/common/flags/Flag;
    .registers 10
    .parameter
    .parameter "autoUpperCase"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;Z[TT;)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 913
    .local p0, enumType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, defaultValues:[Ljava/lang/Enum;,"[TT;"
    if-nez p0, :cond_a

    .line 914
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "enumType must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 916
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v1, defaultValue:Ljava/util/List;,"Ljava/util/List<TT;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_12
    if-ge v2, v3, :cond_26

    aget-object v4, v0, v2

    .line 918
    .local v4, t:Ljava/lang/Enum;,"TT;"
    if-nez v4, :cond_20

    .line 919
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Elements of defaultValues must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 922
    :cond_20
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 924
    .end local v4           #t:Ljava/lang/Enum;,"TT;"
    :cond_26
    invoke-static {v1}, Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 926
    new-instance v5, Lcom/google/common/flags/Flag$18;

    invoke-direct {v5, v1, p1, p0}, Lcom/google/common/flags/Flag$18;-><init>(Ljava/util/List;ZLjava/lang/Class;)V

    return-object v5
.end method

.method public static varargs enumList(Ljava/lang/Class;[Ljava/lang/Enum;)Lcom/google/common/flags/Flag;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;[TT;)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 889
    .local p0, enumType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, defaultValues:[Ljava/lang/Enum;,"[TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/common/flags/Flag;->enumList(Ljava/lang/Class;Z[Ljava/lang/Enum;)Lcom/google/common/flags/Flag;

    move-result-object v0

    return-object v0
.end method

.method public static varargs integerList([I)Lcom/google/common/flags/Flag;
    .registers 7
    .parameter "defaultValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 745
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v1, defaultValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_16

    aget v2, v0, v3

    .line 747
    .local v2, i:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 749
    .end local v2           #i:I
    :cond_16
    invoke-static {v1}, Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 751
    new-instance v5, Lcom/google/common/flags/Flag$15;

    invoke-direct {v5, v1}, Lcom/google/common/flags/Flag$15;-><init>(Ljava/util/List;)V

    return-object v5
.end method

.method private static joinToStrings(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, objs:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 777
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 778
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 780
    :cond_1e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 782
    .end local v1           #obj:Ljava/lang/Object;
    :cond_22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs longList([J)Lcom/google/common/flags/Flag;
    .registers 8
    .parameter "defaultValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 799
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v1, defaultValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    move-object v0, p0

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_16

    aget-wide v2, v0, v4

    .line 801
    .local v2, i:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 803
    .end local v2           #i:J
    :cond_16
    invoke-static {v1}, Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 805
    new-instance v6, Lcom/google/common/flags/Flag$16;

    invoke-direct {v6, v1}, Lcom/google/common/flags/Flag$16;-><init>(Ljava/util/List;)V

    return-object v6
.end method

.method private static maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1135
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/google/common/flags/Flag;->collectionsAreMutable()Z

    move-result v0

    if-eqz v0, :cond_7

    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_6
    return-object p0

    .restart local p0       #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_7
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_6
.end method

.method private static maybeUnmodifiable(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1138
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    invoke-static {}, Lcom/google/common/flags/Flag;->collectionsAreMutable()Z

    move-result v0

    if-eqz v0, :cond_7

    .end local p0           #set:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    :goto_6
    return-object p0

    .restart local p0       #set:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    :cond_7
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    goto :goto_6
.end method

.method public static nonnegativeValue(I)Lcom/google/common/flags/Flag;
    .registers 3
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/google/common/flags/Flag$3;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/Flag$3;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static nonnegativeValue(J)Lcom/google/common/flags/Flag;
    .registers 4
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lcom/google/common/flags/Flag$6;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/Flag$6;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method private static parseDoubleOrMax(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .parameter "text"

    .prologue
    .line 491
    const-string v0, "MAX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/high16 v0, 0x7ff0

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_a
.end method

.method private static parseFloatOrMax(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .parameter "text"

    .prologue
    .line 458
    const-string v0, "MAX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/high16 v0, 0x7f80

    :goto_a
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_a
.end method

.method private static parseIntegerOrMax(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .parameter "text"

    .prologue
    .line 333
    const-string v0, "MAX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7fffffff

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b
.end method

.method private static parseLongOrMax(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .parameter "text"

    .prologue
    .line 425
    const-string v0, "MAX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide v0, 0x7fffffffffffffffL

    :goto_d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_d
.end method

.method public static positiveValue(I)Lcom/google/common/flags/Flag;
    .registers 3
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Lcom/google/common/flags/Flag$4;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/Flag$4;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static positiveValue(J)Lcom/google/common/flags/Flag;
    .registers 4
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/google/common/flags/Flag$7;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/Flag$7;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method private static splitCsvString(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 1033
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_19
    if-ge v1, v2, :cond_27

    aget-object v4, v0, v1

    .line 1034
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1037
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_27
    return-object v3
.end method

.method public static varargs stringCollector([Ljava/lang/String;)Lcom/google/common/flags/Flag;
    .registers 9
    .parameter "defaultValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1053
    new-instance v1, Ljava/util/ArrayList;

    array-length v6, p0

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1054
    .local v1, defaults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_13

    aget-object v5, v0, v2

    .line 1055
    .local v5, s:Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1058
    .end local v5           #s:Ljava/lang/String;
    :cond_13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1060
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Lcom/google/common/flags/Flag$21;

    invoke-static {v4}, Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7, v4, v1}, Lcom/google/common/flags/Flag$21;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method public static varargs stringList([Ljava/lang/String;)Lcom/google/common/flags/Flag;
    .registers 7
    .parameter "defaultValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 973
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v1, defaultValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_16

    aget-object v4, v0, v2

    .line 975
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 977
    .end local v4           #s:Ljava/lang/String;
    :cond_16
    invoke-static {v1}, Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 979
    new-instance v5, Lcom/google/common/flags/Flag$19;

    invoke-direct {v5, v1}, Lcom/google/common/flags/Flag$19;-><init>(Ljava/util/List;)V

    return-object v5
.end method

.method public static stringMap(Ljava/util/Map;)Lcom/google/common/flags/Flag;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1103
    .local p0, defaultValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/common/flags/Flag$22;

    invoke-direct {v0, p0}, Lcom/google/common/flags/Flag$22;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static varargs stringSet([Ljava/lang/String;)Lcom/google/common/flags/Flag;
    .registers 8
    .parameter "defaultValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1010
    .local v1, defaultValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_16

    aget-object v4, v0, v2

    .line 1011
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1010
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1014
    .end local v4           #s:Ljava/lang/String;
    :cond_16
    new-instance v5, Lcom/google/common/flags/Flag$20;

    invoke-static {v1}, Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/flags/Flag$20;-><init>(Ljava/util/Set;)V

    return-object v5
.end method

.method public static value(D)Lcom/google/common/flags/Flag;
    .registers 4
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Lcom/google/common/flags/Flag$9;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/Flag$9;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public static value(F)Lcom/google/common/flags/Flag;
    .registers 3
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Lcom/google/common/flags/Flag$8;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/Flag$8;-><init>(Ljava/lang/Float;)V

    return-object v0
.end method

.method public static value(I)Lcom/google/common/flags/Flag;
    .registers 3
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lcom/google/common/flags/Flag$2;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/Flag$2;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(J)Lcom/google/common/flags/Flag;
    .registers 4
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lcom/google/common/flags/Flag$5;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/Flag$5;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/Class;)Lcom/google/common/flags/Flag;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, defaultValue:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/common/flags/Flag$11;

    invoke-direct {v0, p0}, Lcom/google/common/flags/Flag$11;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static value(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/flags/Flag;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, defaultValue:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    .local p1, constraint:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/common/flags/Flag$13;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flags/Flag$13;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static value(Ljava/lang/Class;Z)Lcom/google/common/flags/Flag;
    .registers 4
    .parameter
    .parameter "autoUpperCase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Lcom/google/common/flags/Flag",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, enumType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 659
    new-instance v0, Lcom/google/common/flags/Flag$EnumFlag;

    invoke-direct {v0, v1, p0, p1, v1}, Lcom/google/common/flags/Flag$EnumFlag;-><init>(Ljava/lang/Enum;Ljava/lang/Class;ZLcom/google/common/flags/Flag$1;)V

    return-object v0
.end method

.method public static value(Ljava/lang/Enum;)Lcom/google/common/flags/Flag;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(TT;)",
            "Lcom/google/common/flags/Flag",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, defaultValue:Ljava/lang/Enum;,"TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/flags/Flag;->value(Ljava/lang/Enum;Z)Lcom/google/common/flags/Flag;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/Enum;Z)Lcom/google/common/flags/Flag;
    .registers 5
    .parameter
    .parameter "autoUpperCase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(TT;Z)",
            "Lcom/google/common/flags/Flag",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, defaultValue:Ljava/lang/Enum;,"TT;"
    new-instance v0, Lcom/google/common/flags/Flag$EnumFlag;

    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/common/flags/Flag$EnumFlag;-><init>(Ljava/lang/Enum;Ljava/lang/Class;ZLcom/google/common/flags/Flag$1;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;)Lcom/google/common/flags/Flag;
    .registers 2
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/google/common/flags/Flag$1;

    invoke-direct {v0, p0}, Lcom/google/common/flags/Flag$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/math/BigDecimal;)Lcom/google/common/flags/Flag;
    .registers 2
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigDecimal;",
            ")",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Lcom/google/common/flags/Flag$12;

    invoke-direct {v0, p0}, Lcom/google/common/flags/Flag$12;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public static value(Ljava/util/Date;Ljava/text/DateFormat;)Lcom/google/common/flags/Flag;
    .registers 3
    .parameter "defaultValue"
    .parameter "format"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/text/DateFormat;",
            ")",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    if-nez p1, :cond_8

    .line 711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 714
    :cond_8
    new-instance v0, Lcom/google/common/flags/Flag$14;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flags/Flag$14;-><init>(Ljava/util/Date;Ljava/text/DateFormat;)V

    return-object v0
.end method

.method public static value(Z)Lcom/google/common/flags/Flag;
    .registers 3
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Lcom/google/common/flags/Flag$10;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/Flag$10;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/flags/Flag;->accessed:Z

    .line 92
    iget-object v0, p0, Lcom/google/common/flags/Flag;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDefault()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    iget-object v0, p0, Lcom/google/common/flags/Flag;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final parsableStringValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, value:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/google/common/flags/Flag;->parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract parse(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation
.end method

.method public resetForTest()V
    .registers 2

    .prologue
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0}, Lcom/google/common/flags/Flag;->checkWriteState()V

    .line 199
    iput-boolean v0, p0, Lcom/google/common/flags/Flag;->accessed:Z

    .line 200
    iput-boolean v0, p0, Lcom/google/common/flags/Flag;->setFromString:Z

    .line 201
    iget-object v0, p0, Lcom/google/common/flags/Flag;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/flags/Flag;->value:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public setForTest(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    .local p1, newValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lcom/google/common/flags/Flag;->checkWriteState()V

    .line 213
    iput-object p1, p0, Lcom/google/common/flags/Flag;->value:Ljava/lang/Object;

    .line 214
    return-void
.end method

.method public final setFromString(Ljava/lang/String;)V
    .registers 3
    .parameter "valueString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;,
            Lcom/google/common/flags/IllegalFlagStateException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    invoke-direct {p0}, Lcom/google/common/flags/Flag;->checkWriteState()V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/flags/Flag;->setFromString:Z

    .line 177
    if-nez p1, :cond_1a

    .line 178
    const-string v0, "com.google.common.flags.disableStateChecking"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/flags/Flag;->value:Ljava/lang/Object;

    .line 186
    :goto_13
    return-void

    .line 181
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 184
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flags/Flag;->value:Ljava/lang/Object;

    goto :goto_13
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasSetFromString()Z
    .registers 2

    .prologue
    .line 138
    .local p0, this:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    iget-boolean v0, p0, Lcom/google/common/flags/Flag;->setFromString:Z

    return v0
.end method
