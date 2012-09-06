.class public final Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceSearchEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private processId_:Ljava/lang/Object;

.field private serverIp_:Ljava/lang/Object;

.field private signature_:Ljava/lang/Object;

.field private timestamp_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22603
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    .line 22604
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->initFields()V

    .line 22605
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22032
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22180
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->memoizedIsInitialized:B

    .line 22206
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->memoizedSerializedSize:I

    .line 22033
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22027
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22034
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22180
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->memoizedIsInitialized:B

    .line 22206
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->memoizedSerializedSize:I

    .line 22034
    return-void
.end method

.method static synthetic access$29802(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22027
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->timestamp_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29902(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22027
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->serverIp_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30002(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22027
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->processId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30102(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22027
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->signature_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30202(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22027
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 1

    .prologue
    .line 22038
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    return-object v0
.end method

.method private getProcessIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22131
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->processId_:Ljava/lang/Object;

    .line 22132
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22133
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22135
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->processId_:Ljava/lang/Object;

    .line 22138
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getServerIpBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22099
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->serverIp_:Ljava/lang/Object;

    .line 22100
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22101
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22103
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->serverIp_:Ljava/lang/Object;

    .line 22106
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getSignatureBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22163
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->signature_:Ljava/lang/Object;

    .line 22164
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22165
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22167
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->signature_:Ljava/lang/Object;

    .line 22170
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getTimestampBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22067
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->timestamp_:Ljava/lang/Object;

    .line 22068
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22069
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22071
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->timestamp_:Ljava/lang/Object;

    .line 22074
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 22175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->timestamp_:Ljava/lang/Object;

    .line 22176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->serverIp_:Ljava/lang/Object;

    .line 22177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->processId_:Ljava/lang/Object;

    .line 22178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->signature_:Ljava/lang/Object;

    .line 22179
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 1

    .prologue
    .line 22306
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->access$29600()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 22309
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22027
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
    .registers 2

    .prologue
    .line 22042
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;

    return-object v0
.end method

.method public getProcessId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22117
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->processId_:Ljava/lang/Object;

    .line 22118
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22119
    check-cast v1, Ljava/lang/String;

    .line 22127
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22121
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22123
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22124
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22125
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->processId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22127
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22208
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->memoizedSerializedSize:I

    .line 22209
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 22229
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 22211
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 22212
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 22213
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getTimestampBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22216
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 22217
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getServerIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22220
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 22221
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getProcessIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22224
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 22225
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22228
    :cond_4a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->memoizedSerializedSize:I

    move v1, v0

    .line 22229
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getServerIp()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22085
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->serverIp_:Ljava/lang/Object;

    .line 22086
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22087
    check-cast v1, Ljava/lang/String;

    .line 22095
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22089
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22091
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22092
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22093
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->serverIp_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22095
    goto :goto_8
.end method

.method public getSignature()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22149
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->signature_:Ljava/lang/Object;

    .line 22150
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22151
    check-cast v1, Ljava/lang/String;

    .line 22159
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22153
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22155
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22156
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22157
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->signature_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22159
    goto :goto_8
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22053
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->timestamp_:Ljava/lang/Object;

    .line 22054
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22055
    check-cast v1, Ljava/lang/String;

    .line 22063
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22057
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22059
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22060
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22061
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->timestamp_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22063
    goto :goto_8
.end method

.method public hasProcessId()Z
    .registers 3

    .prologue
    .line 22114
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasServerIp()Z
    .registers 3

    .prologue
    .line 22082
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSignature()Z
    .registers 3

    .prologue
    .line 22146
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22050
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

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
    const/4 v1, 0x1

    .line 22182
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->memoizedIsInitialized:B

    .line 22183
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 22186
    :goto_8
    return v1

    .line 22183
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 22185
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22027
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 2

    .prologue
    .line 22307
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22027
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;
    .registers 2

    .prologue
    .line 22311
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;)Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent$Builder;

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
    .line 22236
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 22191
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getSerializedSize()I

    .line 22192
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 22193
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getTimestampBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22195
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 22196
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getServerIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22198
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 22199
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getProcessIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22201
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 22202
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22204
    :cond_3d
    return-void
.end method
