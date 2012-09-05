.class public Lcom/samsung/swift/service/messaging/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field public static final MSG_TYPE_MMS:I = 0x2

.field public static final MSG_TYPE_SMS:I = 0x1


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/swift/service/messaging/Message;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/messaging/Message;->peer:J

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
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 102
    iput-wide p1, p0, Lcom/samsung/swift/service/messaging/Message;->peer:J

    .line 103
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native body()Ljava/lang/String;
.end method

.method public native destination()Ljava/lang/String;
.end method

.method public native destinationContactId()Ljava/lang/String;
.end method

.method public native destinationName()Ljava/lang/String;
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/samsung/swift/service/messaging/Message;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/messaging/Message;->destroy(J)V

    .line 121
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void
.end method

.method public native folderId()Ljava/lang/String;
.end method

.method public native id()Ljava/lang/String;
.end method

.method public native isQueued()Z
.end method

.method public native isRead()Z
.end method

.method public native isSent()Z
.end method

.method public native network()Ljava/lang/String;
.end method

.method public native setBody(Ljava/lang/String;)V
.end method

.method public native setDestination(Ljava/lang/String;)V
.end method

.method public native setDestinationContactId(Ljava/lang/String;)V
.end method

.method public native setDestinationName(Ljava/lang/String;)V
.end method

.method public native setFolderId(Ljava/lang/String;)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setNetwork(Ljava/lang/String;)V
.end method

.method public native setQueued(Z)V
.end method

.method public native setRead(Z)V
.end method

.method public native setSent(Z)V
.end method

.method public native setSource(Ljava/lang/String;)V
.end method

.method public native setSourceContactId(Ljava/lang/String;)V
.end method

.method public native setSourceName(Ljava/lang/String;)V
.end method

.method public native setThreadId(Ljava/lang/String;)V
.end method

.method public native setTimestamp(I)V
.end method

.method public native setType(I)V
.end method

.method public native source()Ljava/lang/String;
.end method

.method public native sourceContactId()Ljava/lang/String;
.end method

.method public native sourceName()Ljava/lang/String;
.end method

.method public native threadId()Ljava/lang/String;
.end method

.method public native timestamp()I
.end method

.method public native type()I
.end method
