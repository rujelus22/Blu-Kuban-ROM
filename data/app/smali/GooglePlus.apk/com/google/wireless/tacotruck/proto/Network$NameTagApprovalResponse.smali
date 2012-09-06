.class public final Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NameTagApprovalResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37391
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    .line 37392
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->initFields()V

    .line 37393
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 37185
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 37200
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->memoizedIsInitialized:B

    .line 37214
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->memoizedSerializedSize:I

    .line 37186
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37180
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37187
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 37200
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->memoizedIsInitialized:B

    .line 37214
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->memoizedSerializedSize:I

    .line 37187
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    .registers 1

    .prologue
    .line 37191
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 37199
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 1

    .prologue
    .line 37298
    #calls: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->access$51700()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 37301
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37234
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->access$51600(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37180
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    .registers 2

    .prologue
    .line 37195
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 37216
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->memoizedSerializedSize:I

    .line 37217
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 37221
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 37219
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 37220
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 37221
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 37202
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->memoizedIsInitialized:B

    .line 37203
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 37206
    :goto_8
    return v1

    .line 37203
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 37205
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37180
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 2

    .prologue
    .line 37299
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37180
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 2

    .prologue
    .line 37303
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

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
    .line 37228
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
    .line 37211
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->getSerializedSize()I

    .line 37212
    return-void
.end method
