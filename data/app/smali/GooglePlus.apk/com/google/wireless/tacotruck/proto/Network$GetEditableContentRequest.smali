.class public final Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetEditableContentRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53299
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    .line 53300
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->initFields()V

    .line 53301
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 52908
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 52990
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->memoizedIsInitialized:B

    .line 53010
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->memoizedSerializedSize:I

    .line 52909
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52903
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 52910
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 52990
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->memoizedIsInitialized:B

    .line 53010
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->memoizedSerializedSize:I

    .line 52910
    return-void
.end method

.method static synthetic access$75002(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52903
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$75102(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52903
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$75202(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52903
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 52943
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->activityId_:Ljava/lang/Object;

    .line 52944
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 52945
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 52947
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->activityId_:Ljava/lang/Object;

    .line 52950
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

.method private getCommentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 52975
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->commentId_:Ljava/lang/Object;

    .line 52976
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 52977
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 52979
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->commentId_:Ljava/lang/Object;

    .line 52982
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;
    .registers 1

    .prologue
    .line 52914
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 52987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->activityId_:Ljava/lang/Object;

    .line 52988
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->commentId_:Ljava/lang/Object;

    .line 52989
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 1

    .prologue
    .line 53102
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->access$74800()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 53105
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 52929
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->activityId_:Ljava/lang/Object;

    .line 52930
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 52931
    check-cast v1, Ljava/lang/String;

    .line 52939
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 52933
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 52935
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 52936
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 52937
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 52939
    goto :goto_8
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 52961
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->commentId_:Ljava/lang/Object;

    .line 52962
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 52963
    check-cast v1, Ljava/lang/String;

    .line 52971
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 52965
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 52967
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 52968
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 52969
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->commentId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 52971
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;
    .registers 2

    .prologue
    .line 52918
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 53012
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->memoizedSerializedSize:I

    .line 53013
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 53025
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 53015
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 53016
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 53017
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 53020
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 53021
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 53024
    :cond_28
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 53025
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52926
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 52958
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->bitField0_:I

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

    .line 52992
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->memoizedIsInitialized:B

    .line 52993
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 52996
    :goto_8
    return v1

    .line 52993
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 52995
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 2

    .prologue
    .line 53103
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 2

    .prologue
    .line 53107
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

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
    .line 53032
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

    .line 53001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getSerializedSize()I

    .line 53002
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 53003
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 53005
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 53006
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 53008
    :cond_1f
    return-void
.end method
