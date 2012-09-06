.class public Lcom/google/common/primitives/UnsignedLong;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedLong; = null

.field public static final ONE:Lcom/google/common/primitives/UnsignedLong; = null

.field private static final UNSIGNED_MASK:J = 0x7fffffffffffffffL

.field public static final ZERO:Lcom/google/common/primitives/UnsignedLong;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ZERO:Lcom/google/common/primitives/UnsignedLong;

    .line 48
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ONE:Lcom/google/common/primitives/UnsignedLong;

    .line 49
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

    return-void
.end method

.method protected constructor <init>(J)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    .line 55
    return-void
.end method

.method public static asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;
    .registers 3
    .parameter

    .prologue
    .line 65
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    invoke-direct {v0, p0, p1}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedLong;
    .registers 2
    .parameter

    .prologue
    .line 89
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLong;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->a(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedLong;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x40

    if-gt v0, v3, :cond_26

    move v0, v1

    :goto_14
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0

    :cond_26
    move v0, v2

    .line 76
    goto :goto_14
.end method


# virtual methods
.method public add(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .parameter

    .prologue
    .line 109
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .registers 6

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 200
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1a

    .line 201
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 203
    :cond_1a
    return-object v0
.end method

.method public compareTo(Lcom/google/common/primitives/UnsignedLong;)I
    .registers 6
    .parameter

    .prologue
    .line 208
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 40
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->compareTo(Lcom/google/common/primitives/UnsignedLong;)I

    move-result v0

    return v0
.end method

.method public divide(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .parameter

    .prologue
    .line 135
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->b(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .registers 7

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    .line 189
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_14

    .line 190
    const-wide/high16 v2, 0x43e0

    add-double/2addr v0, v2

    .line 192
    :cond_14
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    instance-of v1, p1, Lcom/google/common/primitives/UnsignedLong;

    if-eqz v1, :cond_10

    .line 220
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    .line 221
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v3, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 223
    :cond_10
    return v0
.end method

.method public floatValue()F
    .registers 6

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-float v0, v0

    .line 175
    iget-wide v1, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_14

    .line 176
    const/high16 v1, 0x5f00

    add-float/2addr v0, v1

    .line 178
    :cond_14
    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    return-wide v0
.end method

.method public multiply(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .parameter

    .prologue
    .line 127
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public remainder(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .parameter

    .prologue
    .line 143
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->c(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .registers 6
    .parameter

    .prologue
    .line 118
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->value:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, p1}, Lcom/google/common/primitives/UnsignedLongs;->a(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
