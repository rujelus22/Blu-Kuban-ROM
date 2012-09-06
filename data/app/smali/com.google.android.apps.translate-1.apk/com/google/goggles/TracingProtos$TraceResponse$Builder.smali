.class public final Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$TraceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$TraceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/TracingProtos$TraceResponse;",
        "Lcom/google/goggles/TracingProtos$TraceResponse$Builder;",
        ">;",
        "Lcom/google/goggles/TracingProtos$TraceResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3377
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3378
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->maybeForceBuilderInitialization()V

    .line 3379
    return-void
.end method

.method static synthetic access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3372
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 1

    .prologue
    .line 3372
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->create()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3410
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    .line 3411
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3412
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3415
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 1

    .prologue
    .line 3384
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3382
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3

    .prologue
    .line 3401
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    .line 3402
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3403
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3405
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->build()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3

    .prologue
    .line 3419
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/TracingProtos$TraceResponse;-><init>(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;Lcom/google/goggles/TracingProtos$1;)V

    .line 3420
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 1

    .prologue
    .line 3388
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3389
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->clear()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->clear()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 3

    .prologue
    .line 3393
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->create()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

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
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->clone()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 2

    .prologue
    .line 3397
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3429
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3424
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 3425
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3437
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3438
    packed-switch v0, :pswitch_data_e

    .line 3443
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3445
    :pswitch_d
    return-object p0

    .line 3438
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
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
    .line 3372
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3372
    check-cast p1, Lcom/google/goggles/TracingProtos$TraceResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

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
    .line 3372
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method
