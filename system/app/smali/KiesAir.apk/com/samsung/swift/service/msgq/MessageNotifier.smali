.class public abstract Lcom/samsung/swift/service/msgq/MessageNotifier;
.super Ljava/lang/Object;
.source "MessageNotifier.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-direct {p0}, Lcom/samsung/swift/service/msgq/MessageNotifier;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/msgq/MessageNotifier;->peer:J

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
    iput-wide p1, p0, Lcom/samsung/swift/service/msgq/MessageNotifier;->peer:J

    .line 102
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/samsung/swift/service/msgq/MessageNotifier;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/msgq/MessageNotifier;->destroy(J)V

    .line 116
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 117
    return-void
.end method

.method public abstract notify(Ljava/lang/String;)V
.end method
