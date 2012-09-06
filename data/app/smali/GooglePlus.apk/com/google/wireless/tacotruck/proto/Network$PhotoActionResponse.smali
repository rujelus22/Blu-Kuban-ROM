.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoActionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42013
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    .line 42014
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->initFields()V

    .line 42015
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 41807
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 41822
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->memoizedIsInitialized:B

    .line 41836
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->memoizedSerializedSize:I

    .line 41808
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41802
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 41809
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41822
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->memoizedIsInitialized:B

    .line 41836
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->memoizedSerializedSize:I

    .line 41809
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    .registers 1

    .prologue
    .line 41813
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 41821
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 1

    .prologue
    .line 41920
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->access$58000()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 41923
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41856
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;->access$57900(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41802
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;
    .registers 2

    .prologue
    .line 41817
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 41838
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->memoizedSerializedSize:I

    .line 41839
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 41843
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 41841
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 41842
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 41843
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 41824
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->memoizedIsInitialized:B

    .line 41825
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 41828
    :goto_8
    return v1

    .line 41825
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 41827
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41802
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 2

    .prologue
    .line 41921
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41802
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;
    .registers 2

    .prologue
    .line 41925
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse$Builder;

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
    .line 41850
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
    .line 41833
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->getSerializedSize()I

    .line 41834
    return-void
.end method
