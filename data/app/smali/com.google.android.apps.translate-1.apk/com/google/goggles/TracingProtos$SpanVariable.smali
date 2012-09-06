.class public final Lcom/google/goggles/TracingProtos$SpanVariable;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$SpanVariableOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanVariable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/TracingProtos$SpanVariable$Builder;,
        Lcom/google/goggles/TracingProtos$SpanVariable$Type;
    }
.end annotation


# static fields
.field public static final DURATION_MS_FIELD_NUMBER:I = 0x3

.field public static final START_MS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/TracingProtos$SpanVariable;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private durationMs_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private startMs_:I

.field private type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 513
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/TracingProtos$SpanVariable;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable;->defaultInstance:Lcom/google/goggles/TracingProtos$SpanVariable;

    .line 514
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable;->defaultInstance:Lcom/google/goggles/TracingProtos$SpanVariable;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$SpanVariable;->initFields()V

    .line 515
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 169
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedIsInitialized:B

    .line 200
    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedSerializedSize:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;Lcom/google/goggles/TracingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable;-><init>(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 169
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedIsInitialized:B

    .line 200
    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/TracingProtos$SpanVariable;Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Type;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/TracingProtos$SpanVariable;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->startMs_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/goggles/TracingProtos$SpanVariable;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->durationMs_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/goggles/TracingProtos$SpanVariable;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable;->defaultInstance:Lcom/google/goggles/TracingProtos$SpanVariable;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 165
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 166
    iput v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->startMs_:I

    .line 167
    iput v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->durationMs_:I

    .line 168
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 1

    .prologue
    .line 296
    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->create()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$100()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 2
    .parameter

    .prologue
    .line 299
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 267
    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    .line 269
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 278
    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    .line 280
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable;->defaultInstance:Lcom/google/goggles/TracingProtos$SpanVariable;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->durationMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 202
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedSerializedSize:I

    .line 203
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 219
    :goto_7
    return v0

    .line 205
    :cond_8
    const/4 v0, 0x0

    .line 206
    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1a

    .line 207
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v1}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_1a
    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 211
    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->startMs_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    :cond_27
    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    .line 215
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->durationMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_36
    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getStartMs()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->startMs_:I

    return v0
.end method

.method public getType()Lcom/google/goggles/TracingProtos$SpanVariable$Type;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    return-object v0
.end method

.method public hasDurationMs()Z
    .registers 3

    .prologue
    .line 158
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

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

.method public hasStartMs()Z
    .registers 3

    .prologue
    .line 148
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 138
    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    iget-byte v2, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedIsInitialized:B

    .line 172
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 183
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 172
    goto :goto_9

    .line 174
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable;->hasType()Z

    move-result v2

    if-nez v2, :cond_16

    .line 175
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedIsInitialized:B

    move v0, v1

    .line 176
    goto :goto_9

    .line 178
    :cond_16
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable;->hasStartMs()Z

    move-result v2

    if-nez v2, :cond_20

    .line 179
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedIsInitialized:B

    move v0, v1

    .line 180
    goto :goto_9

    .line 182
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 2

    .prologue
    .line 297
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilderForType()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 2

    .prologue
    .line 301
    invoke-static {p0}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder(Lcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable;->toBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

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
    .line 226
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable;->getSerializedSize()I

    .line 189
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 190
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 192
    :cond_14
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 193
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->startMs_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 195
    :cond_1f
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 196
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable;->durationMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 198
    :cond_2c
    return-void
.end method
