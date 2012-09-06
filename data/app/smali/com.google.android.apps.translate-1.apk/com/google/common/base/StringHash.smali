.class public final Lcom/google/common/base/StringHash;
.super Ljava/lang/Object;
.source "StringHash.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hash64(Ljava/lang/CharSequence;)J
    .registers 13
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    const-wide v0, -0x1f73e299748a907eL

    .line 28
    .local v0, a:J
    move-wide v2, v0

    .line 29
    .local v2, b:J
    const-wide v4, 0x2b992ddfa23249d6L

    .line 30
    .local v4, c:J
    const/4 v7, 0x0

    .line 33
    .local v7, offset:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .local v6, keylen:I
    :goto_10
    const/16 v8, 0xc

    if-lt v6, v8, :cond_7f

    .line 34
    invoke-static {p0, v7}, Lcom/google/common/base/StringHash;->word64At(Ljava/lang/CharSequence;I)J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 35
    add-int/lit8 v8, v7, 0x4

    invoke-static {p0, v8}, Lcom/google/common/base/StringHash;->word64At(Ljava/lang/CharSequence;I)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 36
    add-int/lit8 v8, v7, 0x8

    invoke-static {p0, v8}, Lcom/google/common/base/StringHash;->word64At(Ljava/lang/CharSequence;I)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 39
    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    const/16 v8, 0x2b

    ushr-long v8, v4, v8

    xor-long/2addr v0, v8

    .line 40
    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const/16 v8, 0x9

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 41
    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    const/16 v8, 0x8

    ushr-long v8, v2, v8

    xor-long/2addr v4, v8

    .line 42
    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    const/16 v8, 0x26

    ushr-long v8, v4, v8

    xor-long/2addr v0, v8

    .line 43
    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const/16 v8, 0x17

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 44
    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    const/4 v8, 0x5

    ushr-long v8, v2, v8

    xor-long/2addr v4, v8

    .line 45
    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    const/16 v8, 0x23

    ushr-long v8, v4, v8

    xor-long/2addr v0, v8

    .line 46
    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const/16 v8, 0x31

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 47
    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    const/16 v8, 0xb

    ushr-long v8, v2, v8

    xor-long/2addr v4, v8

    .line 48
    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    const/16 v8, 0xc

    ushr-long v8, v4, v8

    xor-long/2addr v0, v8

    .line 49
    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const/16 v8, 0x12

    shl-long v8, v0, v8

    xor-long/2addr v2, v8

    .line 50
    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    const/16 v8, 0x16

    ushr-long v8, v2, v8

    xor-long/2addr v4, v8

    .line 33
    add-int/lit8 v6, v6, -0xc

    add-int/lit8 v7, v7, 0xc

    goto :goto_10

    .line 53
    :cond_7f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 54
    packed-switch v6, :pswitch_data_122

    .line 83
    :goto_88
    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Hash;->mix64(JJJ)J

    move-result-wide v8

    return-wide v8

    .line 56
    :pswitch_8d
    add-int/lit8 v8, v7, 0xa

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 58
    :pswitch_9c
    add-int/lit8 v8, v7, 0x9

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 60
    :pswitch_ab
    add-int/lit8 v8, v7, 0x8

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 63
    :pswitch_ba
    add-int/lit8 v8, v7, 0x4

    invoke-static {p0, v8}, Lcom/google/common/base/StringHash;->word64At(Ljava/lang/CharSequence;I)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 64
    invoke-static {p0, v7}, Lcom/google/common/base/StringHash;->word64At(Ljava/lang/CharSequence;I)J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 65
    goto :goto_88

    .line 67
    :pswitch_c7
    add-int/lit8 v8, v7, 0x6

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 69
    :pswitch_d6
    add-int/lit8 v8, v7, 0x5

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 71
    :pswitch_e5
    add-int/lit8 v8, v7, 0x4

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 73
    :pswitch_f1
    invoke-static {p0, v7}, Lcom/google/common/base/StringHash;->word64At(Ljava/lang/CharSequence;I)J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 74
    goto :goto_88

    .line 76
    :pswitch_f7
    add-int/lit8 v8, v7, 0x2

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 78
    :pswitch_106
    add-int/lit8 v8, v7, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 80
    :pswitch_115
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    add-long/2addr v0, v8

    goto/16 :goto_88

    .line 54
    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_115
        :pswitch_106
        :pswitch_f7
        :pswitch_f1
        :pswitch_e5
        :pswitch_d6
        :pswitch_c7
        :pswitch_ba
        :pswitch_ab
        :pswitch_9c
        :pswitch_8d
    .end packed-switch
.end method

.method private static word64At(Ljava/lang/CharSequence;I)J
    .registers 9
    .parameter "chars"
    .parameter "offset"

    .prologue
    const-wide/32 v5, 0xffff

    .line 87
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
