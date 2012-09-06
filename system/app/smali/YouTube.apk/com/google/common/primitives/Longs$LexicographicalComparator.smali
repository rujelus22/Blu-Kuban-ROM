.class final enum Lcom/google/common/primitives/Longs$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/Longs$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 388
    new-instance v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Longs$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    .line 387
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Longs$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Longs$LexicographicalComparator;
    .registers 2
    .parameter

    .prologue
    .line 387
    const-class v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Longs$LexicographicalComparator;
    .registers 1

    .prologue
    .line 387
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Longs$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Longs$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 387
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$LexicographicalComparator;->compare([J[J)I

    move-result v0

    return v0
.end method

.method public final compare([J[J)I
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 392
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 393
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 394
    aget-wide v3, p1, v1

    aget-wide v5, p2, v1

    invoke-static {v3, v4, v5, v6}, Lcom/google/common/primitives/Longs;->a(JJ)I

    move-result v0

    .line 395
    if-eqz v0, :cond_15

    .line 399
    :goto_14
    return v0

    .line 393
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 399
    :cond_19
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_14
.end method
