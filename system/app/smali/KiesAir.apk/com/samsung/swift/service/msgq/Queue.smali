.class public Lcom/samsung/swift/service/msgq/Queue;
.super Ljava/lang/Object;
.source "Queue.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-direct {p0}, Lcom/samsung/swift/service/msgq/Queue;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/msgq/Queue;->peer:J

    .line 107
    return-void
.end method

.method private constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide p1, p0, Lcom/samsung/swift/service/msgq/Queue;->peer:J

    .line 102
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native acknoledgmentQueueId()Ljava/lang/String;
.end method

.method public native autoUnsubscribeTimeout()I
.end method

.method public native creatorClientId()Ljava/lang/String;
.end method

.method public native defaultMessageFlags()I
.end method

.method public native defaultMessageTimeOut()I
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/samsung/swift/service/msgq/Queue;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/msgq/Queue;->destroy(J)V

    .line 116
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 117
    return-void
.end method

.method public native id()Ljava/lang/String;
.end method

.method public native nacknoledgmentQueueId()Ljava/lang/String;
.end method

.method public native ownerToken()Ljava/lang/String;
.end method

.method public native persistent()Z
.end method

.method public native publisherToken()Ljava/lang/String;
.end method

.method public native setAcknoledgmentQueueId(Ljava/lang/String;)V
.end method

.method public native setAutoUnsubscribeTimeout(I)V
.end method

.method public native setCreatorClientId(Ljava/lang/String;)V
.end method

.method public native setDefaultMessageFlags(I)V
.end method

.method public native setDefaultMessageTimeOut(I)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setNacknoledgmentQueueId(Ljava/lang/String;)V
.end method

.method public native setOwnerToken(Ljava/lang/String;)V
.end method

.method public native setPersistent(Z)V
.end method

.method public native setPublisherToken(Ljava/lang/String;)V
.end method

.method public native setSubscriberToken(Ljava/lang/String;)V
.end method

.method public native setSubscriptionQueueId(Ljava/lang/String;)V
.end method

.method public native setUnsubscribeMessageBody(Ljava/lang/String;)V
.end method

.method public native subscriberToken()Ljava/lang/String;
.end method

.method public native subscriptionQueueId()Ljava/lang/String;
.end method

.method public native unsubscribeMessageBody()Ljava/lang/String;
.end method
