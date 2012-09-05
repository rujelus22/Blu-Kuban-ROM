.class public Lcom/samsung/swift/service/sound/RingtoneList;
.super Ljava/lang/Object;
.source "RingtoneList.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-direct {p0}, Lcom/samsung/swift/service/sound/RingtoneList;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/sound/RingtoneList;->peer:J

    .line 102
    return-void
.end method

.method private constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lcom/samsung/swift/service/sound/RingtoneList;->peer:J

    .line 97
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method public native add(Lcom/samsung/swift/service/sound/Ringtone;)V
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/samsung/swift/service/sound/RingtoneList;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/sound/RingtoneList;->destroy(J)V

    .line 115
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void
.end method
