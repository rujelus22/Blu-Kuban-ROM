.class public Lcom/google/android/apps/googlevoice/CallRecord;
.super Ljava/lang/Object;
.source "CallRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CALL_TIMESTAMP_ALLOWED_SPREAD_MSEC:J = 0x1388L

.field private static final serialVersionUID:J = -0x35a8bfa07e993e7aL


# instance fields
.field public backendUri:Ljava/lang/String;

.field public originalNumber:Ljava/lang/String;

.field public redirectedNumber:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .parameter "originalNumber"
    .parameter "redirectedNumber"
    .parameter "timestamp"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallRecord;->originalNumber:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/CallRecord;->redirectedNumber:Ljava/lang/String;

    .line 32
    iput-wide p3, p0, Lcom/google/android/apps/googlevoice/CallRecord;->timestamp:J

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallRecord;->backendUri:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method matchesCall(JLjava/lang/String;)Z
    .registers 8
    .parameter "callTimestamp"
    .parameter "number"

    .prologue
    .line 43
    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/CallRecord;->timestamp:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 44
    .local v0, timeSpread:J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_10

    const/4 v2, 0x0

    .line 47
    :goto_f
    return v2

    :cond_10
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallRecord;->redirectedNumber:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 52
    const-string v0, "%s -> %s @%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallRecord;->originalNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallRecord;->redirectedNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/android/apps/googlevoice/CallRecord;->timestamp:J

    invoke-static {v3, v4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->timestampToString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
