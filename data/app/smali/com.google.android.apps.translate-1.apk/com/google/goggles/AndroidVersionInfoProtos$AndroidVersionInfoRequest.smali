.class public final Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AndroidVersionInfoProtos.java"

# interfaces
.implements Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AndroidVersionInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidVersionInfoRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;
    }
.end annotation


# static fields
.field public static final VERSION_CODE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private versionCode_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 287
    new-instance v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    .line 288
    sget-object v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    invoke-direct {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->initFields()V

    .line 289
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 50
    iput-byte v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->memoizedIsInitialized:B

    .line 67
    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;Lcom/google/goggles/AndroidVersionInfoProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;-><init>(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 50
    iput-byte v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->memoizedIsInitialized:B

    .line 67
    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->versionCode_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->versionCode_:I

    .line 49
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;
    .registers 1

    .prologue
    .line 155
    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->create()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$100()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;
    .registers 2
    .parameter

    .prologue
    .line 158
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 126
    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    .line 128
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 137
    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    .line 139
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;->access$000(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->getDefaultInstanceForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 69
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->memoizedSerializedSize:I

    .line 70
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 78
    :goto_6
    return v0

    .line 72
    :cond_7
    const/4 v0, 0x0

    .line 73
    iget v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 74
    iget v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->versionCode_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_15
    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->versionCode_:I

    return v0
.end method

.method public hasVersionCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41
    iget v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-byte v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->memoizedIsInitialized:B

    .line 53
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 56
    :goto_8
    return v0

    .line 53
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 55
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;
    .registers 2

    .prologue
    .line 156
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilderForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;
    .registers 2

    .prologue
    .line 160
    invoke-static {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->newBuilder(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->toBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest$Builder;

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
    .line 85
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
    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->getSerializedSize()I

    .line 62
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 63
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoRequest;->versionCode_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 65
    :cond_f
    return-void
.end method
