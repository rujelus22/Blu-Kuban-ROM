.class public final Lcom/google/common/base/Fingerprinting;
.super Ljava/lang/Object;
.source "Fingerprinting.java"


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

.method public static addToOrdered(JJ)J
    .registers 8
    .parameter "sequenceFp"
    .parameter "wordFp"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    const/16 v0, 0x3f

    ushr-long v0, p0, v0

    const/4 v2, 0x1

    shl-long v2, p0, v2

    add-long/2addr v0, v2

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public static varargs orderedFingerprint([J)J
    .registers 8
    .parameter "wordFps"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    const-wide v1, 0x2b992ddfa23249d6L

    .line 53
    .local v1, fp:J
    move-object v0, p0

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_13

    aget-wide v5, v0, v3

    .line 54
    .local v5, wordFp:J
    invoke-static {v1, v2, v5, v6}, Lcom/google/common/base/Fingerprinting;->addToOrdered(JJ)J

    move-result-wide v1

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 56
    .end local v5           #wordFp:J
    :cond_13
    return-wide v1
.end method
