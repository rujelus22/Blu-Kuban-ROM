.class public Lcom/android/exchange/MeetingResponseRequest;
.super Lcom/android/exchange/Request;
.source "MeetingResponseRequest.java"


# instance fields
.field public final mDraftMessageId:J

.field public final mResponse:I


# direct methods
.method constructor <init>(JI)V
    .registers 6
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/Request;-><init>(J)V

    .line 29
    iput p3, p0, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    .line 32
    return-void
.end method

.method constructor <init>(JJI)V
    .registers 6
    .parameter "messageId"
    .parameter "draftMessageId"
    .parameter "response"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/Request;-><init>(J)V

    .line 35
    iput p5, p0, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    .line 36
    iput-wide p3, p0, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 43
    instance-of v1, p1, Lcom/android/exchange/MeetingResponseRequest;

    if-nez v1, :cond_6

    .line 44
    .end local p1
    :cond_5
    :goto_5
    return v0

    .restart local p1
    :cond_6
    check-cast p1, Lcom/android/exchange/MeetingResponseRequest;

    .end local p1
    iget-wide v1, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-wide v3, p0, Lcom/android/exchange/Request;->mMessageId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/exchange/Request;->mMessageId:J

    long-to-int v0, v0

    return v0
.end method
