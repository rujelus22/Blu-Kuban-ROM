.class public abstract Lcom/samsung/swift/util/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/swift/util/Resource;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/util/Resource;->peer:J

    .line 98
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Lcom/samsung/swift/util/Resource;->peer:J

    .line 93
    return-void
.end method


# virtual methods
.method protected abstract create()J
.end method

.method protected abstract destroy(J)V
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/samsung/swift/util/Resource;->peer:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/swift/util/Resource;->destroy(J)V

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 108
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method
