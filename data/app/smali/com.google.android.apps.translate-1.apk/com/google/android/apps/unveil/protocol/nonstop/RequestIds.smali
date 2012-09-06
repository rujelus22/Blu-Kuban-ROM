.class public Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds;
.super Ljava/lang/Object;
.source "RequestIds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ":"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static decodeBaseRequestId(Ljava/lang/String;)J
    .registers 6
    .parameter "fullRequestId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, tokens:[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_16

    .line 53
    sget-object v1, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "RequestId missing request type sub-identifier: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_16
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static encodeFullRequestId(JLcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;)Ljava/lang/String;
    .registers 7
    .parameter "requestSequenceNumber"
    .parameter "requestType"

    .prologue
    .line 44
    const-string v0, "%012d%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ":"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->identifier:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
