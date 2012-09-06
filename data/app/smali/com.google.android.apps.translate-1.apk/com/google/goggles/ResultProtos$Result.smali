.class public final Lcom/google/goggles/ResultProtos$Result;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "ResultProtos.java"

# interfaces
.implements Lcom/google/goggles/ResultProtos$ResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ResultProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ResultProtos$Result$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/goggles/ResultProtos$Result;",
        ">;",
        "Lcom/google/goggles/ResultProtos$ResultOrBuilder;"
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/ResultProtos$Result;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 432
    new-instance v0, Lcom/google/goggles/ResultProtos$Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ResultProtos$Result;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ResultProtos$Result;->defaultInstance:Lcom/google/goggles/ResultProtos$Result;

    .line 433
    sget-object v0, Lcom/google/goggles/ResultProtos$Result;->defaultInstance:Lcom/google/goggles/ResultProtos$Result;

    invoke-direct {v0}, Lcom/google/goggles/ResultProtos$Result;->initFields()V

    .line 434
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ResultProtos$Result$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 110
    iput-byte v0, p0, Lcom/google/goggles/ResultProtos$Result;->memoizedIsInitialized:B

    .line 138
    iput v0, p0, Lcom/google/goggles/ResultProtos$Result;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ResultProtos$Result$Builder;Lcom/google/goggles/ResultProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/goggles/ResultProtos$Result;-><init>(Lcom/google/goggles/ResultProtos$Result$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 110
    iput-byte v0, p0, Lcom/google/goggles/ResultProtos$Result;->memoizedIsInitialized:B

    .line 138
    iput v0, p0, Lcom/google/goggles/ResultProtos$Result;->memoizedSerializedSize:I

    .line 30
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/ResultProtos$Result;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/goggles/ResultProtos$Result;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/ResultProtos$Result;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/goggles/ResultProtos$Result;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/ResultProtos$Result;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/google/goggles/ResultProtos$Result;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ResultProtos$Result;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/goggles/ResultProtos$Result;->defaultInstance:Lcom/google/goggles/ResultProtos$Result;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/goggles/ResultProtos$Result;->name_:Ljava/lang/Object;

    .line 64
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 65
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result;->name_:Ljava/lang/Object;

    .line 70
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/goggles/ResultProtos$Result;->type_:Ljava/lang/Object;

    .line 96
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 97
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result;->type_:Ljava/lang/Object;

    .line 102
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result;->name_:Ljava/lang/Object;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result;->type_:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 1

    .prologue
    .line 231
    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->create()Lcom/google/goggles/ResultProtos$Result$Builder;
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$100()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 2
    .parameter

    .prologue
    .line 234
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 202
    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    .line 204
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ResultProtos$Result;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 213
    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    .line 215
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ResultProtos$Result;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result$Builder;

    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result$Builder;

    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ResultProtos$Result;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result$Builder;

    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ResultProtos$Result;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result$Builder;

    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result$Builder;

    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ResultProtos$Result;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result$Builder;

    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result$Builder;

    #calls: Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/ResultProtos$Result;
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/google/goggles/ResultProtos$Result;->defaultInstance:Lcom/google/goggles/ResultProtos$Result;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result;->getDefaultInstanceForType()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/goggles/ResultProtos$Result;->name_:Ljava/lang/Object;

    .line 50
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 51
    check-cast v0, Ljava/lang/String;

    .line 59
    :goto_8
    return-object v0

    .line 53
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 55
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 57
    iput-object v1, p0, Lcom/google/goggles/ResultProtos$Result;->name_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 59
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 140
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result;->memoizedSerializedSize:I

    .line 141
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 154
    :goto_7
    return v0

    .line 143
    :cond_8
    const/4 v0, 0x0

    .line 144
    iget v1, p0, Lcom/google/goggles/ResultProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_18

    .line 145
    invoke-direct {p0}, Lcom/google/goggles/ResultProtos$Result;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_18
    iget v1, p0, Lcom/google/goggles/ResultProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 149
    invoke-direct {p0}, Lcom/google/goggles/ResultProtos$Result;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_27
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    iput v0, p0, Lcom/google/goggles/ResultProtos$Result;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/goggles/ResultProtos$Result;->type_:Ljava/lang/Object;

    .line 82
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 91
    :goto_8
    return-object v0

    .line 85
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 87
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 89
    iput-object v1, p0, Lcom/google/goggles/ResultProtos$Result;->type_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 91
    goto :goto_8
.end method

.method public hasName()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 46
    iget v1, p0, Lcom/google/goggles/ResultProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    iget-byte v2, p0, Lcom/google/goggles/ResultProtos$Result;->memoizedIsInitialized:B

    .line 113
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 120
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 113
    goto :goto_9

    .line 115
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result;->extensionsAreInitialized()Z

    move-result v2

    if-nez v2, :cond_16

    .line 116
    iput-byte v1, p0, Lcom/google/goggles/ResultProtos$Result;->memoizedIsInitialized:B

    move v0, v1

    .line 117
    goto :goto_9

    .line 119
    :cond_16
    iput-byte v0, p0, Lcom/google/goggles/ResultProtos$Result;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 2

    .prologue
    .line 232
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result;->newBuilderForType()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 2

    .prologue
    .line 236
    invoke-static {p0}, Lcom/google/goggles/ResultProtos$Result;->newBuilder(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result;->toBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

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
    .line 161
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result;->getSerializedSize()I

    .line 127
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 129
    iget v1, p0, Lcom/google/goggles/ResultProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_16

    .line 130
    invoke-direct {p0}, Lcom/google/goggles/ResultProtos$Result;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 132
    :cond_16
    iget v1, p0, Lcom/google/goggles/ResultProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_23

    .line 133
    invoke-direct {p0}, Lcom/google/goggles/ResultProtos$Result;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 135
    :cond_23
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 136
    return-void
.end method
