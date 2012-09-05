.class public Lcom/samsung/swift/service/telephony/CallLogEntry;
.super Ljava/lang/Object;
.source "CallLogEntry.java"


# static fields
.field public static final FLAGS_INCOMING:I = 0x1

.field public static final FLAGS_MISSED:I = 0x4

.field public static final FLAGS_NEW:I = 0x8

.field public static final FLAGS_OUTGOING:I = 0x2

.field public static final FLAGS_REJECTED:I = 0x10

.field public static final FLAGS_SMS_INCOMING:I = 0x20

.field public static final FLAGS_SMS_OUTGOING:I = 0x40

.field public static final FLAGS_VIDEO_CALL_ANSWERED:I = 0x100

.field public static final FLAGS_VIDEO_CALL_MISSED:I = 0x200

.field public static final FLAGS_VIDEO_CALL_OUTGOING:I = 0x80

.field public static final FLAGS_VIDEO_CALL_REJECTED:I = 0x400


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 117
    invoke-direct {p0}, Lcom/samsung/swift/service/telephony/CallLogEntry;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/telephony/CallLogEntry;->peer:J

    .line 118
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .parameter "peer"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 111
    iput-wide p1, p0, Lcom/samsung/swift/service/telephony/CallLogEntry;->peer:J

    .line 112
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native destination()Ljava/lang/String;
.end method

.method public native destinationContactId()Ljava/lang/String;
.end method

.method public native destinationName()Ljava/lang/String;
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/samsung/swift/service/telephony/CallLogEntry;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/telephony/CallLogEntry;->destroy(J)V

    .line 130
    sget-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    return-void
.end method

.method public native flags()I
.end method

.method public native id()Ljava/lang/String;
.end method

.method public native network()Ljava/lang/String;
.end method

.method public native revision()Ljava/lang/String;
.end method

.method public native setDestination(Ljava/lang/String;)V
.end method

.method public native setDestinationContactId(Ljava/lang/String;)V
.end method

.method public native setDestinationName(Ljava/lang/String;)V
.end method

.method public native setDuration(I)V
.end method

.method public native setFlags(I)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setNetwork(Ljava/lang/String;)V
.end method

.method public native setRevision(Ljava/lang/String;)V
.end method

.method public native setSource(Ljava/lang/String;)V
.end method

.method public native setSourceContactId(Ljava/lang/String;)V
.end method

.method public native setSourceName(Ljava/lang/String;)V
.end method

.method public native setTimestamp(J)V
.end method

.method public native source()Ljava/lang/String;
.end method

.method public native sourceContactId()Ljava/lang/String;
.end method

.method public native sourceName()Ljava/lang/String;
.end method

.method public native timestamp()J
.end method
