.class public Lcom/samsung/swift/service/content/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 103
    invoke-direct {p0}, Lcom/samsung/swift/service/content/Item;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/content/Item;->peer:J

    .line 104
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .parameter "peer"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 97
    iput-wide p1, p0, Lcom/samsung/swift/service/content/Item;->peer:J

    .line 98
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native dateTaken()J
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/samsung/swift/service/content/Item;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/content/Item;->destroy(J)V

    .line 113
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 114
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    return-void
.end method

.method public native setDateTaken(J)V
.end method

.method public native setSize(I)V
.end method

.method public native size()I
.end method
