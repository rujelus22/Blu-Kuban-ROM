.class public Lcom/vlingo/client/core/tts/TTSDemand;
.super Ljava/lang/Object;
.source "TTSDemand.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;,
        Lcom/vlingo/client/core/tts/TTSDemand$TTSType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vlingo/client/core/tts/TTSDemand;",
            ">;"
        }
    .end annotation
.end field

.field private static lastID:J


# instance fields
.field private behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

.field private final id:J

.field private inChain:Z

.field private lastInChain:Z

.field private listener:Lcom/vlingo/client/core/tts/ITTSListener;

.field private msgContext:Lcom/vlingo/client/safereader/MessageContext;

.field private text:Ljava/lang/String;

.field private type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 143
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand$1;

    invoke-direct {v0}, Lcom/vlingo/client/core/tts/TTSDemand$1;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/tts/TTSDemand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v3, p0, Lcom/vlingo/client/core/tts/TTSDemand;->inChain:Z

    .line 34
    iput-boolean v3, p0, Lcom/vlingo/client/core/tts/TTSDemand;->lastInChain:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->valueOf(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->valueOf(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    .line 118
    const/4 v1, 0x2

    new-array v0, v1, [Z

    .line 119
    .local v0, bools:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 120
    aget-boolean v1, v0, v3

    iput-boolean v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->inChain:Z

    .line 121
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->lastInChain:Z

    .line 123
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->isMessageReadback()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 124
    const-class v1, Lcom/vlingo/client/safereader/MessageContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/safereader/MessageContext;

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->msgContext:Lcom/vlingo/client/safereader/MessageContext;

    .line 128
    :goto_45
    return-void

    .line 126
    :cond_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->text:Ljava/lang/String;

    goto :goto_45
.end method

.method private constructor <init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Lcom/vlingo/client/safereader/MessageContext;)V
    .registers 5
    .parameter "type"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->inChain:Z

    .line 34
    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->lastInChain:Z

    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->genID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    .line 46
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    .line 47
    iput-object p2, p0, Lcom/vlingo/client/core/tts/TTSDemand;->msgContext:Lcom/vlingo/client/safereader/MessageContext;

    .line 48
    sget-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->NORMAL:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V
    .registers 5
    .parameter "type"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->inChain:Z

    .line 34
    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->lastInChain:Z

    .line 38
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->genID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    .line 39
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    .line 40
    iput-object p2, p0, Lcom/vlingo/client/core/tts/TTSDemand;->text:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->NORMAL:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    .line 42
    return-void
.end method

.method public static genAnswer(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "text"

    .prologue
    .line 63
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->ANSWER:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static genCarAnswer(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "text"

    .prologue
    .line 95
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_ANSWER:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static genCarBackground(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "text"

    .prologue
    .line 87
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_BACKGROUND:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static genCarCancelable(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "text"

    .prologue
    .line 83
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CANCELABLE:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "text"

    .prologue
    .line 71
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static genCarConfirmationCancel(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "text"

    .prologue
    .line 75
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM_CANCEL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static genCarError(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "text"

    .prologue
    .line 79
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_ERROR:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "text"

    .prologue
    .line 91
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_PROMPT:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static genConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "text"

    .prologue
    .line 67
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static genEmailReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "context"

    .prologue
    .line 99
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_EMAIL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Lcom/vlingo/client/safereader/MessageContext;)V

    return-object v0
.end method

.method private genID()J
    .registers 9

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    .local v0, newID:J
    const-class v3, Lcom/vlingo/client/core/tts/TTSDemand;

    monitor-enter v3

    .line 54
    :try_start_7
    sget-wide v4, Lcom/vlingo/client/core/tts/TTSDemand;->lastID:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_13

    .line 55
    sget-wide v4, Lcom/vlingo/client/core/tts/TTSDemand;->lastID:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    .line 57
    :cond_13
    sput-wide v0, Lcom/vlingo/client/core/tts/TTSDemand;->lastID:J

    .line 58
    monitor-exit v3

    .line 59
    return-wide v0

    .line 58
    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v2
.end method

.method public static genMMSReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "context"

    .prologue
    .line 107
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_MMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Lcom/vlingo/client/safereader/MessageContext;)V

    return-object v0
.end method

.method public static genSMSReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "context"

    .prologue
    .line 103
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Lcom/vlingo/client/core/tts/TTSDemand$TTSType;Lcom/vlingo/client/safereader/MessageContext;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    if-ne p0, p1, :cond_5

    .line 192
    :cond_4
    :goto_4
    return v1

    .line 185
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 186
    goto :goto_4

    .line 187
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 188
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 189
    check-cast v0, Lcom/vlingo/client/core/tts/TTSDemand;

    .line 190
    .local v0, other:Lcom/vlingo/client/core/tts/TTSDemand;
    iget-wide v3, p0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    iget-wide v5, v0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 191
    goto :goto_4
.end method

.method public getBehavior()Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    return-wide v0
.end method

.method public getListener()Lcom/vlingo/client/core/tts/ITTSListener;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->listener:Lcom/vlingo/client/core/tts/ITTSListener;

    return-object v0
.end method

.method public getMsgContext()Lcom/vlingo/client/safereader/MessageContext;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->msgContext:Lcom/vlingo/client/safereader/MessageContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 175
    const/16 v0, 0x1f

    .line 176
    .local v0, prime:I
    const/4 v1, 0x1

    .line 177
    .local v1, result:I
    iget-wide v2, p0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    iget-wide v4, p0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 178
    return v1
.end method

.method public isInChain()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->inChain:Z

    return v0
.end method

.method public isLastInChain()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->lastInChain:Z

    return v0
.end method

.method public isMessageReadback()Z
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_EMAIL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_MMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setBehavior(Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;)V
    .registers 2
    .parameter "b"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    .line 217
    return-void
.end method

.method public setChainAttributes(ZZ)V
    .registers 3
    .parameter "inChain"
    .parameter "lastInChain"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->inChain:Z

    .line 162
    iput-boolean p2, p0, Lcom/vlingo/client/core/tts/TTSDemand;->lastInChain:Z

    .line 163
    return-void
.end method

.method public setListener(Lcom/vlingo/client/core/tts/ITTSListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->listener:Lcom/vlingo/client/core/tts/ITTSListener;

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-wide v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->type:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->behavior:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/vlingo/client/core/tts/TTSDemand;->inChain:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/vlingo/client/core/tts/TTSDemand;->lastInChain:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 136
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->isMessageReadback()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 137
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->msgContext:Lcom/vlingo/client/safereader/MessageContext;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    :goto_32
    return-void

    .line 139
    :cond_33
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSDemand;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_32
.end method
