.class public Lcom/samsung/swift/service/phonebook/ContactCapabilities;
.super Ljava/lang/Object;
.source "ContactCapabilities.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->peer:J

    .line 109
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .parameter "peer"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 102
    iput-wide p1, p0, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->peer:J

    .line 103
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
    .line 120
    iget-wide v0, p0, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/phonebook/ContactCapabilities;->destroy(J)V

    .line 121
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void
.end method

.method public native setDefaultNoSupported(Z)V
.end method

.method public native setEmailLen(I)V
.end method

.method public native setFavouritesSupported(Z)V
.end method

.method public native setHeight(I)V
.end method

.method public native setNameLen(I)V
.end method

.method public native setNumberLen(I)V
.end method

.method public native setThumnailRequired(Z)V
.end method

.method public native setWidth(I)V
.end method
