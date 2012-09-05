.class final enum Lcom/google/common/primitives/Booleans$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/Booleans$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 277
    new-instance v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Booleans$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    .line 276
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    .registers 2
    .parameter

    .prologue
    .line 276
    const-class v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    .registers 1

    .prologue
    .line 276
    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Booleans$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 276
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->compare([Z[Z)I

    move-result v0

    return v0
.end method

.method public final compare([Z[Z)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 280
    array-length v0, p1

    array-length v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    .line 281
    :goto_8
    if-ge v2, v3, :cond_1e

    .line 282
    aget-boolean v0, p1, v2

    aget-boolean v4, p2, v2

    if-ne v0, v4, :cond_14

    move v0, v1

    .line 283
    :goto_11
    if-eqz v0, :cond_1a

    .line 287
    :goto_13
    return v0

    .line 282
    :cond_14
    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_11

    :cond_18
    const/4 v0, -0x1

    goto :goto_11

    .line 281
    :cond_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 287
    :cond_1e
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_13
.end method
