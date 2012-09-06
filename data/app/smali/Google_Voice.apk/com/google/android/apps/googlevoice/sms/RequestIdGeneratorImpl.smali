.class public Lcom/google/android/apps/googlevoice/sms/RequestIdGeneratorImpl;
.super Ljava/lang/Object;
.source "RequestIdGeneratorImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;


# instance fields
.field private final random:Ljava/util/Random;

.field private requestIdSeed:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .registers 2
    .parameter "random"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/RequestIdGeneratorImpl;->random:Ljava/util/Random;

    .line 20
    return-void
.end method


# virtual methods
.method public generate(Ljava/lang/String;Ljava/lang/String;)J
    .registers 6
    .parameter "destination"
    .parameter "message"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/RequestIdGeneratorImpl;->requestIdSeed:Ljava/lang/Long;

    if-nez v1, :cond_10

    .line 34
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/RequestIdGeneratorImpl;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/sms/RequestIdGeneratorImpl;->requestIdSeed:Ljava/lang/Long;

    .line 36
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, id:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/RequestIdGeneratorImpl;->requestIdSeed:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/sms/RequestIdGeneratorImpl;->requestIdSeed:Ljava/lang/Long;

    .line 46
    return-void
.end method
