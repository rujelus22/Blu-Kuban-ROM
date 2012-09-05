.class public final Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;,
        Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;,
        Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$GatewayOrBuilder;,
        Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;,
        Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JIDOrBuilder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

.field private static final serialVersionUID:J


# instance fields
.field private addressable_:Z

.field private bitField0_:I

.field private gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

.field private jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1415
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 1416
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->initFields()V

    .line 1417
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1018
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedIsInitialized:B

    .line 1053
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedSerializedSize:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1018
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedIsInitialized:B

    .line 1053
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method static synthetic access$1602(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->addressable_:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1014
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .line 1015
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    .line 1016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->addressable_:Z

    .line 1017
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 1

    .prologue
    .line 1149
    #calls: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->access$1400()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1152
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddressable()Z
    .registers 2

    .prologue
    .line 1010
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->addressable_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method public getGateway()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    return-object v0
.end method

.method public getJID()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    .registers 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1055
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedSerializedSize:I

    .line 1056
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 1072
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 1058
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 1059
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 1060
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1063
    :cond_16
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 1064
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1067
    :cond_25
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 1068
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->addressable_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1071
    :cond_35
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedSerializedSize:I

    move v1, v0

    .line 1072
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasAddressable()Z
    .registers 3

    .prologue
    .line 1007
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

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

.method public hasGateway()Z
    .registers 3

    .prologue
    .line 997
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

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

.method public hasJID()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 987
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1020
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedIsInitialized:B

    .line 1021
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 1036
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 1021
    goto :goto_9

    .line 1023
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->hasJID()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1024
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getJID()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1025
    iput-byte v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedIsInitialized:B

    move v1, v2

    .line 1026
    goto :goto_9

    .line 1029
    :cond_20
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1030
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getGateway()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_34

    .line 1031
    iput-byte v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedIsInitialized:B

    move v1, v2

    .line 1032
    goto :goto_9

    .line 1035
    :cond_34
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1079
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

    .line 1041
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getSerializedSize()I

    .line 1042
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 1043
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 1045
    :cond_f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 1046
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 1048
    :cond_1c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 1049
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->addressable_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1051
    :cond_2a
    return-void
.end method
