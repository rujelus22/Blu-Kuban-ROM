.class public final Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportAbuseResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23370
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    .line 23371
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->initFields()V

    .line 23372
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23164
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23179
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedIsInitialized:B

    .line 23193
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedSerializedSize:I

    .line 23165
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23159
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23166
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23179
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedIsInitialized:B

    .line 23193
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedSerializedSize:I

    .line 23166
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    .registers 1

    .prologue
    .line 23170
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 23178
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 1

    .prologue
    .line 23277
    #calls: Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->access$31800()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 23280
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    .registers 2

    .prologue
    .line 23174
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 23195
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedSerializedSize:I

    .line 23196
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 23200
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 23198
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 23199
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 23200
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 23181
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedIsInitialized:B

    .line 23182
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 23185
    :goto_8
    return v1

    .line 23182
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 23184
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 2

    .prologue
    .line 23278
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 2

    .prologue
    .line 23282
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

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
    .line 23207
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
    .line 23190
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->getSerializedSize()I

    .line 23191
    return-void
.end method
