.class public final Lcom/google/common/primitives/UnsignedInteger;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ONE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ZERO:Lcom/google/common/primitives/UnsignedInteger;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ZERO:Lcom/google/common/primitives/UnsignedInteger;

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ONE:Lcom/google/common/primitives/UnsignedInteger;

    .line 45
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 50
    and-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    .line 51
    return-void
.end method

.method public static asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;
    .registers 2
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/google/common/primitives/UnsignedInteger;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/UnsignedInteger;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/google/common/primitives/UnsignedInteger;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    const-wide v3, 0xffffffffL

    and-long/2addr v3, p0

    cmp-long v0, v3, p0

    if-nez v0, :cond_20

    move v0, v1

    :goto_d
    const-string v3, "value (%s) is outside the range for an unsigned integer value"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    long-to-int v0, p0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0

    :cond_20
    move v0, v2

    .line 66
    goto :goto_d
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 2
    .parameter

    .prologue
    .line 92
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_36

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in base "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range of an unsigned integer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x20

    if-gt v0, v3, :cond_26

    move v0, v1

    :goto_14
    const-string v3, "value (%s) is outside the range for an unsigned integer value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0

    :cond_26
    move v0, v2

    .line 79
    goto :goto_14
.end method


# virtual methods
.method public final add(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 4
    .parameter

    .prologue
    .line 111
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public final bigIntegerValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final compareTo(Lcom/google/common/primitives/UnsignedInteger;)I
    .registers 4
    .parameter

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedInts;->a(II)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 40
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedInteger;->compareTo(Lcom/google/common/primitives/UnsignedInteger;)I

    move-result v0

    return v0
.end method

.method public final divide(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 8
    .parameter

    .prologue
    const-wide v4, 0xffffffffL

    .line 138
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    int-to-long v2, v0

    and-long/2addr v2, v4

    int-to-long v0, v1

    and-long/2addr v0, v4

    div-long v0, v2, v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public final doubleValue()D
    .registers 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 213
    instance-of v1, p1, Lcom/google/common/primitives/UnsignedInteger;

    if-eqz v1, :cond_e

    .line 214
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 215
    iget v1, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v2, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 217
    :cond_e
    return v0
.end method

.method public final floatValue()F
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public final intValue()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public final longValue()J
    .registers 5

    .prologue
    .line 167
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final multiply(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 4
    .parameter

    .prologue
    .line 130
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public final remainder(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 8
    .parameter

    .prologue
    const-wide v4, 0xffffffffL

    .line 146
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    int-to-long v2, v0

    and-long/2addr v2, v4

    int-to-long v0, v1

    and-long/2addr v0, v4

    rem-long v0, v2, v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public final subtract(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 4
    .parameter

    .prologue
    .line 120
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 234
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
