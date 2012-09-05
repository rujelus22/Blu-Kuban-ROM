.class public Lcom/samsung/swift/service/msgq/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field public static final FLAGS_UNDEFINED:I = -0x1

.field public static final FLAG_NACK_SENT:I = 0x4

.field public static final FLAG_REQUIRES_ACK:I = 0x1

.field public static final FLAG_REQUIRES_NACK:I = 0x2

.field public static final TYPE_ACK:I = 0x1

.field public static final TYPE_MESSAGE:I = 0x0

.field public static final TYPE_NACK:I = 0x2


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-direct {p0}, Lcom/samsung/swift/service/msgq/Message;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/msgq/Message;->peer:J

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
    iput-wide p1, p0, Lcom/samsung/swift/service/msgq/Message;->peer:J

    .line 102
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native acknowledgedMsgId()Ljava/lang/String;
.end method

.method public native creationTimestamp()I
.end method

.method public native expirationTimestamp()I
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/samsung/swift/service/msgq/Message;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/msgq/Message;->destroy(J)V

    .line 116
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 117
    return-void
.end method

.method public native flags()I
.end method

.method public native id()Ljava/lang/String;
.end method

.method public native queueId()Ljava/lang/String;
.end method

.method public native senderClientId()Ljava/lang/String;
.end method

.method public native setAcknowledgedMsgId(Ljava/lang/String;)V
.end method

.method public native setCreationTimestamp(I)V
.end method

.method public native setExpirationTimestamp(I)V
.end method

.method public native setFlags(I)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setQueueId(Ljava/lang/String;)V
.end method

.method public native setSenderClientId(Ljava/lang/String;)V
.end method

.method public native setText(Ljava/lang/String;)V
.end method

.method public native setType(I)V
.end method

.method public native text()Ljava/lang/String;
.end method

.method public native type()I
.end method
