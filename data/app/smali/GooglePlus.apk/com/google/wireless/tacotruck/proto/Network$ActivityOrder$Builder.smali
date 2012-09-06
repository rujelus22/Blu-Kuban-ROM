.class public final Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ActivityOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityOrderOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

.field private bitField0_:I

.field private lastModifiedUsec_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7291
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7425
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activityId_:Ljava/lang/Object;

    .line 7482
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 7292
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->maybeForceBuilderInitialization()V

    .line 7293
    return-void
.end method

.method static synthetic access$9000()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 1

    .prologue
    .line 7286
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 1

    .prologue
    .line 7298
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7296
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    .registers 3

    .prologue
    .line 7321
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v0

    .line 7322
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7323
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7325
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    .registers 6

    .prologue
    .line 7339
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 7340
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7341
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7342
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7343
    or-int/lit8 v2, v2, 0x1

    .line 7345
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->access$9202(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7346
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 7347
    or-int/lit8 v2, v2, 0x2

    .line 7349
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->lastModifiedUsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->lastModifiedUsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->access$9302(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;J)J

    .line 7350
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 7351
    or-int/lit8 v2, v2, 0x4

    .line 7353
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->access$9402(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 7354
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->access$9502(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;I)I

    .line 7355
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 3

    .prologue
    .line 7302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activityId_:Ljava/lang/Object;

    .line 7304
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7305
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->lastModifiedUsec_:J

    .line 7306
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7307
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 7308
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7309
    return-object p0
.end method

.method public clearActivity()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 2

    .prologue
    .line 7518
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 7520
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7521
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 2

    .prologue
    .line 7449
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7450
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activityId_:Ljava/lang/Object;

    .line 7452
    return-object p0
.end method

.method public clearLastModifiedUsec()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 3

    .prologue
    .line 7475
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7476
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->lastModifiedUsec_:J

    .line 7478
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 3

    .prologue
    .line 7313
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

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
    .line 7286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 2

    .prologue
    .line 7487
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7430
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activityId_:Ljava/lang/Object;

    .line 7431
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7432
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7433
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activityId_:Ljava/lang/Object;

    .line 7436
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
    .registers 2

    .prologue
    .line 7317
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedUsec()J
    .registers 3

    .prologue
    .line 7466
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->lastModifiedUsec_:J

    return-wide v0
.end method

.method public hasActivity()Z
    .registers 3

    .prologue
    .line 7484
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

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

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7427
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLastModifiedUsec()Z
    .registers 3

    .prologue
    .line 7463
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 7373
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->hasActivity()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7374
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->getActivity()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 7376
    const/4 v0, 0x0

    .line 7379
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7506
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 7508
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 7514
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7515
    return-object p0

    .line 7511
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    goto :goto_1f
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7286
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 7286
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7286
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7387
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7388
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 7393
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7395
    :sswitch_d
    return-object p0

    .line 7400
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7401
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 7405
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7406
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->lastModifiedUsec_:J

    goto :goto_0

    .line 7410
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    .line 7411
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->hasActivity()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 7412
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->getActivity()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    .line 7414
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7415
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->setActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    goto :goto_0

    .line 7388
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 7359
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7369
    :cond_6
    :goto_6
    return-object p0

    .line 7360
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7361
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    .line 7363
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->hasLastModifiedUsec()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7364
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getLastModifiedUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->setLastModifiedUsec(J)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    .line 7366
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->hasActivity()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7367
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;->getActivity()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->mergeActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;

    goto :goto_6
.end method

.method public setActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 7500
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 7502
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7503
    return-object p0
.end method

.method public setActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7490
    if-nez p1, :cond_8

    .line 7491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7493
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activity_:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 7495
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7496
    return-object p0
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7440
    if-nez p1, :cond_8

    .line 7441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7443
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7444
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->activityId_:Ljava/lang/Object;

    .line 7446
    return-object p0
.end method

.method public setLastModifiedUsec(J)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7469
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->bitField0_:I

    .line 7470
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder$Builder;->lastModifiedUsec_:J

    .line 7472
    return-object p0
.end method
