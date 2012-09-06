.class public final Lcom/google/goggles/FlowProtos$FrameChange;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FlowProtos.java"

# interfaces
.implements Lcom/google/goggles/FlowProtos$FrameChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FlowProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameChange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    }
.end annotation


# static fields
.field public static final DELTAS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/FlowProtos$FrameChange;

.field private static final serialVersionUID:J


# instance fields
.field private deltasMemoizedSerializedSize:I

.field private deltas_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 342
    new-instance v0, Lcom/google/goggles/FlowProtos$FrameChange;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/FlowProtos$FrameChange;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/FlowProtos$FrameChange;->defaultInstance:Lcom/google/goggles/FlowProtos$FrameChange;

    .line 343
    sget-object v0, Lcom/google/goggles/FlowProtos$FrameChange;->defaultInstance:Lcom/google/goggles/FlowProtos$FrameChange;

    invoke-direct {v0}, Lcom/google/goggles/FlowProtos$FrameChange;->initFields()V

    .line 344
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 50
    iput v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltasMemoizedSerializedSize:I

    .line 55
    iput-byte v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->memoizedIsInitialized:B

    .line 76
    iput v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/FlowProtos$FrameChange$Builder;Lcom/google/goggles/FlowProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/goggles/FlowProtos$FrameChange;-><init>(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 50
    iput v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltasMemoizedSerializedSize:I

    .line 55
    iput-byte v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->memoizedIsInitialized:B

    .line 76
    iput v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->memoizedSerializedSize:I

    .line 26
    return-void
.end method

.method static synthetic access$300(Lcom/google/goggles/FlowProtos$FrameChange;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/goggles/FlowProtos$FrameChange;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/goggles/FlowProtos$FrameChange;->defaultInstance:Lcom/google/goggles/FlowProtos$FrameChange;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 1

    .prologue
    .line 171
    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->create()Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$100()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 2
    .parameter

    .prologue
    .line 174
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Lcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 142
    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    .line 144
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 153
    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    .line 155
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    #calls: Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lcom/google/goggles/FlowProtos$FrameChange;->defaultInstance:Lcom/google/goggles/FlowProtos$FrameChange;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange;->getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public getDeltas(I)F
    .registers 3
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getDeltasCount()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeltasList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 78
    iget v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->memoizedSerializedSize:I

    .line 79
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 94
    :goto_5
    return v0

    .line 81
    :cond_6
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange;->getDeltasList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 85
    add-int/2addr v0, v1

    .line 86
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange;->getDeltasList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 91
    :cond_23
    iput v1, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltasMemoizedSerializedSize:I

    .line 93
    iput v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->memoizedSerializedSize:I

    goto :goto_5
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 57
    iget-byte v1, p0, Lcom/google/goggles/FlowProtos$FrameChange;->memoizedIsInitialized:B

    .line 58
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 61
    :goto_8
    return v0

    .line 58
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 60
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 2

    .prologue
    .line 172
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilderForType()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 2

    .prologue
    .line 176
    invoke-static {p0}, Lcom/google/goggles/FlowProtos$FrameChange;->newBuilder(Lcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange;->toBuilder()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

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
    .line 101
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange;->getSerializedSize()I

    .line 67
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange;->getDeltasList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 68
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 69
    iget v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltasMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 71
    :cond_17
    const/4 v0, 0x0

    move v1, v0

    :goto_19
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    .line 72
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 74
    :cond_34
    return-void
.end method
