.class public final Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PresenceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PresenceResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7299
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 7300
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->initFields()V

    .line 7301
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7028
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7055
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->memoizedIsInitialized:B

    .line 7072
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->memoizedSerializedSize:I

    .line 7029
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7030
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7055
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->memoizedIsInitialized:B

    .line 7072
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->memoizedSerializedSize:I

    .line 7030
    return-void
.end method

.method static synthetic access$9502(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$9602(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7023
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 1

    .prologue
    .line 7034
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 7053
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 7054
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 1

    .prologue
    .line 7160
    #calls: Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->access$9300()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7163
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7023
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2

    .prologue
    .line 7038
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 7074
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->memoizedSerializedSize:I

    .line 7075
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 7083
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 7077
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 7078
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 7079
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7082
    :cond_1a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 7083
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 7049
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7046
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->bitField0_:I

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

    .line 7057
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->memoizedIsInitialized:B

    .line 7058
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 7061
    :goto_8
    return v1

    .line 7058
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 7060
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7023
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 2

    .prologue
    .line 7161
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7023
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    .registers 2

    .prologue
    .line 7165
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

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
    .line 7090
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 7066
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getSerializedSize()I

    .line 7067
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 7068
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7070
    :cond_13
    return-void
.end method
