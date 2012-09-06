.class public LXR;
.super Ljava/lang/Object;
.source "FormatUtilities.java"


# direct methods
.method public static a(J)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 19
    long-to-double v0, p0

    .line 22
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-lez v2, :cond_22

    .line 23
    const-wide/high16 v2, 0x41d0

    div-double v1, v0, v2

    .line 24
    const-string v0, "GB"

    .line 32
    :goto_e
    const-string v3, "%.1f %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :cond_22
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-lez v2, :cond_30

    .line 26
    const-wide/high16 v2, 0x4130

    div-double v1, v0, v2

    .line 27
    const-string v0, "MB"

    goto :goto_e

    .line 29
    :cond_30
    const-wide/high16 v2, 0x4090

    div-double v1, v0, v2

    .line 30
    const-string v0, "KB"

    goto :goto_e
.end method
