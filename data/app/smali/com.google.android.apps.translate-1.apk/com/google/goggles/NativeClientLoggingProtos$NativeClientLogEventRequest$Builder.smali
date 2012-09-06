.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;",
        ">;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

.field private clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

.field private clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

.field private gogglesId_:J

.field private msSinceEpoch_:J

.field private sessionId_:Ljava/lang/Object;

.field private trackingId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2100
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2319
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    .line 2362
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    .line 2405
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    .line 2469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->trackingId_:Ljava/lang/Object;

    .line 2505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2101
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2102
    return-void
.end method

.method static synthetic access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2095
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 1

    .prologue
    .line 2095
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2147
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    .line 2148
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2149
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2152
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 1

    .prologue
    .line 2107
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2105
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 3

    .prologue
    .line 2138
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    .line 2139
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2140
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2142
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 2156
    new-instance v2, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V

    .line 2157
    iget v3, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2158
    const/4 v1, 0x0

    .line 2159
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_63

    .line 2162
    :goto_e
    iget-wide v4, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->msSinceEpoch_:J

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->msSinceEpoch_:J
    invoke-static {v2, v4, v5}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->access$2502(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;J)J

    .line 2163
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 2164
    or-int/lit8 v0, v0, 0x2

    .line 2166
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->access$2602(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    .line 2167
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 2168
    or-int/lit8 v0, v0, 0x4

    .line 2170
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->access$2702(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    .line 2171
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 2172
    or-int/lit8 v0, v0, 0x8

    .line 2174
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->access$2802(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    .line 2175
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 2176
    or-int/lit8 v0, v0, 0x10

    .line 2178
    :cond_40
    iget-wide v4, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->gogglesId_:J

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->gogglesId_:J
    invoke-static {v2, v4, v5}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->access$2902(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;J)J

    .line 2179
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 2180
    or-int/lit8 v0, v0, 0x20

    .line 2182
    :cond_4d
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->trackingId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->trackingId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->access$3002(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5a

    .line 2184
    or-int/lit8 v0, v0, 0x40

    .line 2186
    :cond_5a
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->sessionId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->access$3102(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->access$3202(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;I)I

    .line 2188
    return-object v2

    :cond_63
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 2111
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2112
    iput-wide v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->msSinceEpoch_:J

    .line 2113
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2114
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    .line 2115
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2116
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    .line 2117
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2118
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    .line 2119
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2120
    iput-wide v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->gogglesId_:J

    .line 2121
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->trackingId_:Ljava/lang/Object;

    .line 2123
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2125
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2126
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientClick()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 2

    .prologue
    .line 2355
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    .line 2357
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2358
    return-object p0
.end method

.method public clearClientInstall()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 2

    .prologue
    .line 2441
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    .line 2443
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2444
    return-object p0
.end method

.method public clearClientRating()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 2

    .prologue
    .line 2398
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    .line 2400
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2401
    return-object p0
.end method

.method public clearGogglesId()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2462
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2463
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->gogglesId_:J

    .line 2465
    return-object p0
.end method

.method public clearMsSinceEpoch()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3

    .prologue
    .line 2312
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->msSinceEpoch_:J

    .line 2315
    return-object p0
.end method

.method public clearSessionId()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 2

    .prologue
    .line 2529
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2530
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2532
    return-object p0
.end method

.method public clearTrackingId()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 2

    .prologue
    .line 2493
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2494
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->trackingId_:Ljava/lang/Object;

    .line 2496
    return-object p0
.end method

.method public clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3

    .prologue
    .line 2130
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientClick()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    return-object v0
.end method

.method public getClientInstall()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    return-object v0
.end method

.method public getClientRating()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 2

    .prologue
    .line 2134
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGogglesId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2453
    iget-wide v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->gogglesId_:J

    return-wide v0
.end method

.method public getMsSinceEpoch()J
    .registers 3

    .prologue
    .line 2303
    iget-wide v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->msSinceEpoch_:J

    return-wide v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2511
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2512
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2513
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2516
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->trackingId_:Ljava/lang/Object;

    .line 2475
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2476
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2477
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->trackingId_:Ljava/lang/Object;

    .line 2480
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasClientClick()Z
    .registers 3

    .prologue
    .line 2321
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasClientInstall()Z
    .registers 3

    .prologue
    .line 2407
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasClientRating()Z
    .registers 3

    .prologue
    .line 2364
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasGogglesId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2450
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMsSinceEpoch()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2300
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSessionId()Z
    .registers 3

    .prologue
    .line 2507
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTrackingId()Z
    .registers 3

    .prologue
    .line 2471
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2218
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->hasClientClick()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2219
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->getClientClick()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2221
    const/4 v0, 0x0

    .line 2224
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2343
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2345
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    .line 2351
    :goto_1f
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2352
    return-object p0

    .line 2348
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    goto :goto_1f
.end method

.method public mergeClientInstall(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2429
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2431
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    .line 2437
    :goto_20
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2438
    return-object p0

    .line 2434
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    goto :goto_20
.end method

.method public mergeClientRating(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2386
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2388
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    .line 2394
    :goto_1f
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2395
    return-object p0

    .line 2391
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2192
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2214
    :cond_6
    :goto_6
    return-object p0

    .line 2193
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->hasMsSinceEpoch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2194
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getMsSinceEpoch()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setMsSinceEpoch(J)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 2196
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->hasClientClick()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2197
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getClientClick()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 2199
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->hasClientRating()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2200
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getClientRating()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeClientRating(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 2202
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->hasClientInstall()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2203
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getClientInstall()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeClientInstall(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 2205
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->hasGogglesId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2206
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getGogglesId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setGogglesId(J)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 2208
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->hasTrackingId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2209
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setTrackingId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    .line 2211
    :cond_55
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2212
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2232
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2233
    sparse-switch v0, :sswitch_data_98

    .line 2238
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2240
    :sswitch_d
    return-object p0

    .line 2245
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    .line 2246
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->hasClientClick()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2247
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->getClientClick()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    .line 2249
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2250
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    goto :goto_0

    .line 2254
    :sswitch_2a
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    .line 2255
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->hasClientRating()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2256
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->getClientRating()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    .line 2258
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2259
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientRating(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    goto :goto_0

    .line 2263
    :sswitch_46
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2264
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->msSinceEpoch_:J

    goto :goto_0

    .line 2268
    :sswitch_53
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    .line 2269
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->hasClientInstall()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 2270
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->getClientInstall()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    .line 2272
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2273
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->setClientInstall(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    goto :goto_0

    .line 2277
    :sswitch_6f
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2278
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->gogglesId_:J

    goto :goto_0

    .line 2282
    :sswitch_7c
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2283
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->trackingId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2287
    :sswitch_8a
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2288
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2233
    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x1a -> :sswitch_2a
        0x20 -> :sswitch_46
        0x2a -> :sswitch_53
        0x49 -> :sswitch_6f
        0x52 -> :sswitch_7c
        0x5a -> :sswitch_8a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2095
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2095
    check-cast p1, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    invoke-virtual {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2095
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2337
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    .line 2339
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2340
    return-object p0
.end method

.method public setClientClick(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2327
    if-nez p1, :cond_8

    .line 2328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2330
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    .line 2332
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2333
    return-object p0
.end method

.method public setClientInstall(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2423
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    .line 2425
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2426
    return-object p0
.end method

.method public setClientInstall(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2413
    if-nez p1, :cond_8

    .line 2414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2416
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    .line 2418
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2419
    return-object p0
.end method

.method public setClientRating(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2380
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    .line 2382
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2383
    return-object p0
.end method

.method public setClientRating(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2370
    if-nez p1, :cond_8

    .line 2371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2373
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    .line 2375
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2376
    return-object p0
.end method

.method public setGogglesId(J)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2456
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2457
    iput-wide p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->gogglesId_:J

    .line 2459
    return-object p0
.end method

.method public setMsSinceEpoch(J)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2306
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2307
    iput-wide p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->msSinceEpoch_:J

    .line 2309
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2520
    if-nez p1, :cond_8

    .line 2521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2523
    :cond_8
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2524
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2526
    return-object p0
.end method

.method setSessionId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2535
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2536
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2538
    return-void
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2484
    if-nez p1, :cond_8

    .line 2485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2487
    :cond_8
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2488
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->trackingId_:Ljava/lang/Object;

    .line 2490
    return-object p0
.end method

.method setTrackingId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2499
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->bitField0_:I

    .line 2500
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->trackingId_:Ljava/lang/Object;

    .line 2502
    return-void
.end method
