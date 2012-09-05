.class public final Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileCircleMembersRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;,
        Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14262
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    .line 14263
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->initFields()V

    .line 14264
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13860
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13961
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->memoizedIsInitialized:B

    .line 13981
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->memoizedSerializedSize:I

    .line 13861
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13855
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13862
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13961
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->memoizedIsInitialized:B

    .line 13981
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->memoizedSerializedSize:I

    .line 13862
    return-void
.end method

.method static synthetic access$19002(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13855
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13855
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    return-object p1
.end method

.method static synthetic access$19202(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13855
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    .registers 1

    .prologue
    .line 13866
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13936
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->id_:Ljava/lang/Object;

    .line 13937
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13938
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13940
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->id_:Ljava/lang/Object;

    .line 13943
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
    .line 13958
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->id_:Ljava/lang/Object;

    .line 13959
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->MEMBERS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    .line 13960
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 1

    .prologue
    .line 14073
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->access$18800()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14076
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13855
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    .registers 2

    .prologue
    .line 13870
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13922
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->id_:Ljava/lang/Object;

    .line 13923
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13924
    check-cast v1, Ljava/lang/String;

    .line 13932
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13926
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13928
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13929
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13930
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13932
    goto :goto_8
.end method

.method public getListType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
    .registers 2

    .prologue
    .line 13954
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13983
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->memoizedSerializedSize:I

    .line 13984
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 13996
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 13986
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 13987
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 13988
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13991
    :cond_19
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 13992
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13995
    :cond_2a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 13996
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13919
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasListType()Z
    .registers 3

    .prologue
    .line 13951
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 13963
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->memoizedIsInitialized:B

    .line 13964
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13967
    :goto_8
    return v1

    .line 13964
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13966
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->memoizedIsInitialized:B

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
    .line 14003
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 13972
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getSerializedSize()I

    .line 13973
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 13974
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13976
    :cond_12
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 13977
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13979
    :cond_21
    return-void
.end method
