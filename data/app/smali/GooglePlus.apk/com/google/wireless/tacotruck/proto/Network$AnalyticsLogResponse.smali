.class public final Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalyticsLogResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37921
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    .line 37922
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->initFields()V

    .line 37923
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 37715
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 37730
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedIsInitialized:B

    .line 37744
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedSerializedSize:I

    .line 37716
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37710
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37717
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 37730
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedIsInitialized:B

    .line 37744
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedSerializedSize:I

    .line 37717
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
    .registers 1

    .prologue
    .line 37721
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 37729
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 1

    .prologue
    .line 37828
    #calls: Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->access$52500()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 37831
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37710
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
    .registers 2

    .prologue
    .line 37725
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 37746
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedSerializedSize:I

    .line 37747
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 37751
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 37749
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 37750
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 37751
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 37732
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedIsInitialized:B

    .line 37733
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 37736
    :goto_8
    return v1

    .line 37733
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 37735
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37710
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 2

    .prologue
    .line 37829
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37710
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    .registers 2

    .prologue
    .line 37833
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;

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
    .line 37758
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
    .line 37741
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->getSerializedSize()I

    .line 37742
    return-void
.end method
