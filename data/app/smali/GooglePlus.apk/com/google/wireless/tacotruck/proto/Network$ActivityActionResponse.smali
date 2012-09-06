.class public final Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityActionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11387
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    .line 11388
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->initFields()V

    .line 11389
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11181
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11196
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedIsInitialized:B

    .line 11210
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedSerializedSize:I

    .line 11182
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11176
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11183
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11196
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedIsInitialized:B

    .line 11210
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedSerializedSize:I

    .line 11183
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 1

    .prologue
    .line 11187
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 11195
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 1

    .prologue
    .line 11294
    #calls: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->access$14800()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 11297
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11230
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->access$14700(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 2

    .prologue
    .line 11191
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 11212
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedSerializedSize:I

    .line 11213
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 11217
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 11215
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 11216
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 11217
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 11198
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedIsInitialized:B

    .line 11199
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 11202
    :goto_8
    return v1

    .line 11199
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 11201
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 2

    .prologue
    .line 11295
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 2

    .prologue
    .line 11299
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

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
    .line 11224
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11207
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->getSerializedSize()I

    .line 11208
    return-void
.end method
