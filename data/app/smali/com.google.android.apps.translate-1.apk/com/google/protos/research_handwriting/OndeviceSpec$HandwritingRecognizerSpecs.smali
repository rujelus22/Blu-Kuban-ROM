.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandwritingRecognizerSpecs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    }
.end annotation


# static fields
.field public static final SPEC_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private spec_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 374
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;-><init>(Z)V

    sput-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    .line 375
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->initFields()V

    .line 376
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 62
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->memoizedIsInitialized:B

    .line 79
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->memoizedSerializedSize:I

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 62
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->memoizedIsInitialized:B

    .line 79
    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->memoizedSerializedSize:I

    .line 27
    return-void
.end method

.method static synthetic access$300(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    .line 61
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 1

    .prologue
    .line 167
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$100()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 2
    .parameter

    .prologue
    .line 170
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 138
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    .line 140
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 149
    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    .line 151
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    #calls: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->defaultInstance:Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 81
    iget v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->memoizedSerializedSize:I

    .line 82
    const/4 v1, -0x1

    if-eq v2, v1, :cond_7

    .line 90
    :goto_6
    return v2

    :cond_7
    move v1, v0

    move v2, v0

    .line 85
    :goto_9
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 86
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 89
    :cond_23
    iput v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public getSpec(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    return-object v0
.end method

.method public getSpecCount()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpecList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    return-object v0
.end method

.method public getSpecOrBuilder(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecOrBuilder;

    return-object v0
.end method

.method public getSpecOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-byte v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->memoizedIsInitialized:B

    .line 65
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 68
    :goto_8
    return v0

    .line 65
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 67
    :cond_b
    iput-byte v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 2

    .prologue
    .line 168
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 2

    .prologue
    .line 172
    invoke-static {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->newBuilder(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

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
    .line 97
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
    .line 73
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->getSerializedSize()I

    .line 74
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 75
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 77
    :cond_1d
    return-void
.end method
