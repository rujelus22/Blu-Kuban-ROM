.class public Lcom/samsung/swift/service/sound/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/swift/service/sound/Ringtone;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/sound/Ringtone;->peer:J

    .line 109
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .parameter "peer"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 103
    iput-wide p1, p0, Lcom/samsung/swift/service/sound/Ringtone;->peer:J

    .line 104
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native duration()J
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
    iget-wide v0, p0, Lcom/samsung/swift/service/sound/Ringtone;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/sound/Ringtone;->destroy(J)V

    .line 121
    sget-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void
.end method

.method public native id()Ljava/lang/String;
.end method

.method public native isSelected(Ljava/lang/String;)Z
.end method

.method public native mimeType()Ljava/lang/String;
.end method

.method public native name()Ljava/lang/String;
.end method

.method public native path()Ljava/lang/String;
.end method

.method public native revision()Ljava/lang/String;
.end method

.method public native setDuration(J)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setMimeTypeFromFileName(Ljava/lang/String;)V
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setPath(Ljava/lang/String;)V
.end method

.method public native setRevision(Ljava/lang/String;)V
.end method

.method public native setSelected(ZLjava/lang/String;)V
.end method
