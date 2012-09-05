.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;
.source "SJISDistributionAnalysis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .registers 7
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 60
    const/4 v2, -0x1

    .line 62
    .local v2, order:I
    aget-byte v3, p1, p2

    and-int/lit16 v0, v3, 0xff

    .line 63
    .local v0, highbyte:I
    const/16 v3, 0x81

    if-lt v0, v3, :cond_22

    const/16 v3, 0x9f

    if-gt v0, v3, :cond_22

    .line 64
    add-int/lit16 v3, v0, -0x81

    mul-int/lit16 v2, v3, 0xbc

    .line 70
    :goto_11
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 71
    .local v1, lowbyte:I
    add-int/lit8 v3, v1, -0x40

    add-int/2addr v2, v3

    .line 72
    const/16 v3, 0x80

    if-lt v1, v3, :cond_20

    .line 73
    add-int/lit8 v2, v2, -0x1

    :cond_20
    move v3, v2

    .line 76
    .end local v1           #lowbyte:I
    :goto_21
    return v3

    .line 65
    :cond_22
    const/16 v3, 0xe0

    if-lt v0, v3, :cond_31

    const/16 v3, 0xef

    if-gt v0, v3, :cond_31

    .line 66
    add-int/lit16 v3, v0, -0xe0

    add-int/lit8 v3, v3, 0x1f

    mul-int/lit16 v2, v3, 0xbc

    goto :goto_11

    .line 68
    :cond_31
    const/4 v3, -0x1

    goto :goto_21
.end method
