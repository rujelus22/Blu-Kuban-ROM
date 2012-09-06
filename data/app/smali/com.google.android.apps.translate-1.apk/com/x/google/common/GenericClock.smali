.class public Lcom/x/google/common/GenericClock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/Clock;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public relativeTimeMillis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public uptimeMillis()J
    .registers 3

    const-wide/high16 v0, -0x8000

    return-wide v0
.end method
