.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoPlusOneResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22727
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    .line 22728
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->initFields()V

    .line 22729
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22521
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22536
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedIsInitialized:B

    .line 22550
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedSerializedSize:I

    .line 22522
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22516
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22523
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22536
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedIsInitialized:B

    .line 22550
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedSerializedSize:I

    .line 22523
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
    .registers 1

    .prologue
    .line 22527
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 22535
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 22634
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->access$30900()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 22637
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22516
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
    .registers 2

    .prologue
    .line 22531
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 22552
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedSerializedSize:I

    .line 22553
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 22557
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 22555
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 22556
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 22557
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 22538
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedIsInitialized:B

    .line 22539
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 22542
    :goto_8
    return v1

    .line 22539
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 22541
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22516
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 22635
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22516
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 22639
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;

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
    .line 22564
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
    .line 22547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->getSerializedSize()I

    .line 22548
    return-void
.end method
