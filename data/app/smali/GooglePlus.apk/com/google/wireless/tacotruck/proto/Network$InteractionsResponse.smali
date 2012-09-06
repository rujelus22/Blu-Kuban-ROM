.class public final Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InteractionsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31678
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    .line 31679
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->initFields()V

    .line 31680
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31472
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 31487
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedIsInitialized:B

    .line 31501
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedSerializedSize:I

    .line 31473
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31467
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31474
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31487
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedIsInitialized:B

    .line 31501
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedSerializedSize:I

    .line 31474
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    .registers 1

    .prologue
    .line 31478
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 31486
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 1

    .prologue
    .line 31585
    #calls: Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->access$43500()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 31588
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31467
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    .registers 2

    .prologue
    .line 31482
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 31503
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedSerializedSize:I

    .line 31504
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 31508
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 31506
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 31507
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 31508
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 31489
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedIsInitialized:B

    .line 31490
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 31493
    :goto_8
    return v1

    .line 31490
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 31492
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31467
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 2

    .prologue
    .line 31586
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31467
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    .registers 2

    .prologue
    .line 31590
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;)Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;

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
    .line 31515
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
    .line 31498
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->getSerializedSize()I

    .line 31499
    return-void
.end method
