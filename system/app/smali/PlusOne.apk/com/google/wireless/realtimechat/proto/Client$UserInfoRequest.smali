.class public final Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInfoRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39152
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 39153
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->initFields()V

    .line 39154
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 38851
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 38900
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->memoizedIsInitialized:B

    .line 38917
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->memoizedSerializedSize:I

    .line 38852
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38846
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 38853
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38900
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->memoizedIsInitialized:B

    .line 38917
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->memoizedSerializedSize:I

    .line 38853
    return-void
.end method

.method static synthetic access$54102(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38846
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$54202(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38846
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 1

    .prologue
    .line 38857
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object v0
.end method

.method private getParticipantIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38886
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->participantId_:Ljava/lang/Object;

    .line 38887
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38888
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38890
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->participantId_:Ljava/lang/Object;

    .line 38893
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
    .line 38898
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->participantId_:Ljava/lang/Object;

    .line 38899
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 1

    .prologue
    .line 39005
    #calls: Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->access$53900()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 39008
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38846
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2

    .prologue
    .line 38861
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38872
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->participantId_:Ljava/lang/Object;

    .line 38873
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38874
    check-cast v1, Ljava/lang/String;

    .line 38882
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38876
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38878
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38879
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38880
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->participantId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38882
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 38919
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->memoizedSerializedSize:I

    .line 38920
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 38928
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 38922
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 38923
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 38924
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38927
    :cond_18
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 38928
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasParticipantId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38869
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->bitField0_:I

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

    .line 38902
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->memoizedIsInitialized:B

    .line 38903
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 38906
    :goto_8
    return v1

    .line 38903
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 38905
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->memoizedIsInitialized:B

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
    .line 38935
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

    .line 38911
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getSerializedSize()I

    .line 38912
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 38913
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38915
    :cond_11
    return-void
.end method
