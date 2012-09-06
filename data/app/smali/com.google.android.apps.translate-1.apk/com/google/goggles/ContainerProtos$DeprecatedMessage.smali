.class public final Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContainerProtos.java"

# interfaces
.implements Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ContainerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeprecatedMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 225
    new-instance v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->defaultInstance:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    .line 226
    sget-object v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->defaultInstance:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-direct {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->initFields()V

    .line 227
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34
    iput-byte v0, p0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->memoizedIsInitialized:B

    .line 48
    iput v0, p0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->memoizedSerializedSize:I

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;Lcom/google/goggles/ContainerProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;-><init>(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34
    iput-byte v0, p0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->memoizedIsInitialized:B

    .line 48
    iput v0, p0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->memoizedSerializedSize:I

    .line 21
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->defaultInstance:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 1

    .prologue
    .line 132
    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->create()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$100()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 2
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 103
    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    .line 105
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 114
    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    .line 116
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    #calls: Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->defaultInstance:Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 3

    .prologue
    .line 50
    iget v0, p0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->memoizedSerializedSize:I

    .line 51
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 55
    :goto_5
    return v0

    .line 53
    :cond_6
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->memoizedSerializedSize:I

    goto :goto_5
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 36
    iget-byte v1, p0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->memoizedIsInitialized:B

    .line 37
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 40
    :goto_8
    return v0

    .line 37
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 39
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 2

    .prologue
    .line 133
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilderForType()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 2

    .prologue
    .line 137
    invoke-static {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->newBuilder(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->toBuilder()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

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
    .line 62
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
    .line 45
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getSerializedSize()I

    .line 46
    return-void
.end method
