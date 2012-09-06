.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceSearchLogResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28443
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    .line 28444
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->initFields()V

    .line 28445
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28237
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28252
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedIsInitialized:B

    .line 28266
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedSerializedSize:I

    .line 28238
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28232
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28239
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28252
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedIsInitialized:B

    .line 28266
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedSerializedSize:I

    .line 28239
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    .registers 1

    .prologue
    .line 28243
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 28251
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 1

    .prologue
    .line 28350
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->access$39100()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 28353
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28232
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    .registers 2

    .prologue
    .line 28247
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 28268
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedSerializedSize:I

    .line 28269
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 28273
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 28271
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 28272
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 28273
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 28254
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedIsInitialized:B

    .line 28255
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 28258
    :goto_8
    return v1

    .line 28255
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 28257
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28232
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 2

    .prologue
    .line 28351
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28232
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    .registers 2

    .prologue
    .line 28355
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;

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
    .line 28280
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
    .line 28263
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->getSerializedSize()I

    .line 28264
    return-void
.end method
