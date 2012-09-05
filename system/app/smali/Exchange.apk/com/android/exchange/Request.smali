.class public abstract Lcom/android/exchange/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field public final mMessageId:J

.field public final mTimeStamp:J


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/Request;->mTimeStamp:J

    .line 34
    iput-wide p1, p0, Lcom/android/exchange/Request;->mMessageId:J

    .line 35
    return-void
.end method
