.class public final Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$GogglesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$GogglesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
        "Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$GogglesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

.field private puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation
.end field

.field private suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4017
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 4193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    .line 4282
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 4325
    invoke-static {}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;->getDefaultInstance()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    .line 4368
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 4018
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 4019
    return-void
.end method

.method static synthetic access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4013
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 1

    .prologue
    .line 4013
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->create()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4058
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    .line 4059
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4060
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4063
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 1

    .prologue
    .line 4024
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResultsIsMutable()V
    .registers 3

    .prologue
    .line 4196
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 4197
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    .line 4198
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4200
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4022
    return-void
.end method


# virtual methods
.method public addAllResults(Ljava/lang/Iterable;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;)",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 4263
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->ensureResultsIsMutable()V

    .line 4264
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4266
    return-object p0
.end method

.method public addResults(ILcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4256
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->ensureResultsIsMutable()V

    .line 4257
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4259
    return-object p0
.end method

.method public addResults(ILcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4239
    if-nez p2, :cond_8

    .line 4240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4242
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->ensureResultsIsMutable()V

    .line 4243
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4245
    return-object p0
.end method

.method public addResults(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4249
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->ensureResultsIsMutable()V

    .line 4250
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4252
    return-object p0
.end method

.method public addResults(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4229
    if-nez p1, :cond_8

    .line 4230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4232
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->ensureResultsIsMutable()V

    .line 4233
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4235
    return-object p0
.end method

.method public build()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 3

    .prologue
    .line 4049
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    .line 4050
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4051
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4053
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 4067
    new-instance v2, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;-><init>(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;Lcom/google/goggles/GogglesProtos$1;)V

    .line 4068
    iget v3, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4069
    const/4 v1, 0x0

    .line 4070
    iget v4, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_1e

    .line 4071
    iget-object v4, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    .line 4072
    iget v4, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4074
    :cond_1e
    iget-object v4, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->access$5502(Lcom/google/goggles/GogglesProtos$GogglesResponse;Ljava/util/List;)Ljava/util/List;

    .line 4075
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4a

    .line 4078
    :goto_28
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesResponse;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->access$5602(Lcom/google/goggles/GogglesProtos$GogglesResponse;Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose;

    .line 4079
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_34

    .line 4080
    or-int/lit8 v0, v0, 0x2

    .line 4082
    :cond_34
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesResponse;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->access$5702(Lcom/google/goggles/GogglesProtos$GogglesResponse;Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;)Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    .line 4083
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_41

    .line 4084
    or-int/lit8 v0, v0, 0x4

    .line 4086
    :cond_41
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    #setter for: Lcom/google/goggles/GogglesProtos$GogglesResponse;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->access$5802(Lcom/google/goggles/GogglesProtos$GogglesResponse;Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 4087
    #setter for: Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->access$5902(Lcom/google/goggles/GogglesProtos$GogglesResponse;I)I

    .line 4088
    return-object v2

    :cond_4a
    move v0, v1

    goto :goto_28
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 2

    .prologue
    .line 4028
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 4029
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    .line 4030
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4031
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 4032
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4033
    invoke-static {}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;->getDefaultInstance()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    .line 4034
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4035
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 4036
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4037
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->clear()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->clear()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->clear()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCorrectedPose()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 2

    .prologue
    .line 4318
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 4320
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4321
    return-object p0
.end method

.method public clearPuggleDebugging()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 2

    .prologue
    .line 4361
    invoke-static {}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;->getDefaultInstance()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    .line 4363
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4364
    return-object p0
.end method

.method public clearResults()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 2

    .prologue
    .line 4269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    .line 4270
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4272
    return-object p0
.end method

.method public clearSuggestedRestricts()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 2

    .prologue
    .line 4404
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 4406
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4407
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3

    .prologue
    .line 4041
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->create()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

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
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->clone()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCorrectedPose()Lcom/google/goggles/PoseProtos$Pose;
    .registers 2

    .prologue
    .line 4287
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2

    .prologue
    .line 4045
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4013
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPuggleDebugging()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;
    .registers 2

    .prologue
    .line 4330
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    return-object v0
.end method

.method public getResults(I)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter

    .prologue
    .line 4209
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result;

    return-object v0
.end method

.method public getResultsCount()I
    .registers 2

    .prologue
    .line 4206
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4203
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method public hasCorrectedPose()Z
    .registers 3

    .prologue
    .line 4284
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

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

.method public hasPuggleDebugging()Z
    .registers 3

    .prologue
    .line 4327
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

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

.method public hasSuggestedRestricts()Z
    .registers 3

    .prologue
    .line 4370
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4117
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->getResultsCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 4118
    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->getResults(I)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/ResultProtos$Result;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 4133
    :cond_12
    :goto_12
    return v1

    .line 4117
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4123
    :cond_16
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->hasCorrectedPose()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4124
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->getCorrectedPose()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/PoseProtos$Pose;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4129
    :cond_26
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4133
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeCorrectedPose(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4306
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 4308
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->buildPartial()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 4314
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4315
    return-object p0

    .line 4311
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4092
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4113
    :goto_6
    return-object p0

    .line 4093
    :cond_7
    #getter for: Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->access$5500(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4094
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 4095
    #getter for: Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->access$5500(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    .line 4096
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4103
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->hasCorrectedPose()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4104
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getCorrectedPose()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeCorrectedPose(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    .line 4106
    :cond_32
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->hasPuggleDebugging()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 4107
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getPuggleDebugging()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergePuggleDebugging(Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    .line 4109
    :cond_3f
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->hasSuggestedRestricts()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 4110
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getSuggestedRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeSuggestedRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    .line 4112
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6

    .line 4098
    :cond_50
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->ensureResultsIsMutable()V

    .line 4099
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    #getter for: Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->access$5500(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4141
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4142
    sparse-switch v0, :sswitch_data_72

    .line 4147
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4149
    :sswitch_d
    return-object p0

    .line 4154
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    .line 4155
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4156
    invoke-virtual {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->buildPartial()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->addResults(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    goto :goto_0

    .line 4160
    :sswitch_1d
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    .line 4161
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->hasCorrectedPose()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4162
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->getCorrectedPose()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    .line 4164
    :cond_2e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4165
    invoke-virtual {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->buildPartial()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->setCorrectedPose(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    goto :goto_0

    .line 4169
    :sswitch_39
    invoke-static {}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;->newBuilder()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;

    move-result-object v0

    .line 4170
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->hasPuggleDebugging()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 4171
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->getPuggleDebugging()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;->mergeFrom(Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;)Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;

    .line 4173
    :cond_4a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4174
    invoke-virtual {v0}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;->buildPartial()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->setPuggleDebugging(Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    goto :goto_0

    .line 4178
    :sswitch_55
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    .line 4179
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->hasSuggestedRestricts()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 4180
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->getSuggestedRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    .line 4182
    :cond_66
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4183
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->setSuggestedRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    goto :goto_0

    .line 4142
    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x1a -> :sswitch_1d
        0x22 -> :sswitch_39
        0x2a -> :sswitch_55
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
    .line 4013
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4013
    check-cast p1, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

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
    .line 4013
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePuggleDebugging(Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4349
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    invoke-static {}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;->getDefaultInstance()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 4351
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    invoke-static {v0}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;->newBuilder(Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;)Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;->mergeFrom(Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;)Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;->buildPartial()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    .line 4357
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4358
    return-object p0

    .line 4354
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    goto :goto_1f
.end method

.method public mergeSuggestedRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4392
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4394
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 4400
    :goto_20
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4401
    return-object p0

    .line 4397
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    goto :goto_20
.end method

.method public removeResults(I)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4275
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->ensureResultsIsMutable()V

    .line 4276
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4278
    return-object p0
.end method

.method public setCorrectedPose(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4300
    invoke-virtual {p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->build()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 4302
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4303
    return-object p0
.end method

.method public setCorrectedPose(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4290
    if-nez p1, :cond_8

    .line 4291
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4293
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 4295
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4296
    return-object p0
.end method

.method public setPuggleDebugging(Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4343
    invoke-virtual {p1}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging$Builder;->build()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    .line 4345
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4346
    return-object p0
.end method

.method public setPuggleDebugging(Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4333
    if-nez p1, :cond_8

    .line 4334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4336
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    .line 4338
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4339
    return-object p0
.end method

.method public setResults(ILcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4223
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->ensureResultsIsMutable()V

    .line 4224
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4226
    return-object p0
.end method

.method public setResults(ILcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4213
    if-nez p2, :cond_8

    .line 4214
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4216
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->ensureResultsIsMutable()V

    .line 4217
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4219
    return-object p0
.end method

.method public setSuggestedRestricts(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4386
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->build()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 4388
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4389
    return-object p0
.end method

.method public setSuggestedRestricts(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4376
    if-nez p1, :cond_8

    .line 4377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4379
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 4381
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->bitField0_:I

    .line 4382
    return-object p0
.end method
