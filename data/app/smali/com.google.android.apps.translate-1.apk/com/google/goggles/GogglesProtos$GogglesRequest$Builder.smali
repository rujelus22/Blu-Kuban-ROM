.class public final Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$GogglesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$GogglesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesRequest;",
        "Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$GogglesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private audio_:Lcom/google/goggles/GogglesProtos$Audio;

.field private bitField0_:I

.field private captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

.field private flow_:Lcom/google/goggles/FlowProtos$FlowData;

.field private gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

.field private image_:Lcom/google/goggles/GogglesProtos$Image;

.field private pose_:Lcom/google/goggles/PoseProtos$Pose;

.field private restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

.field private source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3146
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 3409
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 3452
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    .line 3495
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 3538
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    .line 3581
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->text_:Ljava/lang/Object;

    .line 3617
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->getDefaultInstance()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    .line 3660
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 3684
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->SINGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    .line 3708
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 3147
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 3148
    return-void
.end method

.method static synthetic access$3900(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3142
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 1

    .prologue
    .line 3142
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->create()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3197
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    .line 3198
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3199
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3202
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 1

    .prologue
    .line 3153
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3151
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 3

    .prologue
    .line 3188
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    .line 3189
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3190
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3192
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 3206
    new-instance v2, Lcom/google/goggles/GogglesProtos$GogglesRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;-><init>(Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/goggles/GogglesProtos$1;)V

    .line 3207
    iget v3, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3208
    const/4 v1, 0x0

    .line 3209
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7d

    .line 3212
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$4202(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 3213
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 3214
    or-int/lit8 v0, v0, 0x2

    .line 3216
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->image_:Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$4302(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image;

    .line 3217
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 3218
    or-int/lit8 v0, v0, 0x4

    .line 3220
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->pose_:Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$4402(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose;

    .line 3221
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 3222
    or-int/lit8 v0, v0, 0x8

    .line 3224
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->audio_:Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$4502(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio;

    .line 3225
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 3226
    or-int/lit8 v0, v0, 0x10

    .line 3228
    :cond_40
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->text_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$4602(Lcom/google/goggles/GogglesProtos$GogglesRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3229
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 3230
    or-int/lit8 v0, v0, 0x20

    .line 3232
    :cond_4d
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->flow_:Lcom/google/goggles/FlowProtos$FlowData;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$4702(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData;

    .line 3233
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5a

    .line 3234
    or-int/lit8 v0, v0, 0x40

    .line 3236
    :cond_5a
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$4802(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 3237
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_67

    .line 3238
    or-int/lit16 v0, v0, 0x80

    .line 3240
    :cond_67
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$4902(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;)Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    .line 3241
    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_74

    .line 3242
    or-int/lit16 v0, v0, 0x100

    .line 3244
    :cond_74
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$5002(Lcom/google/goggles/GogglesProtos$GogglesRequest;Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 3245
    #setter for: Lcom/google/goggles/GogglesProtos$GogglesRequest;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->access$5102(Lcom/google/goggles/GogglesProtos$GogglesRequest;I)I

    .line 3246
    return-object v2

    :cond_7d
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 3158
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 3159
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3160
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    .line 3161
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3162
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 3163
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3164
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    .line 3165
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->text_:Ljava/lang/Object;

    .line 3167
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3168
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->getDefaultInstance()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    .line 3169
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3170
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 3171
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3172
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->SINGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    .line 3173
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3174
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 3175
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3176
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->clear()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->clear()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->clear()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAudio()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3574
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    .line 3576
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3577
    return-object p0
.end method

.method public clearCaptureType()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3701
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3702
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->SINGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    .line 3704
    return-object p0
.end method

.method public clearFlow()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3653
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->getDefaultInstance()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    .line 3655
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3656
    return-object p0
.end method

.method public clearGogglesConfig()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3445
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 3447
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3448
    return-object p0
.end method

.method public clearImage()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3488
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    .line 3490
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3491
    return-object p0
.end method

.method public clearPose()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3531
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 3533
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3534
    return-object p0
.end method

.method public clearRestricts()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3744
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 3746
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3747
    return-object p0
.end method

.method public clearSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3677
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3678
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 3680
    return-object p0
.end method

.method public clearText()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 2

    .prologue
    .line 3605
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3606
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->text_:Ljava/lang/Object;

    .line 3608
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3

    .prologue
    .line 3180
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->create()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

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
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2

    .prologue
    .line 3543
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    return-object v0
.end method

.method public getCaptureType()Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;
    .registers 2

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesRequest;
    .registers 2

    .prologue
    .line 3184
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3142
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFlow()Lcom/google/goggles/FlowProtos$FlowData;
    .registers 2

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    return-object v0
.end method

.method public getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    return-object v0
.end method

.method public getImage()Lcom/google/goggles/GogglesProtos$Image;
    .registers 2

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    return-object v0
.end method

.method public getPose()Lcom/google/goggles/PoseProtos$Pose;
    .registers 2

    .prologue
    .line 3500
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    return-object v0
.end method

.method public getRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method public getSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    .registers 2

    .prologue
    .line 3665
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->text_:Ljava/lang/Object;

    .line 3587
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3588
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3589
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->text_:Ljava/lang/Object;

    .line 3592
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasAudio()Z
    .registers 3

    .prologue
    .line 3540
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

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

.method public hasCaptureType()Z
    .registers 3

    .prologue
    .line 3686
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFlow()Z
    .registers 3

    .prologue
    .line 3619
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

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

.method public hasGogglesConfig()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3411
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasImage()Z
    .registers 3

    .prologue
    .line 3454
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

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

.method public hasPose()Z
    .registers 3

    .prologue
    .line 3497
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

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

.method public hasRestricts()Z
    .registers 3

    .prologue
    .line 3710
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSource()Z
    .registers 3

    .prologue
    .line 3662
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    .line 3583
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3283
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->hasGogglesConfig()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3284
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3305
    :cond_11
    :goto_11
    return v0

    .line 3289
    :cond_12
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3290
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getImage()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/GogglesProtos$Image;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3295
    :cond_22
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->hasPose()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3296
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getPose()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/PoseProtos$Pose;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3301
    :cond_32
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->extensionsAreInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3305
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeAudio(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3562
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3564
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    .line 3570
    :goto_20
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3571
    return-object p0

    .line 3567
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    goto :goto_20
.end method

.method public mergeFlow(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3641
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->getDefaultInstance()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3643
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    .line 3649
    :goto_20
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3650
    return-object p0

    .line 3646
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    goto :goto_20
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3250
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3279
    :goto_6
    return-object p0

    .line 3251
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasGogglesConfig()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3252
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 3254
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3255
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getImage()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeImage(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 3257
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasPose()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3258
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getPose()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergePose(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 3260
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3261
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getAudio()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeAudio(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 3263
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasText()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3264
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setText(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 3266
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasFlow()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3267
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getFlow()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFlow(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 3269
    :cond_55
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3270
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setSource(Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 3272
    :cond_62
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasCaptureType()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3273
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getCaptureType()Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setCaptureType(Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 3275
    :cond_6f
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->hasRestricts()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 3276
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    .line 3278
    :cond_7c
    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3313
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3314
    sparse-switch v0, :sswitch_data_ee

    .line 3319
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3321
    :sswitch_d
    return-object p0

    .line 3326
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    .line 3327
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3328
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getImage()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    .line 3330
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3331
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setImage(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    goto :goto_0

    .line 3335
    :sswitch_2a
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    .line 3336
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->hasPose()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3337
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getPose()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    .line 3339
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3340
    invoke-virtual {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->buildPartial()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setPose(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    goto :goto_0

    .line 3344
    :sswitch_46
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    .line 3345
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 3346
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getAudio()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    .line 3348
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3349
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setAudio(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    goto :goto_0

    .line 3353
    :sswitch_62
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3354
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 3358
    :sswitch_6f
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    .line 3359
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->hasFlow()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 3360
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getFlow()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->mergeFrom(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    .line 3362
    :cond_80
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3363
    invoke-virtual {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setFlow(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    goto/16 :goto_0

    .line 3367
    :sswitch_8c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3368
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->valueOf(I)Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-result-object v0

    .line 3369
    if-eqz v0, :cond_0

    .line 3370
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3371
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto/16 :goto_0

    .line 3376
    :sswitch_a0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3377
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->valueOf(I)Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    move-result-object v0

    .line 3378
    if-eqz v0, :cond_0

    .line 3379
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3380
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    goto/16 :goto_0

    .line 3385
    :sswitch_b4
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    .line 3386
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->hasRestricts()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 3387
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    .line 3389
    :cond_c5
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3390
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    goto/16 :goto_0

    .line 3394
    :sswitch_d1
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    .line 3395
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->hasGogglesConfig()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 3396
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    .line 3398
    :cond_e2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3399
    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildPartial()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->setGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    goto/16 :goto_0

    .line 3314
    :sswitch_data_ee
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_46
        0x22 -> :sswitch_62
        0x2a -> :sswitch_6f
        0x30 -> :sswitch_8c
        0x38 -> :sswitch_a0
        0x42 -> :sswitch_b4
        0x52 -> :sswitch_d1
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
    .line 3142
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3142
    check-cast p1, Lcom/google/goggles/GogglesProtos$GogglesRequest;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesRequest;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

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
    .line 3142
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3433
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3435
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildPartial()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 3441
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3442
    return-object p0

    .line 3438
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    goto :goto_1f
.end method

.method public mergeImage(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3476
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3478
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    .line 3484
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3485
    return-object p0

    .line 3481
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    goto :goto_1f
.end method

.method public mergePose(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3519
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3521
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->buildPartial()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 3527
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3528
    return-object p0

    .line 3524
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    goto :goto_1f
.end method

.method public mergeRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3732
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3734
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 3740
    :goto_20
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3741
    return-object p0

    .line 3737
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    goto :goto_20
.end method

.method public setAudio(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3556
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->build()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    .line 3558
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3559
    return-object p0
.end method

.method public setAudio(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3546
    if-nez p1, :cond_8

    .line 3547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3549
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->audio_:Lcom/google/goggles/GogglesProtos$Audio;

    .line 3551
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3552
    return-object p0
.end method

.method public setCaptureType(Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3692
    if-nez p1, :cond_8

    .line 3693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3695
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3696
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->captureType_:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    .line 3698
    return-object p0
.end method

.method public setFlow(Lcom/google/goggles/FlowProtos$FlowData$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3635
    invoke-virtual {p1}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->build()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    .line 3637
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3638
    return-object p0
.end method

.method public setFlow(Lcom/google/goggles/FlowProtos$FlowData;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3625
    if-nez p1, :cond_8

    .line 3626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3628
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->flow_:Lcom/google/goggles/FlowProtos$FlowData;

    .line 3630
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3631
    return-object p0
.end method

.method public setGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3427
    invoke-virtual {p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->build()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 3429
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3430
    return-object p0
.end method

.method public setGogglesConfig(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3417
    if-nez p1, :cond_8

    .line 3418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3420
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 3422
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3423
    return-object p0
.end method

.method public setImage(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3470
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->build()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    .line 3472
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3473
    return-object p0
.end method

.method public setImage(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3460
    if-nez p1, :cond_8

    .line 3461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3463
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->image_:Lcom/google/goggles/GogglesProtos$Image;

    .line 3465
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3466
    return-object p0
.end method

.method public setPose(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3513
    invoke-virtual {p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->build()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 3515
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3516
    return-object p0
.end method

.method public setPose(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3503
    if-nez p1, :cond_8

    .line 3504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3506
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->pose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 3508
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3509
    return-object p0
.end method

.method public setRestricts(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3726
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->build()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 3728
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3729
    return-object p0
.end method

.method public setRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3716
    if-nez p1, :cond_8

    .line 3717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3719
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 3721
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3722
    return-object p0
.end method

.method public setSource(Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3668
    if-nez p1, :cond_8

    .line 3669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3671
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3672
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->source_:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 3674
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3596
    if-nez p1, :cond_8

    .line 3597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3599
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3600
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->text_:Ljava/lang/Object;

    .line 3602
    return-object p0
.end method

.method setText(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 3611
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->bitField0_:I

    .line 3612
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->text_:Ljava/lang/Object;

    .line 3614
    return-void
.end method
