.class public Lcom/widevine/drm/internal/r;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 8

    new-array v2, p0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p0, :cond_2c

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x404f

    mul-double/2addr v3, v5

    double-to-int v0, v3

    int-to-byte v0, v0

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_1c

    add-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    :goto_16
    aput-byte v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_1c
    const/16 v3, 0x34

    if-ge v0, v3, :cond_26

    add-int/lit8 v0, v0, -0x1a

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    goto :goto_16

    :cond_26
    add-int/lit8 v0, v0, -0x34

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    goto :goto_16

    :cond_2c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
