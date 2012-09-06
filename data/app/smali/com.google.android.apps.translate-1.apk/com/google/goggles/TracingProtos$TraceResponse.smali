.class public final Lcom/google/goggles/TracingProtos$TraceResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$TraceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TraceResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/goggles/TracingProtos$TraceResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3458
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/TracingProtos$TraceResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/TracingProtos$TraceResponse;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceResponse;

    .line 3459
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceResponse;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceResponse;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$TraceResponse;->initFields()V

    .line 3460
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3252
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3267
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$TraceResponse;->memoizedIsInitialized:B

    .line 3281
    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceResponse;->memoizedSerializedSize:I

    .line 3253
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;Lcom/google/goggles/TracingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3247
    invoke-direct {p0, p1}, Lcom/google/goggles/TracingProtos$TraceResponse;-><init>(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3254
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3267
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$TraceResponse;->memoizedIsInitialized:B

    .line 3281
    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceResponse;->memoizedSerializedSize:I

    .line 3254
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 1

    .prologue
    .line 3258
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceResponse;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 3266
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 1

    .prologue
    .line 3365
    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->create()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4300()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 3368
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3334
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    .line 3335
    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3336
    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    .line 3338
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3345
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    .line 3346
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3347
    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    .line 3349
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3301
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3307
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3355
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3361
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3323
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3329
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3312
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3318
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceResponse$Builder;->access$4200(Lcom/google/goggles/TracingProtos$TraceResponse$Builder;)Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceResponse;
    .registers 2

    .prologue
    .line 3262
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceResponse;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3247
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 3

    .prologue
    .line 3283
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceResponse;->memoizedSerializedSize:I

    .line 3284
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 3288
    :goto_5
    return v0

    .line 3286
    :cond_6
    const/4 v0, 0x0

    .line 3287
    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceResponse;->memoizedSerializedSize:I

    goto :goto_5
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3269
    iget-byte v1, p0, Lcom/google/goggles/TracingProtos$TraceResponse;->memoizedIsInitialized:B

    .line 3270
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 3273
    :goto_8
    return v0

    .line 3270
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 3272
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$TraceResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 2

    .prologue
    .line 3366
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3247
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilderForType()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;
    .registers 2

    .prologue
    .line 3370
    invoke-static {p0}, Lcom/google/goggles/TracingProtos$TraceResponse;->newBuilder(Lcom/google/goggles/TracingProtos$TraceResponse;)Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3247
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse;->toBuilder()Lcom/google/goggles/TracingProtos$TraceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3278
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceResponse;->getSerializedSize()I

    .line 3279
    return-void
.end method
