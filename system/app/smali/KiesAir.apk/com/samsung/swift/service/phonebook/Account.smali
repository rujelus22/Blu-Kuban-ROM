.class public Lcom/samsung/swift/service/phonebook/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 105
    invoke-direct {p0}, Lcom/samsung/swift/service/phonebook/Account;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/phonebook/Account;->peer:J

    .line 106
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .parameter "peer"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 99
    iput-wide p1, p0, Lcom/samsung/swift/service/phonebook/Account;->peer:J

    .line 100
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
    .line 117
    iget-wide v0, p0, Lcom/samsung/swift/service/phonebook/Account;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/phonebook/Account;->destroy(J)V

    .line 118
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 119
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 120
    return-void
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getType()Ljava/lang/String;
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setType(Ljava/lang/String;)V
.end method
