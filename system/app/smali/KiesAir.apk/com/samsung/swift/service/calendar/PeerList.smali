.class public Lcom/samsung/swift/service/calendar/PeerList;
.super Ljava/lang/Object;
.source "PeerList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 16
    .local p0, this:Lcom/samsung/swift/service/calendar/PeerList;,"Lcom/samsung/swift/service/calendar/PeerList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/samsung/swift/service/calendar/PeerList;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/calendar/PeerList;->peer:J

    .line 18
    return-void
.end method

.method private constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 11
    .local p0, this:Lcom/samsung/swift/service/calendar/PeerList;,"Lcom/samsung/swift/service/calendar/PeerList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/samsung/swift/service/calendar/PeerList;->peer:J

    .line 13
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native add(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lcom/samsung/swift/service/calendar/PeerList;,"Lcom/samsung/swift/service/calendar/PeerList<TT;>;"
    iget-wide v0, p0, Lcom/samsung/swift/service/calendar/PeerList;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/calendar/PeerList;->destroy(J)V

    .line 30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 31
    return-void
.end method

.method public native setEstimatedResultSize(I)V
.end method
