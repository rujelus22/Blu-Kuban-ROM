.class public Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
.super Ljava/lang/Object;
.source "RlzProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzProtocol$PingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field private final accessPoint:Ljava/lang/String;

.field private final eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "ap"
    .parameter "et"

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    if-eqz p1, :cond_7

    if-nez p2, :cond_f

    .line 388
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Access point and event cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_f
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    .line 391
    iput-object p2, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    .line 392
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 408
    if-nez p1, :cond_4

    .line 415
    :cond_3
    :goto_3
    return v1

    .line 411
    :cond_4
    instance-of v2, p1, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 414
    check-cast v0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;

    .line 415
    .local v0, other:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
    iget-object v2, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getAccessPoint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->accessPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
