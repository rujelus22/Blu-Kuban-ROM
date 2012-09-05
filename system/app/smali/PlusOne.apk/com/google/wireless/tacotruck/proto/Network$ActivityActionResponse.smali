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
    .line 11042
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    .line 11043
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->initFields()V

    .line 11044
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10836
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10851
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedIsInitialized:B

    .line 10865
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedSerializedSize:I

    .line 10837
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10831
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10838
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10851
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedIsInitialized:B

    .line 10865
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedSerializedSize:I

    .line 10838
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 1

    .prologue
    .line 10842
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 10850
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 1

    .prologue
    .line 10949
    #calls: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->access$14400()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

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
    .line 10885
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->access$14300(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10831
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 2

    .prologue
    .line 10846
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 10867
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedSerializedSize:I

    .line 10868
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 10872
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 10870
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 10871
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 10872
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 10853
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedIsInitialized:B

    .line 10854
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 10857
    :goto_8
    return v1

    .line 10854
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 10856
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 10879
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
    .line 10862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->getSerializedSize()I

    .line 10863
    return-void
.end method
